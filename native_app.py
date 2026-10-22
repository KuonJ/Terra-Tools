#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""TerraTools Native WebKit macOS Application Entry Point

Runs the local FastAPI backend on a background thread and presents
the UI in a lightweight, energy-efficient native WebKit window.
"""

import os
import sys
import time
import threading
import socket
import urllib.request
from pathlib import Path
import webview
import uvicorn

# Ensure working directory is the app root
APP_DIR = os.path.dirname(os.path.abspath(__file__))
os.chdir(APP_DIR)
sys.path.insert(0, APP_DIR)

from app import app
from backend.native_save import NativeSaveAPI
from backend.native_preferences import NativePreferences

SERVER_HOST = "127.0.0.1"


class ServerThread(threading.Thread):
    def __init__(self):
        super().__init__(daemon=True)
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.bind((SERVER_HOST, 0))
        self.socket.listen(128)
        self.port = self.socket.getsockname()[1]
        config = uvicorn.Config(
            app=app,
            host=SERVER_HOST,
            port=self.port,
            log_level="error",
            access_log=False
        )
        self.server = uvicorn.Server(config)

    def run(self):
        self.server.run(sockets=[self.socket])

    def stop(self):
        self.server.should_exit = True


def wait_for_server(url):
    for _ in range(50):
        try:
            with urllib.request.urlopen(url, timeout=0.5) as resp:
                if resp.status in (200, 404):
                    return True
        except Exception:
            time.sleep(0.1)
    return False


def main():
    # Set macOS dock icon explicitly to rounded squircle AppIcon
    try:
        from AppKit import NSApplication, NSImage
        icon_path = os.path.join(APP_DIR, "AppIcon.icns")
        if os.path.exists(icon_path):
            img = NSImage.alloc().initWithContentsOfFile_(icon_path)
            if img:
                NSApplication.sharedApplication().setApplicationIconImage_(img)
    except Exception:
        pass

    server_thread = ServerThread()
    server_thread.start()
    base_url = f"http://{SERVER_HOST}:{server_thread.port}"
    if not wait_for_server(base_url + '/api/stats'):
        server_thread.stop()
        raise RuntimeError('TerraTools backend did not start.')
    preferences = NativePreferences(Path.home() / 'Library/Application Support/TerraTools/preferences.json')
    api = NativeSaveAPI(base_url, preferences)

    # Create native WebKit window
    window = webview.create_window(
        title="TerraTools",
        url=base_url + '/?native=1',
        js_api=api,
        width=1280,
        height=850,
        min_size=(960, 600),
        text_select=True,
        zoomable=True
    )
    api.window = window

    def on_closed():
        if server_thread:
            server_thread.stop()
        # Force hard exit to avoid hanging background threads
        os._exit(0)

    window.events.closed += on_closed

    # Start native macOS WebKit GUI loop
    webview.start(gui="cocoa", debug=False)


if __name__ == "__main__":
    main()
