; source: libil2cpp.so
; sha256: ba6fecba562f7ff46305792cadeabcae1879a0c384f7195a5d77872af04c1753
; Offsets/names cross-checked against user-data/dump.cs. Not a runtime execution trace.

; Character.SetJobLevel [0xd09168, 0xd09254)
00d09168  stp      x24, x23, [sp, #-0x40]!
00d0916c  stp      x22, x21, [sp, #0x10]
00d09170  stp      x20, x19, [sp, #0x20]
00d09174  stp      x29, x30, [sp, #0x30]
00d09178  add      x29, sp, #0x30
00d0917c  adrp     x22, #0x2be4000
00d09180  ldrb     w8, [x22, #0xd22]
00d09184  mov      w21, w2
00d09188  mov      w20, w1
00d0918c  mov      x19, x0
00d09190  tbnz     w8, #0, #0xd091ac
00d09194  adrp     x8, #0x2add000
00d09198  ldr      x8, [x8, #0xd90]
00d0919c  ldr      w0, [x8]
00d091a0  bl       #0xbc39bc
00d091a4  mov      w8, #1
00d091a8  strb     w8, [x22, #0xd22]
00d091ac  adrp     x8, #0x2ad3000
00d091b0  ldr      x8, [x8, #0xa80]
00d091b4  ldr      x22, [x19, #0x48]
00d091b8  ldr      x0, [x8]
00d091bc  ldrb     w8, [x0, #0x10a]
00d091c0  tbz      w8, #0, #0xd091d0
00d091c4  ldr      w8, [x0, #0xbc]
00d091c8  cbnz     w8, #0xd091d0
00d091cc  bl       #0xbd8b98
00d091d0  mov      x0, xzr
00d091d4  mov      x2, xzr
00d091d8  mov      w1, w21
00d091dc  bl       #0xff1b7c
00d091e0  mov      x21, x0
00d091e4  cbnz     x22, #0xd091ec
00d091e8  bl       #0xbef9e8
00d091ec  cbz      x21, #0xd09210
00d091f0  ldr      x8, [x22]
00d091f4  mov      x0, x21
00d091f8  ldr      x1, [x8, #0x30]
00d091fc  bl       #0xbfd398
00d09200  cbnz     x0, #0xd09210
00d09204  bl       #0xbf06f4
00d09208  mov      x1, xzr
00d0920c  bl       #0xbef8cc
00d09210  ldr      w8, [x22, #0x18]
00d09214  sxtw     x23, w20
00d09218  cmp      w8, w20
00d0921c  b.hi     #0xd0922c
00d09220  bl       #0xbf05d4
00d09224  mov      x1, xzr
00d09228  bl       #0xbef8cc
00d0922c  add      x8, x22, x23, lsl #3
00d09230  mov      x0, x19
00d09234  str      x21, [x8, #0x20]
00d09238  bl       #0xd08320
00d0923c  str      w0, [x19, #0x74]
00d09240  ldp      x29, x30, [sp, #0x30]
00d09244  ldp      x20, x19, [sp, #0x20]
00d09248  ldp      x22, x21, [sp, #0x10]
00d0924c  ldp      x24, x23, [sp], #0x40
00d09250  ret

; Character.SetJobLevel_bin [0xd09b28, 0xd0a2a8)
00d09b28  stp      x26, x25, [sp, #-0x50]!
00d09b2c  stp      x24, x23, [sp, #0x10]
00d09b30  stp      x22, x21, [sp, #0x20]
00d09b34  stp      x20, x19, [sp, #0x30]
00d09b38  stp      x29, x30, [sp, #0x40]
00d09b3c  add      x29, sp, #0x40
00d09b40  adrp     x21, #0x2be4000
00d09b44  ldrb     w8, [x21, #0xd2b]
00d09b48  mov      x22, x2
00d09b4c  mov      w20, w1
00d09b50  mov      x19, x0
00d09b54  tbnz     w8, #0, #0xd09b70
00d09b58  adrp     x8, #0x2a71000
00d09b5c  ldr      x8, [x8, #0x220]
00d09b60  ldr      w0, [x8]
00d09b64  bl       #0xbc39bc
00d09b68  mov      w8, #1
00d09b6c  strb     w8, [x21, #0xd2b]
00d09b70  mov      x0, x19
00d09b74  bl       #0xd01c28
00d09b78  ldr      x23, [x19, #0x50]
00d09b7c  mov      x21, x0
00d09b80  cbnz     x23, #0xd09b88
00d09b84  bl       #0xbef9e8
00d09b88  ldr      w8, [x23, #0x18]
00d09b8c  sxtw     x24, w20
00d09b90  lsr      x25, x22, #0xc
00d09b94  cmp      w8, w20
00d09b98  b.hi     #0xd09ba8
00d09b9c  bl       #0xbf05d4
00d09ba0  mov      x1, xzr
00d09ba4  bl       #0xbef8cc
00d09ba8  add      x8, x23, x24, lsl #2
00d09bac  str      w25, [x8, #0x20]
00d09bb0  adrp     x25, #0x2ad3000
00d09bb4  ldr      x25, [x25, #0xa80]
00d09bb8  ldr      x23, [x19, #0x48]
00d09bbc  ldr      x0, [x25]
00d09bc0  ldrb     w8, [x0, #0x10a]
00d09bc4  tbz      w8, #0, #0xd09bd4
00d09bc8  ldr      w8, [x0, #0xbc]
00d09bcc  cbnz     w8, #0xd09bd4
00d09bd0  bl       #0xbd8b98
00d09bd4  and      w1, w22, #0xfff
00d09bd8  mov      x0, xzr
00d09bdc  mov      x2, xzr
00d09be0  bl       #0xff1b7c
00d09be4  mov      x22, x0
00d09be8  cbnz     x23, #0xd09bf0
00d09bec  bl       #0xbef9e8
00d09bf0  cbz      x22, #0xd09c14
00d09bf4  ldr      x8, [x23]
00d09bf8  mov      x0, x22
00d09bfc  ldr      x1, [x8, #0x30]
00d09c00  bl       #0xbfd398
00d09c04  cbnz     x0, #0xd09c14
00d09c08  bl       #0xbf06f4
00d09c0c  mov      x1, xzr
00d09c10  bl       #0xbef8cc
00d09c14  ldr      w8, [x23, #0x18]
00d09c18  cmp      w8, w20
00d09c1c  b.hi     #0xd09c2c
00d09c20  bl       #0xbf05d4
00d09c24  mov      x1, xzr
00d09c28  bl       #0xbef8cc
00d09c2c  add      x8, x23, x24, lsl #3
00d09c30  str      x22, [x8, #0x20]
00d09c34  ldr      x22, [x19, #0x48]
00d09c38  cbnz     x22, #0xd09c40
00d09c3c  bl       #0xbef9e8
00d09c40  ldr      w8, [x22, #0x18]
00d09c44  cmp      w8, w20
00d09c48  b.hi     #0xd09c58
00d09c4c  bl       #0xbf05d4
00d09c50  mov      x1, xzr
00d09c54  bl       #0xbef8cc
00d09c58  add      x8, x22, x24, lsl #3
00d09c5c  ldr      x22, [x8, #0x20]
00d09c60  mov      x0, xzr
00d09c64  mov      w1, wzr
00d09c68  mov      x2, xzr
00d09c6c  bl       #0xff1b7c
00d09c70  mov      x2, x0
00d09c74  mov      x0, xzr
00d09c78  mov      x3, xzr
00d09c7c  mov      x1, x22
00d09c80  bl       #0xff1d8c
00d09c84  tbz      w0, #0, #0xd0a19c
00d09c88  cbnz     x21, #0xd09c90
00d09c8c  bl       #0xbef9e8
00d09c90  ldr      x22, [x21, #0x60]
00d09c94  cbnz     x22, #0xd09c9c
00d09c98  bl       #0xbef9e8
00d09c9c  adrp     x8, #0x2aac000
00d09ca0  ldr      x8, [x8, #0xee8]
00d09ca4  mov      x0, x22
00d09ca8  ldr      x1, [x8]
00d09cac  bl       #0x1f88a04
00d09cb0  cmp      w0, w20
00d09cb4  b.le     #0xd0a19c
00d09cb8  adrp     x8, #0x2a48000
00d09cbc  ldr      x8, [x8, #0x8d8]
00d09cc0  ldr      x8, [x8]
00d09cc4  ldr      x8, [x8, #0xa0]
00d09cc8  ldr      x22, [x8]
00d09ccc  cbnz     x21, #0xd09cd4
00d09cd0  bl       #0xbef9e8
00d09cd4  ldr      x21, [x21, #0x60]
00d09cd8  cbnz     x21, #0xd09ce0
00d09cdc  bl       #0xbef9e8
00d09ce0  adrp     x8, #0x2ab3000
00d09ce4  ldr      x8, [x8, #0x780]
00d09ce8  mov      x0, x21
00d09cec  mov      w1, w20
00d09cf0  ldr      x2, [x8]
00d09cf4  bl       #0x1f88a0c
00d09cf8  mov      w21, w0
00d09cfc  cbnz     x22, #0xd09d04
00d09d00  bl       #0xbef9e8
00d09d04  mov      x2, xzr
00d09d08  mov      x0, x22
00d09d0c  mov      w1, w21
00d09d10  bl       #0x10bdf30
00d09d14  ldr      x22, [x19, #0x48]
00d09d18  mov      x21, x0
00d09d1c  cbnz     x22, #0xd09d24
00d09d20  bl       #0xbef9e8
00d09d24  ldr      w8, [x22, #0x18]
00d09d28  cmp      w8, w20
00d09d2c  b.hi     #0xd09d3c
00d09d30  bl       #0xbf05d4
00d09d34  mov      x1, xzr
00d09d38  bl       #0xbef8cc
00d09d3c  adrp     x26, #0x2a4a000
00d09d40  ldr      x26, [x26, #0x5a0]
00d09d44  add      x8, x22, x24, lsl #3
00d09d48  ldr      x22, [x8, #0x20]
00d09d4c  ldr      x0, [x26]
00d09d50  ldrb     w8, [x0, #0x10a]
00d09d54  tbz      w8, #0, #0xd09d68
00d09d58  ldr      w8, [x0, #0xbc]
00d09d5c  cbnz     w8, #0xd09d68
00d09d60  bl       #0xbd8b98
00d09d64  ldr      x0, [x26]
00d09d68  ldr      x8, [x0, #0xa0]
00d09d6c  ldr      x0, [x25]
00d09d70  ldr      w23, [x8, #0x30]
00d09d74  ldrb     w8, [x0, #0x10a]
00d09d78  tbz      w8, #0, #0xd09d88
00d09d7c  ldr      w8, [x0, #0xbc]
00d09d80  cbnz     w8, #0xd09d88
00d09d84  bl       #0xbd8b98
00d09d88  mov      x0, xzr
00d09d8c  mov      x2, xzr
00d09d90  mov      w1, w23
00d09d94  bl       #0xff1b7c
00d09d98  mov      x2, x0
00d09d9c  mov      x0, xzr
00d09da0  mov      x3, xzr
00d09da4  mov      x1, x22
00d09da8  bl       #0xff1d8c
00d09dac  tbz      w0, #0, #0xd09eb8
00d09db0  cbnz     x21, #0xd09db8
00d09db4  bl       #0xbef9e8
00d09db8  mov      x1, xzr
00d09dbc  mov      x0, x21
00d09dc0  bl       #0x10c3cfc
00d09dc4  adrp     x8, #0x2a3f000
00d09dc8  ldr      x8, [x8, #0xcb8]
00d09dcc  mov      x22, x0
00d09dd0  ldr      x8, [x8]
00d09dd4  ldrb     w9, [x8, #0x10a]
00d09dd8  tbz      w9, #0, #0xd09dec
00d09ddc  ldr      w9, [x8, #0xbc]
00d09de0  cbnz     w9, #0xd09dec
00d09de4  mov      x0, x8
00d09de8  bl       #0xbd8b98
00d09dec  adrp     x8, #0x2a3b000
00d09df0  ldr      x8, [x8, #0xa20]
00d09df4  mov      x0, xzr
00d09df8  mov      x3, xzr
00d09dfc  mov      x2, x22
00d09e00  ldr      x1, [x8]
00d09e04  bl       #0xa17b48
00d09e08  mov      x1, x0
00d09e0c  mov      x0, xzr
00d09e10  mov      x2, xzr
00d09e14  bl       #0x10c53f0
00d09e18  ldr      x0, [x26]
00d09e1c  ldr      x23, [x19, #0x48]
00d09e20  ldrb     w8, [x0, #0x10a]
00d09e24  tbz      w8, #0, #0xd09e38
00d09e28  ldr      w8, [x0, #0xbc]
00d09e2c  cbnz     w8, #0xd09e38
00d09e30  bl       #0xbd8b98
00d09e34  ldr      x0, [x26]
00d09e38  ldr      x8, [x0, #0xa0]
00d09e3c  ldr      x0, [x25]
00d09e40  ldr      w22, [x8, #0x30]
00d09e44  ldrb     w8, [x0, #0x10a]
00d09e48  tbz      w8, #0, #0xd09e58
00d09e4c  ldr      w8, [x0, #0xbc]
00d09e50  cbnz     w8, #0xd09e58
00d09e54  bl       #0xbd8b98
00d09e58  mov      x0, xzr
00d09e5c  mov      x2, xzr
00d09e60  mov      w1, w22
00d09e64  bl       #0xff1b7c
00d09e68  mov      x22, x0
00d09e6c  cbnz     x23, #0xd09e74
00d09e70  bl       #0xbef9e8
00d09e74  cbz      x22, #0xd09e98
00d09e78  ldr      x8, [x23]
00d09e7c  mov      x0, x22
00d09e80  ldr      x1, [x8, #0x30]
00d09e84  bl       #0xbfd398
00d09e88  cbnz     x0, #0xd09e98
00d09e8c  bl       #0xbf06f4
00d09e90  mov      x1, xzr
00d09e94  bl       #0xbef8cc
00d09e98  ldr      w8, [x23, #0x18]
00d09e9c  cmp      w8, w20
00d09ea0  b.hi     #0xd09eb0
00d09ea4  bl       #0xbf05d4
00d09ea8  mov      x1, xzr
00d09eac  bl       #0xbef8cc
00d09eb0  add      x8, x23, x24, lsl #3
00d09eb4  str      x22, [x8, #0x20]
00d09eb8  ldr      x22, [x19, #0x48]
00d09ebc  cbnz     x22, #0xd09ec4
00d09ec0  bl       #0xbef9e8
00d09ec4  ldr      w8, [x22, #0x18]
00d09ec8  cmp      w8, w20
00d09ecc  b.hi     #0xd09edc
00d09ed0  bl       #0xbf05d4
00d09ed4  mov      x1, xzr
00d09ed8  bl       #0xbef8cc
00d09edc  ldr      x0, [x25]
00d09ee0  add      x8, x22, x24, lsl #3
00d09ee4  ldr      x22, [x8, #0x20]
00d09ee8  ldrb     w8, [x0, #0x10a]
00d09eec  tbz      w8, #0, #0xd09efc
00d09ef0  ldr      w8, [x0, #0xbc]
00d09ef4  cbnz     w8, #0xd09efc
00d09ef8  bl       #0xbd8b98
00d09efc  mov      x0, xzr
00d09f00  mov      x2, xzr
00d09f04  mov      x1, x22
00d09f08  bl       #0xff1c6c
00d09f0c  mov      w22, w0
00d09f10  cbnz     x21, #0xd09f18
00d09f14  bl       #0xbef9e8
00d09f18  mov      x2, xzr
00d09f1c  mov      x0, x21
00d09f20  mov      w1, w22
00d09f24  bl       #0x10c407c
00d09f28  ldr      x23, [x19, #0x50]
00d09f2c  mov      w22, w0
00d09f30  cbnz     x23, #0xd09f38
00d09f34  bl       #0xbef9e8
00d09f38  ldr      w8, [x23, #0x18]
00d09f3c  cmp      w8, w20
00d09f40  b.hi     #0xd09f50
00d09f44  bl       #0xbf05d4
00d09f48  mov      x1, xzr
00d09f4c  bl       #0xbef8cc
00d09f50  add      x8, x23, x24, lsl #2
00d09f54  ldr      w8, [x8, #0x20]
00d09f58  cmp      w8, w22
00d09f5c  b.ge     #0xd0a03c
00d09f60  ldr      x23, [x19, #0x50]
00d09f64  cbnz     x23, #0xd09f6c
00d09f68  bl       #0xbef9e8
00d09f6c  ldr      w8, [x23, #0x18]
00d09f70  cmp      w8, w20
00d09f74  b.hi     #0xd09f84
00d09f78  bl       #0xbf05d4
00d09f7c  mov      x1, xzr
00d09f80  bl       #0xbef8cc
00d09f84  add      x8, x23, x24, lsl #2
00d09f88  str      w22, [x8, #0x20]
00d09f8c  cbnz     x21, #0xd09f94
00d09f90  bl       #0xbef9e8
00d09f94  mov      x1, xzr
00d09f98  mov      x0, x21
00d09f9c  bl       #0x10c3cfc
00d09fa0  adrp     x8, #0x2a3f000
00d09fa4  ldr      x8, [x8, #0xcb8]
00d09fa8  mov      x22, x0
00d09fac  ldr      x8, [x8]
00d09fb0  ldrb     w9, [x8, #0x10a]
00d09fb4  tbz      w9, #0, #0xd09fc8
00d09fb8  ldr      w9, [x8, #0xbc]
00d09fbc  cbnz     w9, #0xd09fc8
00d09fc0  mov      x0, x8
00d09fc4  bl       #0xbd8b98
00d09fc8  adrp     x8, #0x2ab1000
00d09fcc  ldr      x8, [x8, #0xa20]
00d09fd0  mov      x0, xzr
00d09fd4  mov      x3, xzr
00d09fd8  mov      x2, x22
00d09fdc  ldr      x1, [x8]
00d09fe0  bl       #0xa17b48
00d09fe4  mov      x1, x0
00d09fe8  mov      x0, xzr
00d09fec  mov      x2, xzr
00d09ff0  bl       #0x10bd3d4
00d09ff4  ldr      w8, [x19, #0x10]
00d09ff8  orr      w8, w8, #2
00d09ffc  str      w8, [x19, #0x10]
00d0a000  ldr      x0, [x26]
00d0a004  ldrb     w8, [x0, #0x10a]
00d0a008  tbz      w8, #0, #0xd0a01c
00d0a00c  ldr      w8, [x0, #0xbc]
00d0a010  cbnz     w8, #0xd0a01c
00d0a014  bl       #0xbd8b98
00d0a018  ldr      x0, [x26]
00d0a01c  ldr      x8, [x0, #0xa0]
00d0a020  ldr      x22, [x8, #0x230]
00d0a024  cbnz     x22, #0xd0a02c
00d0a028  bl       #0xbef9e8
00d0a02c  mov      x2, xzr
00d0a030  mov      w1, #4
00d0a034  mov      x0, x22
00d0a038  bl       #0x19d8ea0
00d0a03c  ldr      x22, [x19, #0x48]
00d0a040  cbnz     x22, #0xd0a048
00d0a044  bl       #0xbef9e8
00d0a048  ldr      w8, [x22, #0x18]
00d0a04c  cmp      w8, w20
00d0a050  b.hi     #0xd0a060
00d0a054  bl       #0xbf05d4
00d0a058  mov      x1, xzr
00d0a05c  bl       #0xbef8cc
00d0a060  ldr      x0, [x26]
00d0a064  add      x8, x22, x24, lsl #3
00d0a068  ldr      x22, [x8, #0x20]
00d0a06c  ldrb     w8, [x0, #0x10a]
00d0a070  tbz      w8, #0, #0xd0a084
00d0a074  ldr      w8, [x0, #0xbc]
00d0a078  cbnz     w8, #0xd0a084
00d0a07c  bl       #0xbd8b98
00d0a080  ldr      x0, [x26]
00d0a084  ldr      x8, [x0, #0xa0]
00d0a088  ldr      x0, [x25]
00d0a08c  ldr      w23, [x8, #0x30]
00d0a090  ldrb     w8, [x0, #0x10a]
00d0a094  tbz      w8, #0, #0xd0a0a4
00d0a098  ldr      w8, [x0, #0xbc]
00d0a09c  cbnz     w8, #0xd0a0a4
00d0a0a0  bl       #0xbd8b98
00d0a0a4  mov      x0, xzr
00d0a0a8  mov      x2, xzr
00d0a0ac  mov      w1, w23
00d0a0b0  bl       #0xff1b7c
00d0a0b4  mov      x2, x0
00d0a0b8  mov      x0, xzr
00d0a0bc  mov      x3, xzr
00d0a0c0  mov      x1, x22
00d0a0c4  bl       #0xff1d40
00d0a0c8  tbz      w0, #0, #0xd0a19c
00d0a0cc  ldr      x22, [x19, #0x48]
00d0a0d0  cbnz     x22, #0xd0a0d8
00d0a0d4  bl       #0xbef9e8
00d0a0d8  ldr      w8, [x22, #0x18]
00d0a0dc  cmp      w8, w20
00d0a0e0  b.hi     #0xd0a0f0
00d0a0e4  bl       #0xbf05d4
00d0a0e8  mov      x1, xzr
00d0a0ec  bl       #0xbef8cc
00d0a0f0  ldr      x0, [x25]
00d0a0f4  add      x8, x22, x24, lsl #3
00d0a0f8  ldr      x22, [x8, #0x20]
00d0a0fc  ldrb     w8, [x0, #0x10a]
00d0a100  tbz      w8, #0, #0xd0a110
00d0a104  ldr      w8, [x0, #0xbc]
00d0a108  cbnz     w8, #0xd0a110
00d0a10c  bl       #0xbd8b98
00d0a110  mov      x0, xzr
00d0a114  mov      x2, xzr
00d0a118  mov      x1, x22
00d0a11c  bl       #0xff1c6c
00d0a120  mov      w22, w0
00d0a124  mov      x0, xzr
00d0a128  mov      w1, #1
00d0a12c  mov      x2, xzr
00d0a130  bl       #0xff1b7c
00d0a134  mov      x2, x0
00d0a138  mov      x0, xzr
00d0a13c  mov      x3, xzr
00d0a140  mov      w1, w22
00d0a144  bl       #0xff1cc4
00d0a148  mov      w22, w0
00d0a14c  cbnz     x21, #0xd0a154
00d0a150  bl       #0xbef9e8
00d0a154  mov      x2, xzr
00d0a158  mov      x0, x21
00d0a15c  mov      w1, w22
00d0a160  bl       #0x10c407c
00d0a164  ldr      x23, [x19, #0x50]
00d0a168  mov      w22, w0
00d0a16c  cbnz     x23, #0xd0a174
00d0a170  bl       #0xbef9e8
00d0a174  ldr      w8, [x23, #0x18]
00d0a178  cmp      w8, w20
00d0a17c  b.hi     #0xd0a18c
00d0a180  bl       #0xbf05d4
00d0a184  mov      x1, xzr
00d0a188  bl       #0xbef8cc
00d0a18c  add      x8, x23, x24, lsl #2
00d0a190  ldr      w8, [x8, #0x20]
00d0a194  cmp      w8, w22
00d0a198  b.ge     #0xd0a1b4
00d0a19c  ldp      x29, x30, [sp, #0x40]
00d0a1a0  ldp      x20, x19, [sp, #0x30]
00d0a1a4  ldp      x22, x21, [sp, #0x20]
00d0a1a8  ldp      x24, x23, [sp, #0x10]
00d0a1ac  ldp      x26, x25, [sp], #0x50
00d0a1b0  ret
00d0a1b4  ldr      x23, [x19, #0x50]
00d0a1b8  cbnz     x23, #0xd0a1c0
00d0a1bc  bl       #0xbef9e8
00d0a1c0  ldr      w8, [x23, #0x18]
00d0a1c4  sub      w22, w22, #1
00d0a1c8  cmp      w8, w20
00d0a1cc  b.hi     #0xd0a1dc
00d0a1d0  bl       #0xbf05d4
00d0a1d4  mov      x1, xzr
00d0a1d8  bl       #0xbef8cc
00d0a1dc  add      x8, x23, x24, lsl #2
00d0a1e0  str      w22, [x8, #0x20]
00d0a1e4  cbnz     x21, #0xd0a1ec
00d0a1e8  bl       #0xbef9e8
00d0a1ec  mov      x1, xzr
00d0a1f0  mov      x0, x21
00d0a1f4  bl       #0x10c3cfc
00d0a1f8  adrp     x8, #0x2a3f000
00d0a1fc  ldr      x8, [x8, #0xcb8]
00d0a200  mov      x20, x0
00d0a204  ldr      x8, [x8]
00d0a208  ldrb     w9, [x8, #0x10a]
00d0a20c  tbz      w9, #0, #0xd0a220
00d0a210  ldr      w9, [x8, #0xbc]
00d0a214  cbnz     w9, #0xd0a220
00d0a218  mov      x0, x8
00d0a21c  bl       #0xbd8b98
00d0a220  adrp     x8, #0x2ab1000
00d0a224  ldr      x8, [x8, #0xa20]
00d0a228  mov      x0, xzr
00d0a22c  mov      x3, xzr
00d0a230  mov      x2, x20
00d0a234  ldr      x1, [x8]
00d0a238  bl       #0xa17b48
00d0a23c  mov      x1, x0
00d0a240  mov      x0, xzr
00d0a244  mov      x2, xzr
00d0a248  bl       #0x10bd3d4
00d0a24c  ldr      w8, [x19, #0x10]
00d0a250  orr      w8, w8, #2
00d0a254  str      w8, [x19, #0x10]
00d0a258  ldr      x0, [x26]
00d0a25c  ldrb     w8, [x0, #0x10a]
00d0a260  tbz      w8, #0, #0xd0a274
00d0a264  ldr      w8, [x0, #0xbc]
00d0a268  cbnz     w8, #0xd0a274
00d0a26c  bl       #0xbd8b98
00d0a270  ldr      x0, [x26]
00d0a274  ldr      x8, [x0, #0xa0]
00d0a278  ldr      x19, [x8, #0x230]
00d0a27c  cbnz     x19, #0xd0a284
00d0a280  bl       #0xbef9e8
00d0a284  mov      x0, x19
00d0a288  ldp      x29, x30, [sp, #0x40]
00d0a28c  ldp      x20, x19, [sp, #0x30]
00d0a290  ldp      x22, x21, [sp, #0x20]
00d0a294  ldp      x24, x23, [sp, #0x10]
00d0a298  mov      x2, xzr
00d0a29c  mov      w1, #4
00d0a2a0  ldp      x26, x25, [sp], #0x50
00d0a2a4  b        #0x19d8ea0

; Character.GetJobLevel_bin [0xd0a714, 0xd0a7f4)
00d0a714  stp      x22, x21, [sp, #-0x30]!
00d0a718  stp      x20, x19, [sp, #0x10]
00d0a71c  stp      x29, x30, [sp, #0x20]
00d0a720  add      x29, sp, #0x20
00d0a724  adrp     x21, #0x2be4000
00d0a728  ldrb     w8, [x21, #0xd2a]
00d0a72c  mov      w19, w1
00d0a730  mov      x20, x0
00d0a734  tbnz     w8, #0, #0xd0a750
00d0a738  adrp     x8, #0x2a47000
00d0a73c  ldr      x8, [x8, #0xea0]
00d0a740  ldr      w0, [x8]
00d0a744  bl       #0xbc39bc
00d0a748  mov      w8, #1
00d0a74c  strb     w8, [x21, #0xd2a]
00d0a750  ldr      x21, [x20, #0x50]
00d0a754  cbnz     x21, #0xd0a75c
00d0a758  bl       #0xbef9e8
00d0a75c  ldr      w8, [x21, #0x18]
00d0a760  sxtw     x22, w19
00d0a764  cmp      w8, w19
00d0a768  b.hi     #0xd0a778
00d0a76c  bl       #0xbf05d4
00d0a770  mov      x1, xzr
00d0a774  bl       #0xbef8cc
00d0a778  add      x8, x21, x22, lsl #2
00d0a77c  ldrsw    x21, [x8, #0x20]
00d0a780  ldr      x20, [x20, #0x48]
00d0a784  cbnz     x20, #0xd0a78c
00d0a788  bl       #0xbef9e8
00d0a78c  ldr      w8, [x20, #0x18]
00d0a790  cmp      w8, w19
00d0a794  b.hi     #0xd0a7a4
00d0a798  bl       #0xbf05d4
00d0a79c  mov      x1, xzr
00d0a7a0  bl       #0xbef8cc
00d0a7a4  adrp     x8, #0x2ad3000
00d0a7a8  ldr      x8, [x8, #0xa80]
00d0a7ac  ldr      x0, [x8]
00d0a7b0  add      x8, x20, x22, lsl #3
00d0a7b4  ldr      x19, [x8, #0x20]
00d0a7b8  ldrb     w8, [x0, #0x10a]
00d0a7bc  tbz      w8, #0, #0xd0a7cc
00d0a7c0  ldr      w8, [x0, #0xbc]
00d0a7c4  cbnz     w8, #0xd0a7cc
00d0a7c8  bl       #0xbd8b98
00d0a7cc  mov      x0, xzr
00d0a7d0  mov      x2, xzr
00d0a7d4  mov      x1, x19
00d0a7d8  bl       #0xff1c6c
00d0a7dc  ldp      x29, x30, [sp, #0x20]
00d0a7e0  ldp      x20, x19, [sp, #0x10]
00d0a7e4  sxtw     x8, w0
00d0a7e8  orr      x0, x8, x21, lsl #12
00d0a7ec  ldp      x22, x21, [sp], #0x30
00d0a7f0  ret

; Character.UnlockJob [0xd0b8d4, 0xd0b9fc)
00d0b8d4  stp      x24, x23, [sp, #-0x40]!
00d0b8d8  stp      x22, x21, [sp, #0x10]
00d0b8dc  stp      x20, x19, [sp, #0x20]
00d0b8e0  stp      x29, x30, [sp, #0x30]
00d0b8e4  add      x29, sp, #0x30
00d0b8e8  adrp     x21, #0x2be4000
00d0b8ec  ldrb     w8, [x21, #0xd32]
00d0b8f0  mov      w20, w1
00d0b8f4  mov      x19, x0
00d0b8f8  tbnz     w8, #0, #0xd0b914
00d0b8fc  adrp     x8, #0x2adb000
00d0b900  ldr      x8, [x8, #0x8f8]
00d0b904  ldr      w0, [x8]
00d0b908  bl       #0xbc39bc
00d0b90c  mov      w8, #1
00d0b910  strb     w8, [x21, #0xd32]
00d0b914  mov      x0, x19
00d0b918  mov      w1, w20
00d0b91c  bl       #0xd0abfc
00d0b920  and      w8, w0, #1
00d0b924  tbnz     w8, #0, #0xd0b9e8
00d0b928  ldr      x21, [x19, #0x50]
00d0b92c  cbnz     x21, #0xd0b934
00d0b930  bl       #0xbef9e8
00d0b934  ldr      w8, [x21, #0x18]
00d0b938  sxtw     x22, w20
00d0b93c  cmp      w8, w20
00d0b940  b.hi     #0xd0b950
00d0b944  bl       #0xbf05d4
00d0b948  mov      x1, xzr
00d0b94c  bl       #0xbef8cc
00d0b950  add      x8, x21, x22, lsl #2
00d0b954  str      wzr, [x8, #0x20]
00d0b958  adrp     x8, #0x2ad3000
00d0b95c  ldr      x8, [x8, #0xa80]
00d0b960  ldr      x23, [x19, #0x48]
00d0b964  ldr      x0, [x8]
00d0b968  ldrb     w8, [x0, #0x10a]
00d0b96c  tbz      w8, #0, #0xd0b97c
00d0b970  ldr      w8, [x0, #0xbc]
00d0b974  cbnz     w8, #0xd0b97c
00d0b978  bl       #0xbd8b98
00d0b97c  mov      x0, xzr
00d0b980  mov      w1, #1
00d0b984  mov      x2, xzr
00d0b988  bl       #0xff1b7c
00d0b98c  mov      x21, x0
00d0b990  cbnz     x23, #0xd0b998
00d0b994  bl       #0xbef9e8
00d0b998  cbz      x21, #0xd0b9bc
00d0b99c  ldr      x8, [x23]
00d0b9a0  mov      x0, x21
00d0b9a4  ldr      x1, [x8, #0x30]
00d0b9a8  bl       #0xbfd398
00d0b9ac  cbnz     x0, #0xd0b9bc
00d0b9b0  bl       #0xbf06f4
00d0b9b4  mov      x1, xzr
00d0b9b8  bl       #0xbef8cc
00d0b9bc  ldr      w8, [x23, #0x18]
00d0b9c0  cmp      w8, w20
00d0b9c4  b.hi     #0xd0b9d4
00d0b9c8  bl       #0xbf05d4
00d0b9cc  mov      x1, xzr
00d0b9d0  bl       #0xbef8cc
00d0b9d4  add      x8, x23, x22, lsl #3
00d0b9d8  mov      x0, x19
00d0b9dc  str      x21, [x8, #0x20]
00d0b9e0  bl       #0xd08320
00d0b9e4  str      w0, [x19, #0x74]
00d0b9e8  ldp      x29, x30, [sp, #0x30]
00d0b9ec  ldp      x20, x19, [sp, #0x20]
00d0b9f0  ldp      x22, x21, [sp, #0x10]
00d0b9f4  ldp      x24, x23, [sp], #0x40
00d0b9f8  ret

; Character.GetExpToNextLevel [0xd0bca8, 0xd0be94)
00d0bca8  stp      x26, x25, [sp, #-0x50]!
00d0bcac  stp      x24, x23, [sp, #0x10]
00d0bcb0  stp      x22, x21, [sp, #0x20]
00d0bcb4  stp      x20, x19, [sp, #0x30]
00d0bcb8  stp      x29, x30, [sp, #0x40]
00d0bcbc  add      x29, sp, #0x40
00d0bcc0  adrp     x24, #0x2be4000
00d0bcc4  ldrb     w8, [x24, #0xd38]
00d0bcc8  mov      w22, w4
00d0bccc  mov      x20, x3
00d0bcd0  mov      x19, x2
00d0bcd4  mov      x21, x1
00d0bcd8  mov      x23, x0
00d0bcdc  tbnz     w8, #0, #0xd0bcf8
00d0bce0  adrp     x8, #0x2a55000
00d0bce4  ldr      x8, [x8, #0xb0]
00d0bce8  ldr      w0, [x8]
00d0bcec  bl       #0xbc39bc
00d0bcf0  mov      w8, #1
00d0bcf4  strb     w8, [x24, #0xd38]
00d0bcf8  tbz      w22, #0x1f, #0xd0bd08
00d0bcfc  mov      x0, x23
00d0bd00  bl       #0xd08684
00d0bd04  mov      w22, w0
00d0bd08  ldr      x25, [x23, #0x50]
00d0bd0c  cbnz     x25, #0xd0bd14
00d0bd10  bl       #0xbef9e8
00d0bd14  ldr      w8, [x25, #0x18]
00d0bd18  sxtw     x24, w22
00d0bd1c  cmp      w22, w8
00d0bd20  b.lo     #0xd0bd30
00d0bd24  bl       #0xbf05d4
00d0bd28  mov      x1, xzr
00d0bd2c  bl       #0xbef8cc
00d0bd30  add      x8, x25, x24, lsl #2
00d0bd34  ldr      w26, [x8, #0x20]
00d0bd38  ldr      x25, [x23, #0x48]
00d0bd3c  cbnz     x25, #0xd0bd44
00d0bd40  bl       #0xbef9e8
00d0bd44  ldr      w8, [x25, #0x18]
00d0bd48  cmp      w22, w8
00d0bd4c  b.lo     #0xd0bd5c
00d0bd50  bl       #0xbf05d4
00d0bd54  mov      x1, xzr
00d0bd58  bl       #0xbef8cc
00d0bd5c  adrp     x8, #0x2ad3000
00d0bd60  ldr      x8, [x8, #0xa80]
00d0bd64  ldr      x0, [x8]
00d0bd68  add      x8, x25, x24, lsl #3
00d0bd6c  ldr      x24, [x8, #0x20]
00d0bd70  ldrb     w8, [x0, #0x10a]
00d0bd74  tbz      w8, #0, #0xd0bd84
00d0bd78  ldr      w8, [x0, #0xbc]
00d0bd7c  cbnz     w8, #0xd0bd84
00d0bd80  bl       #0xbd8b98
00d0bd84  mov      x0, xzr
00d0bd88  mov      x2, xzr
00d0bd8c  mov      x1, x24
00d0bd90  bl       #0xff1c6c
00d0bd94  mov      w24, w0
00d0bd98  mov      x0, x23
00d0bd9c  bl       #0xd01c28
00d0bda0  adrp     x8, #0x2a48000
00d0bda4  ldr      x8, [x8, #0x8d8]
00d0bda8  mov      x25, x0
00d0bdac  ldr      x8, [x8]
00d0bdb0  ldr      x8, [x8, #0xa0]
00d0bdb4  ldr      x23, [x8]
00d0bdb8  cbnz     x25, #0xd0bdc0
00d0bdbc  bl       #0xbef9e8
00d0bdc0  ldr      x25, [x25, #0x60]
00d0bdc4  cbnz     x25, #0xd0bdcc
00d0bdc8  bl       #0xbef9e8
00d0bdcc  adrp     x8, #0x2ab3000
00d0bdd0  ldr      x8, [x8, #0x780]
00d0bdd4  mov      x0, x25
00d0bdd8  mov      w1, w22
00d0bddc  ldr      x2, [x8]
00d0bde0  bl       #0x1f88a0c
00d0bde4  mov      w22, w0
00d0bde8  cbnz     x23, #0xd0bdf0
00d0bdec  bl       #0xbef9e8
00d0bdf0  mov      x2, xzr
00d0bdf4  mov      x0, x23
00d0bdf8  mov      w1, w22
00d0bdfc  bl       #0x10bdf30
00d0be00  mov      x22, x0
00d0be04  cbz      x22, #0xd0be20
00d0be08  mov      x2, xzr
00d0be0c  mov      x0, x22
00d0be10  mov      w1, w24
00d0be14  bl       #0x10c407c
00d0be18  mov      w23, w0
00d0be1c  b        #0xd0be3c
00d0be20  bl       #0xbef9e8
00d0be24  mov      x0, xzr
00d0be28  mov      x2, xzr
00d0be2c  mov      w1, w24
00d0be30  bl       #0x10c407c
00d0be34  mov      w23, w0
00d0be38  bl       #0xbef9e8
00d0be3c  add      w1, w24, #1
00d0be40  mov      x2, xzr
00d0be44  mov      x0, x22
00d0be48  bl       #0x10c407c
00d0be4c  sub      w8, w0, w23
00d0be50  sub      w9, w0, w26
00d0be54  str      w8, [x20]
00d0be58  str      w9, [x21]
00d0be5c  ldr      s0, [x20]
00d0be60  scvtf    s2, w9
00d0be64  fmov     s1, #1.00000000
00d0be68  mov      w0, #1
00d0be6c  scvtf    s0, s0
00d0be70  fdiv     s0, s2, s0
00d0be74  fsub     s0, s1, s0
00d0be78  str      s0, [x19]
00d0be7c  ldp      x29, x30, [sp, #0x40]
00d0be80  ldp      x20, x19, [sp, #0x30]
00d0be84  ldp      x22, x21, [sp, #0x20]
00d0be88  ldp      x24, x23, [sp, #0x10]
00d0be8c  ldp      x26, x25, [sp], #0x50
00d0be90  ret

; ChrJobParams.GetEXPAt [0x10c407c, 0x10c4150)
010c407c  stp      d9, d8, [sp, #-0x40]!
010c4080  stp      x22, x21, [sp, #0x10]
010c4084  stp      x20, x19, [sp, #0x20]
010c4088  stp      x29, x30, [sp, #0x30]
010c408c  add      x29, sp, #0x30
010c4090  adrp     x21, #0x2be6000
010c4094  ldrb     w8, [x21, #0x9d7]
010c4098  mov      w20, w1
010c409c  mov      x19, x0
010c40a0  tbnz     w8, #0, #0x10c40bc
010c40a4  adrp     x8, #0x2a7c000
010c40a8  ldr      x8, [x8, #0x4c8]
010c40ac  ldr      w0, [x8]
010c40b0  bl       #0xbc39bc
010c40b4  mov      w8, #1
010c40b8  strb     w8, [x21, #0x9d7]
010c40bc  adrp     x21, #0x2a97000
010c40c0  ldr      x21, [x21, #0xf70]
010c40c4  ldr      x0, [x21]
010c40c8  ldrb     w8, [x0, #0x10a]
010c40cc  tbz      w8, #0, #0x10c40e0
010c40d0  ldr      w8, [x0, #0xbc]
010c40d4  cbnz     w8, #0x10c40e0
010c40d8  bl       #0xbd8b98
010c40dc  ldr      x0, [x21]
010c40e0  adrp     x10, #0x2a9f000
010c40e4  ldr      x8, [x0, #0xa0]
010c40e8  ldr      x10, [x10, #0x8e8]
010c40ec  sub      w9, w20, #1
010c40f0  ldr      w20, [x19, #0x140]
010c40f4  ldr      w8, [x8]
010c40f8  ldr      x0, [x10]
010c40fc  ldr      s8, [x19, #0x158]
010c4100  scvtf    s0, w9
010c4104  sub      w8, w8, #1
010c4108  ldrb     w9, [x0, #0x10a]
010c410c  scvtf    s1, w8
010c4110  fdiv     s9, s0, s1
010c4114  tbz      w9, #0, #0x10c4124
010c4118  ldr      w8, [x0, #0xbc]
010c411c  cbnz     w8, #0x10c4124
010c4120  bl       #0xbd8b98
010c4124  mov      v0.16b, v9.16b
010c4128  mov      v1.16b, v8.16b
010c412c  bl       #0x912a20
010c4130  scvtf    s1, w20
010c4134  ldp      x29, x30, [sp, #0x30]
010c4138  ldp      x20, x19, [sp, #0x20]
010c413c  ldp      x22, x21, [sp, #0x10]
010c4140  fmul     s0, s1, s0
010c4144  fcvtzs   w0, s0
010c4148  ldp      d9, d8, [sp], #0x40
010c414c  ret

; UserData.totalEnergy_and_paidEnergy [0x19d7f70, 0x19d7fa0)
019d7f70  ldp      w8, w9, [x0, #0x2c]
019d7f74  ldr      w10, [x0, #0x34]
019d7f78  ldr      w11, [x0, #0x3c]
019d7f7c  add      w8, w9, w8
019d7f80  add      w8, w8, w10
019d7f84  add      w0, w8, w11
019d7f88  ret
019d7f8c  ldp      w8, w9, [x0, #0x2c]
019d7f90  ldr      w10, [x0, #0x34]
019d7f94  add      w8, w9, w8
019d7f98  add      w0, w8, w10
019d7f9c  ret

; AppServerUtil.LoadUserdataFromJson [0xdb6010, 0xdb8328)
00db6010  stp      d9, d8, [sp, #-0x70]!
00db6014  stp      x28, x27, [sp, #0x10]
00db6018  stp      x26, x25, [sp, #0x20]
00db601c  stp      x24, x23, [sp, #0x30]
00db6020  stp      x22, x21, [sp, #0x40]
00db6024  stp      x20, x19, [sp, #0x50]
00db6028  stp      x29, x30, [sp, #0x60]
00db602c  add      x29, sp, #0x60
00db6030  sub      sp, sp, #0x10
00db6034  adrp     x20, #0x2be5000
00db6038  ldrb     w8, [x20, #0x3de]
00db603c  mov      x19, x1
00db6040  tbnz     w8, #0, #0xdb605c
00db6044  adrp     x8, #0x2a64000
00db6048  ldr      x8, [x8, #0xa80]
00db604c  ldr      w0, [x8]
00db6050  bl       #0xbc39bc
00db6054  mov      w8, #1
00db6058  strb     w8, [x20, #0x3de]
00db605c  cbnz     x19, #0xdb6064
00db6060  bl       #0xbef9e8
00db6064  adrp     x24, #0x2a9a000
00db6068  ldr      x24, [x24, #0x6b8]
00db606c  adrp     x21, #0x2ab3000
00db6070  ldr      x8, [x19]
00db6074  ldr      x1, [x24]
00db6078  ldr      x21, [x21, #0x308]
00db607c  ldrh     w9, [x8, #0x102]
00db6080  ldr      x20, [x21]
00db6084  cbz      x9, #0xdb60b0
00db6088  ldr      x10, [x8, #0x98]
00db608c  mov      x11, xzr
00db6090  add      x10, x10, #8
00db6094  ldur     x12, [x10, #-8]
00db6098  cmp      x12, x1
00db609c  b.eq     #0xdb60c0
00db60a0  add      x11, x11, #1
00db60a4  add      x10, x10, #0x10
00db60a8  cmp      x11, x9
00db60ac  b.lo     #0xdb6094
00db60b0  mov      w2, #8
00db60b4  mov      x0, x19
00db60b8  bl       #0xbb9ee0
00db60bc  b        #0xdb60d0
00db60c0  ldr      w9, [x10]
00db60c4  add      w9, w9, #8
00db60c8  add      x8, x8, w9, uxtw #4
00db60cc  add      x0, x8, #0x110
00db60d0  ldp      x8, x2, [x0]
00db60d4  mov      x0, x19
00db60d8  mov      x1, x20
00db60dc  blr      x8
00db60e0  tbz      w0, #0, #0xdb614c
00db60e4  cbnz     x19, #0xdb60ec
00db60e8  bl       #0xbef9e8
00db60ec  ldr      x1, [x21]
00db60f0  mov      x2, xzr
00db60f4  mov      x0, x19
00db60f8  bl       #0xfee960
00db60fc  mov      x1, x0
00db6100  mov      x0, xzr
00db6104  mov      x2, xzr
00db6108  bl       #0xff4f84
00db610c  adrp     x20, #0x2a4a000
00db6110  ldr      x20, [x20, #0x5a0]
00db6114  mov      v8.16b, v0.16b
00db6118  ldr      x0, [x20]
00db611c  ldrb     w8, [x0, #0x10a]
00db6120  tbz      w8, #0, #0xdb6134
00db6124  ldr      w8, [x0, #0xbc]
00db6128  cbnz     w8, #0xdb6134
00db612c  bl       #0xbd8b98
00db6130  ldr      x0, [x20]
00db6134  ldr      x8, [x0, #0xa0]
00db6138  ldr      x20, [x8, #0x230]
00db613c  cbnz     x20, #0xdb6144
00db6140  bl       #0xbef9e8
00db6144  fcvtzs   x8, d8
00db6148  str      x8, [x20, #0xa0]
00db614c  cbnz     x19, #0xdb6154
00db6150  bl       #0xbef9e8
00db6154  adrp     x21, #0x2a7d000
00db6158  ldr      x8, [x19]
00db615c  ldr      x1, [x24]
00db6160  ldr      x21, [x21, #0x40]
00db6164  ldrh     w9, [x8, #0x102]
00db6168  ldr      x20, [x21]
00db616c  cbz      x9, #0xdb6198
00db6170  ldr      x10, [x8, #0x98]
00db6174  mov      x11, xzr
00db6178  add      x10, x10, #8
00db617c  ldur     x12, [x10, #-8]
00db6180  cmp      x12, x1
00db6184  b.eq     #0xdb61a8
00db6188  add      x11, x11, #1
00db618c  add      x10, x10, #0x10
00db6190  cmp      x11, x9
00db6194  b.lo     #0xdb617c
00db6198  mov      w2, #8
00db619c  mov      x0, x19
00db61a0  bl       #0xbb9ee0
00db61a4  b        #0xdb61b8
00db61a8  ldr      w9, [x10]
00db61ac  add      w9, w9, #8
00db61b0  add      x8, x8, w9, uxtw #4
00db61b4  add      x0, x8, #0x110
00db61b8  ldp      x8, x2, [x0]
00db61bc  mov      x0, x19
00db61c0  mov      x1, x20
00db61c4  blr      x8
00db61c8  tbz      w0, #0, #0xdb6238
00db61cc  cbnz     x19, #0xdb61d4
00db61d0  bl       #0xbef9e8
00db61d4  ldr      x1, [x21]
00db61d8  mov      x2, xzr
00db61dc  mov      x0, x19
00db61e0  bl       #0xfee960
00db61e4  mov      x1, x0
00db61e8  bl       #0xdb452c
00db61ec  adrp     x21, #0x2a4a000
00db61f0  ldr      x21, [x21, #0x5a0]
00db61f4  mov      w20, w0
00db61f8  ldr      x8, [x21]
00db61fc  ldrb     w9, [x8, #0x10a]
00db6200  tbz      w9, #0, #0xdb6218
00db6204  ldr      w9, [x8, #0xbc]
00db6208  cbnz     w9, #0xdb6218
00db620c  mov      x0, x8
00db6210  bl       #0xbd8b98
00db6214  ldr      x8, [x21]
00db6218  ldr      x8, [x8, #0xa0]
00db621c  ldr      x21, [x8, #0x230]
00db6220  cbnz     x21, #0xdb6228
00db6224  bl       #0xbef9e8
00db6228  mov      x2, xzr
00db622c  mov      x0, x21
00db6230  mov      w1, w20
00db6234  bl       #0x19d9320
00db6238  cbnz     x19, #0xdb6240
00db623c  bl       #0xbef9e8
00db6240  adrp     x21, #0x2a33000
00db6244  ldr      x8, [x19]
00db6248  ldr      x1, [x24]
00db624c  ldr      x21, [x21, #0x8a8]
00db6250  ldrh     w9, [x8, #0x102]
00db6254  ldr      x20, [x21]
00db6258  cbz      x9, #0xdb6284
00db625c  ldr      x10, [x8, #0x98]
00db6260  mov      x11, xzr
00db6264  add      x10, x10, #8
00db6268  ldur     x12, [x10, #-8]
00db626c  cmp      x12, x1
00db6270  b.eq     #0xdb6294
00db6274  add      x11, x11, #1
00db6278  add      x10, x10, #0x10
00db627c  cmp      x11, x9
00db6280  b.lo     #0xdb6268
00db6284  mov      w2, #8
00db6288  mov      x0, x19
00db628c  bl       #0xbb9ee0
00db6290  b        #0xdb62a4
00db6294  ldr      w9, [x10]
00db6298  add      w9, w9, #8
00db629c  add      x8, x8, w9, uxtw #4
00db62a0  add      x0, x8, #0x110
00db62a4  ldp      x8, x2, [x0]
00db62a8  mov      x0, x19
00db62ac  mov      x1, x20
00db62b0  blr      x8
00db62b4  tbz      w0, #0, #0xdb6318
00db62b8  cbnz     x19, #0xdb62c0
00db62bc  bl       #0xbef9e8
00db62c0  ldr      x1, [x21]
00db62c4  mov      x2, xzr
00db62c8  mov      x0, x19
00db62cc  bl       #0xfee960
00db62d0  mov      x1, x0
00db62d4  bl       #0xdb452c
00db62d8  adrp     x21, #0x2a4a000
00db62dc  ldr      x21, [x21, #0x5a0]
00db62e0  mov      w20, w0
00db62e4  ldr      x8, [x21]
00db62e8  ldrb     w9, [x8, #0x10a]
00db62ec  tbz      w9, #0, #0xdb6304
00db62f0  ldr      w9, [x8, #0xbc]
00db62f4  cbnz     w9, #0xdb6304
00db62f8  mov      x0, x8
00db62fc  bl       #0xbd8b98
00db6300  ldr      x8, [x21]
00db6304  ldr      x8, [x8, #0xa0]
00db6308  ldr      x21, [x8, #0x230]
00db630c  cbnz     x21, #0xdb6314
00db6310  bl       #0xbef9e8
00db6314  str      w20, [x21, #0x80]
00db6318  cbnz     x19, #0xdb6320
00db631c  bl       #0xbef9e8
00db6320  adrp     x21, #0x2a63000
00db6324  ldr      x8, [x19]
00db6328  ldr      x1, [x24]
00db632c  ldr      x21, [x21, #0x460]
00db6330  ldrh     w9, [x8, #0x102]
00db6334  ldr      x20, [x21]
00db6338  cbz      x9, #0xdb6364
00db633c  ldr      x10, [x8, #0x98]
00db6340  mov      x11, xzr
00db6344  add      x10, x10, #8
00db6348  ldur     x12, [x10, #-8]
00db634c  cmp      x12, x1
00db6350  b.eq     #0xdb6374
00db6354  add      x11, x11, #1
00db6358  add      x10, x10, #0x10
00db635c  cmp      x11, x9
00db6360  b.lo     #0xdb6348
00db6364  mov      w2, #8
00db6368  mov      x0, x19
00db636c  bl       #0xbb9ee0
00db6370  b        #0xdb6384
00db6374  ldr      w9, [x10]
00db6378  add      w9, w9, #8
00db637c  add      x8, x8, w9, uxtw #4
00db6380  add      x0, x8, #0x110
00db6384  ldp      x8, x2, [x0]
00db6388  mov      x0, x19
00db638c  mov      x1, x20
00db6390  blr      x8
00db6394  tbz      w0, #0, #0xdb672c
00db6398  cbnz     x19, #0xdb63a0
00db639c  bl       #0xbef9e8
00db63a0  ldr      x1, [x21]
00db63a4  mov      x2, xzr
00db63a8  mov      x0, x19
00db63ac  bl       #0xfee960
00db63b0  mov      x20, x0
00db63b4  cbnz     x20, #0xdb63bc
00db63b8  bl       #0xbef9e8
00db63bc  ldr      x8, [x20]
00db63c0  ldr      x1, [x24]
00db63c4  ldrh     w9, [x8, #0x102]
00db63c8  cbz      x9, #0xdb63f4
00db63cc  ldr      x10, [x8, #0x98]
00db63d0  mov      x11, xzr
00db63d4  add      x10, x10, #8
00db63d8  ldur     x12, [x10, #-8]
00db63dc  cmp      x12, x1
00db63e0  b.eq     #0xdb6404
00db63e4  add      x11, x11, #1
00db63e8  add      x10, x10, #0x10
00db63ec  cmp      x11, x9
00db63f0  b.lo     #0xdb63d8
00db63f4  mov      w2, #4
00db63f8  mov      x0, x20
00db63fc  bl       #0xbb9ee0
00db6400  b        #0xdb6414
00db6404  ldr      w9, [x10]
00db6408  add      w9, w9, #4
00db640c  add      x8, x8, w9, uxtw #4
00db6410  add      x0, x8, #0x110
00db6414  ldp      x8, x1, [x0]
00db6418  mov      x0, x20
00db641c  blr      x8
00db6420  mov      x21, x0
00db6424  cbnz     x21, #0xdb642c
00db6428  bl       #0xbef9e8
00db642c  adrp     x9, #0x2adf000
00db6430  ldr      x8, [x21]
00db6434  ldr      x9, [x9, #0x788]
00db6438  ldr      x1, [x9]
00db643c  ldrh     w9, [x8, #0x102]
00db6440  cbz      x9, #0xdb646c
00db6444  ldr      x10, [x8, #0x98]
00db6448  mov      x11, xzr
00db644c  add      x10, x10, #8
00db6450  ldur     x12, [x10, #-8]
00db6454  cmp      x12, x1
00db6458  b.eq     #0xdb647c
00db645c  add      x11, x11, #1
00db6460  add      x10, x10, #0x10
00db6464  cmp      x11, x9
00db6468  b.lo     #0xdb6450
00db646c  mov      w2, wzr
00db6470  mov      x0, x21
00db6474  bl       #0xbb9ee0
00db6478  b        #0xdb6488
00db647c  ldr      w9, [x10]
00db6480  add      x8, x8, x9, lsl #4
00db6484  add      x0, x8, #0x110
00db6488  ldp      x8, x1, [x0]
00db648c  mov      x0, x21
00db6490  blr      x8
00db6494  adrp     x25, #0x2a7e000
00db6498  adrp     x26, #0x2a3f000
00db649c  adrp     x27, #0x2a4a000
00db64a0  ldr      x25, [x25, #0xf60]
00db64a4  ldr      x26, [x26, #0xcb8]
00db64a8  ldr      x27, [x27, #0x5a0]
00db64ac  mov      x21, x0
00db64b0  b        #0xdb64c0
00db64b4  sxtw     x8, w22
00db64b8  add      x8, x28, x8, lsl #2
00db64bc  str      w23, [x8, #0x20]
00db64c0  cbnz     x21, #0xdb64c8
00db64c4  bl       #0xbef9e8
00db64c8  ldr      x8, [x21]
00db64cc  ldr      x1, [x25]
00db64d0  ldrh     w9, [x8, #0x102]
00db64d4  cbz      x9, #0xdb6500
00db64d8  ldr      x10, [x8, #0x98]
00db64dc  mov      x11, xzr
00db64e0  add      x10, x10, #8
00db64e4  ldur     x12, [x10, #-8]
00db64e8  cmp      x12, x1
00db64ec  b.eq     #0xdb6510
00db64f0  add      x11, x11, #1
00db64f4  add      x10, x10, #0x10
00db64f8  cmp      x11, x9
00db64fc  b.lo     #0xdb64e4
00db6500  mov      w2, #1
00db6504  mov      x0, x21
00db6508  bl       #0xbb9ee0
00db650c  b        #0xdb6520
00db6510  ldr      w9, [x10]
00db6514  add      w9, w9, #1
00db6518  add      x8, x8, w9, uxtw #4
00db651c  add      x0, x8, #0x110
00db6520  ldp      x8, x1, [x0]
00db6524  mov      x0, x21
00db6528  blr      x8
00db652c  and      w8, w0, #1
00db6530  tbz      w8, #0, #0xdb8304
00db6534  cbnz     x21, #0xdb653c
00db6538  bl       #0xbef9e8
00db653c  ldr      x8, [x21]
00db6540  ldr      x1, [x25]
00db6544  ldrh     w9, [x8, #0x102]
00db6548  cbz      x9, #0xdb6574
00db654c  ldr      x10, [x8, #0x98]
00db6550  mov      x11, xzr
00db6554  add      x10, x10, #8
00db6558  ldur     x12, [x10, #-8]
00db655c  cmp      x12, x1
00db6560  b.eq     #0xdb6584
00db6564  add      x11, x11, #1
00db6568  add      x10, x10, #0x10
00db656c  cmp      x11, x9
00db6570  b.lo     #0xdb6558
00db6574  mov      w2, wzr
00db6578  mov      x0, x21
00db657c  bl       #0xbb9ee0
00db6580  b        #0xdb6590
00db6584  ldr      w9, [x10]
00db6588  add      x8, x8, x9, lsl #4
00db658c  add      x0, x8, #0x110
00db6590  ldp      x8, x1, [x0]
00db6594  mov      x0, x21
00db6598  blr      x8
00db659c  mov      x22, x0
00db65a0  cbz      x22, #0xdb65d8
00db65a4  ldr      x1, [x26]
00db65a8  ldr      x8, [x22]
00db65ac  cmp      x8, x1
00db65b0  b.eq     #0xdb65dc
00db65b4  ldr      x0, [x8, #0x30]
00db65b8  add      x8, sp, #8
00db65bc  bl       #0xc1a7bc
00db65c0  ldr      x0, [sp, #8]
00db65c4  bl       #0xbf05a0
00db65c8  mov      x1, xzr
00db65cc  bl       #0xbef8cc
00db65d0  add      x0, sp, #8
00db65d4  bl       #0x2017ad8
00db65d8  mov      x22, xzr
00db65dc  cbnz     x20, #0xdb65e4
00db65e0  bl       #0xbef9e8
00db65e4  mov      x2, xzr
00db65e8  mov      x0, x20
00db65ec  mov      x1, x22
00db65f0  bl       #0xfee960
00db65f4  mov      x23, x0
00db65f8  mov      x0, xzr
00db65fc  mov      x2, xzr
00db6600  mov      x1, x22
00db6604  bl       #0xa9d588
00db6608  mov      w22, w0
00db660c  ldr      x0, [x27]
00db6610  ldrb     w8, [x0, #0x10a]
00db6614  tbz      w8, #0, #0xdb6628
00db6618  ldr      w8, [x0, #0xbc]
00db661c  cbnz     w8, #0xdb6628
00db6620  bl       #0xbd8b98
00db6624  ldr      x0, [x27]
00db6628  ldr      x8, [x0, #0xa0]
00db662c  ldr      x28, [x8, #0x230]
00db6630  cbnz     x28, #0xdb6638
00db6634  bl       #0xbef9e8
00db6638  ldr      x28, [x28, #0x98]
00db663c  mov      x0, xzr
00db6640  mov      x2, xzr
00db6644  mov      x1, x23
00db6648  bl       #0xff501c
00db664c  mov      w23, w0
00db6650  cbnz     x28, #0xdb6658
00db6654  bl       #0xbef9e8
00db6658  ldr      w8, [x28, #0x18]
00db665c  cmp      w22, w8
00db6660  b.lo     #0xdb64b4
00db6664  bl       #0xbf05d4
00db6668  mov      x1, xzr
00db666c  bl       #0xbef8cc
00db6670  b        #0xdb64b4
00db6674  mov      x22, x1
00db6678  mov      x20, x0
00db667c  mov      x0, x20
00db6680  cmp      w22, #1
00db6684  b.ne     #0xdb8324
00db6688  bl       #0x913aa0
00db668c  ldr      x20, [x0]
00db6690  bl       #0x913390
00db6694  mov      w22, wzr
00db6698  adrp     x23, #0x2a47000
00db669c  ldr      x23, [x23, #0x880]
00db66a0  mov      x0, x21
00db66a4  ldr      x1, [x23]
00db66a8  bl       #0xbfd398
00db66ac  mov      x21, x0
00db66b0  cbz      x21, #0xdb6714
00db66b4  ldr      x8, [x21]
00db66b8  ldr      x1, [x23]
00db66bc  ldrh     w9, [x8, #0x102]
00db66c0  cbz      x9, #0xdb66ec
00db66c4  ldr      x10, [x8, #0x98]
00db66c8  mov      x11, xzr
00db66cc  add      x10, x10, #8
00db66d0  ldur     x12, [x10, #-8]
00db66d4  cmp      x12, x1
00db66d8  b.eq     #0xdb66fc
00db66dc  add      x11, x11, #1
00db66e0  add      x10, x10, #0x10
00db66e4  cmp      x11, x9
00db66e8  b.lo     #0xdb66d0
00db66ec  mov      w2, wzr
00db66f0  mov      x0, x21
00db66f4  bl       #0xbb9ee0
00db66f8  b        #0xdb6708
00db66fc  ldr      w9, [x10]
00db6700  add      x8, x8, x9, lsl #4
00db6704  add      x0, x8, #0x110
00db6708  ldp      x8, x1, [x0]
00db670c  mov      x0, x21
00db6710  blr      x8
00db6714  cmp      w22, #0x112
00db6718  b.eq     #0xdb672c
00db671c  cbz      x20, #0xdb672c
00db6720  mov      x1, xzr
00db6724  mov      x0, x20
00db6728  bl       #0xbef8cc
00db672c  cbnz     x19, #0xdb6734
00db6730  bl       #0xbef9e8
00db6734  adrp     x21, #0x2ab0000
00db6738  ldr      x8, [x19]
00db673c  ldr      x1, [x24]
00db6740  ldr      x21, [x21, #0x50]
00db6744  ldrh     w9, [x8, #0x102]
00db6748  ldr      x20, [x21]
00db674c  cbz      x9, #0xdb6778
00db6750  ldr      x10, [x8, #0x98]
00db6754  mov      x11, xzr
00db6758  add      x10, x10, #8
00db675c  ldur     x12, [x10, #-8]
00db6760  cmp      x12, x1
00db6764  b.eq     #0xdb6788
00db6768  add      x11, x11, #1
00db676c  add      x10, x10, #0x10
00db6770  cmp      x11, x9
00db6774  b.lo     #0xdb675c
00db6778  mov      w2, #8
00db677c  mov      x0, x19
00db6780  bl       #0xbb9ee0
00db6784  b        #0xdb6798
00db6788  ldr      w9, [x10]
00db678c  add      w9, w9, #8
00db6790  add      x8, x8, w9, uxtw #4
00db6794  add      x0, x8, #0x110
00db6798  ldp      x8, x2, [x0]
00db679c  mov      x0, x19
00db67a0  mov      x1, x20
00db67a4  blr      x8
00db67a8  tbz      w0, #0, #0xdb6814
00db67ac  cbnz     x19, #0xdb67b4
00db67b0  bl       #0xbef9e8
00db67b4  ldr      x1, [x21]
00db67b8  mov      x2, xzr
00db67bc  mov      x0, x19
00db67c0  bl       #0xfee960
00db67c4  mov      x1, x0
00db67c8  mov      x0, xzr
00db67cc  mov      x2, xzr
00db67d0  bl       #0xff4f84
00db67d4  adrp     x20, #0x2a4a000
00db67d8  ldr      x20, [x20, #0x5a0]
00db67dc  mov      v8.16b, v0.16b
00db67e0  ldr      x0, [x20]
00db67e4  ldrb     w8, [x0, #0x10a]
00db67e8  tbz      w8, #0, #0xdb67fc
00db67ec  ldr      w8, [x0, #0xbc]
00db67f0  cbnz     w8, #0xdb67fc
00db67f4  bl       #0xbd8b98
00db67f8  ldr      x0, [x20]
00db67fc  ldr      x8, [x0, #0xa0]
00db6800  fcvtzs   x21, d8
00db6804  ldr      x20, [x8, #0x230]
00db6808  cbnz     x20, #0xdb6810
00db680c  bl       #0xbef9e8
00db6810  str      x21, [x20, #0x60]
00db6814  cbnz     x19, #0xdb681c
00db6818  bl       #0xbef9e8
00db681c  adrp     x21, #0x2a5b000
00db6820  ldr      x8, [x19]
00db6824  ldr      x1, [x24]
00db6828  ldr      x21, [x21, #0x9b0]
00db682c  ldrh     w9, [x8, #0x102]
00db6830  ldr      x20, [x21]
00db6834  cbz      x9, #0xdb6860
00db6838  ldr      x10, [x8, #0x98]
00db683c  mov      x11, xzr
00db6840  add      x10, x10, #8
00db6844  ldur     x12, [x10, #-8]
00db6848  cmp      x12, x1
00db684c  b.eq     #0xdb6870
00db6850  add      x11, x11, #1
00db6854  add      x10, x10, #0x10
00db6858  cmp      x11, x9
00db685c  b.lo     #0xdb6844
00db6860  mov      w2, #8
00db6864  mov      x0, x19
00db6868  bl       #0xbb9ee0
00db686c  b        #0xdb6880
00db6870  ldr      w9, [x10]
00db6874  add      w9, w9, #8
00db6878  add      x8, x8, w9, uxtw #4
00db687c  add      x0, x8, #0x110
00db6880  ldp      x8, x2, [x0]
00db6884  mov      x0, x19
00db6888  mov      x1, x20
00db688c  blr      x8
00db6890  tbz      w0, #0, #0xdb6fd4
00db6894  cbnz     x19, #0xdb689c
00db6898  bl       #0xbef9e8
00db689c  ldr      x1, [x21]
00db68a0  mov      x2, xzr
00db68a4  mov      x0, x19
00db68a8  bl       #0xfee960
00db68ac  mov      x1, x0
00db68b0  bl       #0xdb45c4
00db68b4  mov      x20, x0
00db68b8  cbnz     x20, #0xdb68c0
00db68bc  bl       #0xbef9e8
00db68c0  adrp     x22, #0x2aae000
00db68c4  ldr      x8, [x20]
00db68c8  ldr      x1, [x24]
00db68cc  ldr      x22, [x22, #0x7a0]
00db68d0  ldrh     w9, [x8, #0x102]
00db68d4  ldr      x21, [x22]
00db68d8  cbz      x9, #0xdb6904
00db68dc  ldr      x10, [x8, #0x98]
00db68e0  mov      x11, xzr
00db68e4  add      x10, x10, #8
00db68e8  ldur     x12, [x10, #-8]
00db68ec  cmp      x12, x1
00db68f0  b.eq     #0xdb6914
00db68f4  add      x11, x11, #1
00db68f8  add      x10, x10, #0x10
00db68fc  cmp      x11, x9
00db6900  b.lo     #0xdb68e8
00db6904  mov      w2, #8
00db6908  mov      x0, x20
00db690c  bl       #0xbb9ee0
00db6910  b        #0xdb6924
00db6914  ldr      w9, [x10]
00db6918  add      w9, w9, #8
00db691c  add      x8, x8, w9, uxtw #4
00db6920  add      x0, x8, #0x110
00db6924  ldp      x8, x2, [x0]
00db6928  mov      x0, x20
00db692c  mov      x1, x21
00db6930  blr      x8
00db6934  tbz      w0, #0, #0xdb6d94
00db6938  adrp     x23, #0x2a4a000
00db693c  ldr      x23, [x23, #0x5a0]
00db6940  ldr      x0, [x23]
00db6944  ldrb     w8, [x0, #0x10a]
00db6948  tbz      w8, #0, #0xdb695c
00db694c  ldr      w8, [x0, #0xbc]
00db6950  cbnz     w8, #0xdb695c
00db6954  bl       #0xbd8b98
00db6958  ldr      x0, [x23]
00db695c  ldr      x8, [x0, #0xa0]
00db6960  ldr      x21, [x8, #0x230]
00db6964  cbnz     x20, #0xdb696c
00db6968  bl       #0xbef9e8
00db696c  ldr      x1, [x22]
00db6970  mov      x2, xzr
00db6974  mov      x0, x20
00db6978  bl       #0xfee960
00db697c  mov      x1, x0
00db6980  mov      x0, xzr
00db6984  mov      x2, xzr
00db6988  bl       #0xff501c
00db698c  mov      w22, w0
00db6990  cbnz     x21, #0xdb6998
00db6994  bl       #0xbef9e8
00db6998  mov      x2, xzr
00db699c  mov      x0, x21
00db69a0  mov      w1, w22
00db69a4  bl       #0x19d7e98
00db69a8  ldr      x8, [x23]
00db69ac  ldr      x8, [x8, #0xa0]
00db69b0  ldr      x22, [x8, #0x230]
00db69b4  cbnz     x20, #0xdb69bc
00db69b8  bl       #0xbef9e8
00db69bc  adrp     x8, #0x2a8c000
00db69c0  ldr      x8, [x8, #0x280]
00db69c4  mov      x2, xzr
00db69c8  mov      x0, x20
00db69cc  ldr      x1, [x8]
00db69d0  bl       #0xfee960
00db69d4  mov      x1, x0
00db69d8  mov      x0, xzr
00db69dc  mov      x2, xzr
00db69e0  bl       #0xff501c
00db69e4  mov      w21, w0
00db69e8  cbnz     x22, #0xdb69f0
00db69ec  bl       #0xbef9e8
00db69f0  str      w21, [x22, #0x2c]
00db69f4  cbnz     x20, #0xdb69fc
00db69f8  bl       #0xbef9e8
00db69fc  adrp     x22, #0x2ab8000
00db6a00  ldr      x8, [x20]
00db6a04  ldr      x1, [x24]
00db6a08  ldr      x22, [x22, #0xf48]
00db6a0c  ldrh     w9, [x8, #0x102]
00db6a10  ldr      x21, [x22]
00db6a14  cbz      x9, #0xdb6a40
00db6a18  ldr      x10, [x8, #0x98]
00db6a1c  mov      x11, xzr
00db6a20  add      x10, x10, #8
00db6a24  ldur     x12, [x10, #-8]
00db6a28  cmp      x12, x1
00db6a2c  b.eq     #0xdb6a50
00db6a30  add      x11, x11, #1
00db6a34  add      x10, x10, #0x10
00db6a38  cmp      x11, x9
00db6a3c  b.lo     #0xdb6a24
00db6a40  mov      w2, #8
00db6a44  mov      x0, x20
00db6a48  bl       #0xbb9ee0
00db6a4c  b        #0xdb6a60
00db6a50  ldr      w9, [x10]
00db6a54  add      w9, w9, #8
00db6a58  add      x8, x8, w9, uxtw #4
00db6a5c  add      x0, x8, #0x110
00db6a60  ldp      x8, x2, [x0]
00db6a64  mov      x0, x20
00db6a68  mov      x1, x21
00db6a6c  blr      x8
00db6a70  tbz      w0, #0, #0xdb6ad0
00db6a74  ldr      x0, [x23]
00db6a78  ldrb     w8, [x0, #0x10a]
00db6a7c  tbz      w8, #0, #0xdb6a90
00db6a80  ldr      w8, [x0, #0xbc]
00db6a84  cbnz     w8, #0xdb6a90
00db6a88  bl       #0xbd8b98
00db6a8c  ldr      x0, [x23]
00db6a90  ldr      x8, [x0, #0xa0]
00db6a94  ldr      x25, [x8, #0x230]
00db6a98  cbnz     x20, #0xdb6aa0
00db6a9c  bl       #0xbef9e8
00db6aa0  ldr      x1, [x22]
00db6aa4  mov      x2, xzr
00db6aa8  mov      x0, x20
00db6aac  bl       #0xfee960
00db6ab0  mov      x1, x0
00db6ab4  mov      x0, xzr
00db6ab8  mov      x2, xzr
00db6abc  bl       #0xff501c
00db6ac0  mov      w21, w0
00db6ac4  cbnz     x25, #0xdb6acc
00db6ac8  bl       #0xbef9e8
00db6acc  str      w21, [x25, #0x30]
00db6ad0  cbnz     x20, #0xdb6ad8
00db6ad4  bl       #0xbef9e8
00db6ad8  adrp     x22, #0x2abd000
00db6adc  ldr      x8, [x20]
00db6ae0  ldr      x1, [x24]
00db6ae4  ldr      x22, [x22, #0x808]
00db6ae8  ldrh     w9, [x8, #0x102]
00db6aec  ldr      x21, [x22]
00db6af0  cbz      x9, #0xdb6b1c
00db6af4  ldr      x10, [x8, #0x98]
00db6af8  mov      x11, xzr
00db6afc  add      x10, x10, #8
00db6b00  ldur     x12, [x10, #-8]
00db6b04  cmp      x12, x1
00db6b08  b.eq     #0xdb6b2c
00db6b0c  add      x11, x11, #1
00db6b10  add      x10, x10, #0x10
00db6b14  cmp      x11, x9
00db6b18  b.lo     #0xdb6b00
00db6b1c  mov      w2, #8
00db6b20  mov      x0, x20
00db6b24  bl       #0xbb9ee0
00db6b28  b        #0xdb6b3c
00db6b2c  ldr      w9, [x10]
00db6b30  add      w9, w9, #8
00db6b34  add      x8, x8, w9, uxtw #4
00db6b38  add      x0, x8, #0x110
00db6b3c  ldp      x8, x2, [x0]
00db6b40  mov      x0, x20
00db6b44  mov      x1, x21
00db6b48  blr      x8
00db6b4c  tbz      w0, #0, #0xdb6bac
00db6b50  ldr      x0, [x23]
00db6b54  ldrb     w8, [x0, #0x10a]
00db6b58  tbz      w8, #0, #0xdb6b6c
00db6b5c  ldr      w8, [x0, #0xbc]
00db6b60  cbnz     w8, #0xdb6b6c
00db6b64  bl       #0xbd8b98
00db6b68  ldr      x0, [x23]
00db6b6c  ldr      x8, [x0, #0xa0]
00db6b70  ldr      x25, [x8, #0x230]
00db6b74  cbnz     x20, #0xdb6b7c
00db6b78  bl       #0xbef9e8
00db6b7c  ldr      x1, [x22]
00db6b80  mov      x2, xzr
00db6b84  mov      x0, x20
00db6b88  bl       #0xfee960
00db6b8c  mov      x1, x0
00db6b90  mov      x0, xzr
00db6b94  mov      x2, xzr
00db6b98  bl       #0xff501c
00db6b9c  mov      w21, w0
00db6ba0  cbnz     x25, #0xdb6ba8
00db6ba4  bl       #0xbef9e8
00db6ba8  str      w21, [x25, #0x34]
00db6bac  cbnz     x20, #0xdb6bb4
00db6bb0  bl       #0xbef9e8
00db6bb4  adrp     x22, #0x2a9f000
00db6bb8  ldr      x8, [x20]
00db6bbc  ldr      x1, [x24]
00db6bc0  ldr      x22, [x22, #0x9b8]
00db6bc4  ldrh     w9, [x8, #0x102]
00db6bc8  ldr      x21, [x22]
00db6bcc  cbz      x9, #0xdb6bf8
00db6bd0  ldr      x10, [x8, #0x98]
00db6bd4  mov      x11, xzr
00db6bd8  add      x10, x10, #8
00db6bdc  ldur     x12, [x10, #-8]
00db6be0  cmp      x12, x1
00db6be4  b.eq     #0xdb6c08
00db6be8  add      x11, x11, #1
00db6bec  add      x10, x10, #0x10
00db6bf0  cmp      x11, x9
00db6bf4  b.lo     #0xdb6bdc
00db6bf8  mov      w2, #8
00db6bfc  mov      x0, x20
00db6c00  bl       #0xbb9ee0
00db6c04  b        #0xdb6c18
00db6c08  ldr      w9, [x10]
00db6c0c  add      w9, w9, #8
00db6c10  add      x8, x8, w9, uxtw #4
00db6c14  add      x0, x8, #0x110
00db6c18  ldp      x8, x2, [x0]
00db6c1c  mov      x0, x20
00db6c20  mov      x1, x21
00db6c24  blr      x8
00db6c28  tbz      w0, #0, #0xdb6c88
00db6c2c  ldr      x0, [x23]
00db6c30  ldrb     w8, [x0, #0x10a]
00db6c34  tbz      w8, #0, #0xdb6c48
00db6c38  ldr      w8, [x0, #0xbc]
00db6c3c  cbnz     w8, #0xdb6c48
00db6c40  bl       #0xbd8b98
00db6c44  ldr      x0, [x23]
00db6c48  ldr      x8, [x0, #0xa0]
00db6c4c  ldr      x25, [x8, #0x230]
00db6c50  cbnz     x20, #0xdb6c58
00db6c54  bl       #0xbef9e8
00db6c58  ldr      x1, [x22]
00db6c5c  mov      x2, xzr
00db6c60  mov      x0, x20
00db6c64  bl       #0xfee960
00db6c68  mov      x1, x0
00db6c6c  mov      x0, xzr
00db6c70  mov      x2, xzr
00db6c74  bl       #0xff501c
00db6c78  mov      w21, w0
00db6c7c  cbnz     x25, #0xdb6c84
00db6c80  bl       #0xbef9e8
00db6c84  str      w21, [x25, #0x38]
00db6c88  ldr      x0, [x23]
00db6c8c  ldrb     w8, [x0, #0x10a]
00db6c90  tbz      w8, #0, #0xdb6ca4
00db6c94  ldr      w8, [x0, #0xbc]
00db6c98  cbnz     w8, #0xdb6ca4
00db6c9c  bl       #0xbd8b98
00db6ca0  ldr      x0, [x23]
00db6ca4  ldr      x8, [x0, #0xa0]
00db6ca8  ldr      x21, [x8, #0x230]
00db6cac  cbnz     x21, #0xdb6cb4
00db6cb0  bl       #0xbef9e8
00db6cb4  str      wzr, [x21, #0x3c]
00db6cb8  cbnz     x20, #0xdb6cc0
00db6cbc  bl       #0xbef9e8
00db6cc0  adrp     x22, #0x2a44000
00db6cc4  ldr      x8, [x20]
00db6cc8  ldr      x1, [x24]
00db6ccc  ldr      x22, [x22, #0x560]
00db6cd0  ldrh     w9, [x8, #0x102]
00db6cd4  ldr      x21, [x22]
00db6cd8  cbz      x9, #0xdb6d04
00db6cdc  ldr      x10, [x8, #0x98]
00db6ce0  mov      x11, xzr
00db6ce4  add      x10, x10, #8
00db6ce8  ldur     x12, [x10, #-8]
00db6cec  cmp      x12, x1
00db6cf0  b.eq     #0xdb6d14
00db6cf4  add      x11, x11, #1
00db6cf8  add      x10, x10, #0x10
00db6cfc  cmp      x11, x9
00db6d00  b.lo     #0xdb6ce8
00db6d04  mov      w2, #8
00db6d08  mov      x0, x20
00db6d0c  bl       #0xbb9ee0
00db6d10  b        #0xdb6d24
00db6d14  ldr      w9, [x10]
00db6d18  add      w9, w9, #8
00db6d1c  add      x8, x8, w9, uxtw #4
00db6d20  add      x0, x8, #0x110
00db6d24  ldp      x8, x2, [x0]
00db6d28  mov      x0, x20
00db6d2c  mov      x1, x21
00db6d30  blr      x8
00db6d34  tbz      w0, #0, #0xdb6d94
00db6d38  ldr      x0, [x23]
00db6d3c  ldrb     w8, [x0, #0x10a]
00db6d40  tbz      w8, #0, #0xdb6d54
00db6d44  ldr      w8, [x0, #0xbc]
00db6d48  cbnz     w8, #0xdb6d54
00db6d4c  bl       #0xbd8b98
00db6d50  ldr      x0, [x23]
00db6d54  ldr      x8, [x0, #0xa0]
00db6d58  ldr      x23, [x8, #0x230]
00db6d5c  cbnz     x20, #0xdb6d64
00db6d60  bl       #0xbef9e8
00db6d64  ldr      x1, [x22]
00db6d68  mov      x2, xzr
00db6d6c  mov      x0, x20
00db6d70  bl       #0xfee960
00db6d74  mov      x1, x0
00db6d78  mov      x0, xzr
00db6d7c  mov      x2, xzr
00db6d80  bl       #0xff501c
00db6d84  mov      w21, w0
00db6d88  cbnz     x23, #0xdb6d90
00db6d8c  bl       #0xbef9e8
00db6d90  str      w21, [x23, #0x3c]
00db6d94  cbnz     x20, #0xdb6d9c
00db6d98  bl       #0xbef9e8
00db6d9c  adrp     x22, #0x2a82000
00db6da0  ldr      x8, [x20]
00db6da4  ldr      x1, [x24]
00db6da8  ldr      x22, [x22, #0x948]
00db6dac  ldrh     w9, [x8, #0x102]
00db6db0  ldr      x21, [x22]
00db6db4  cbz      x9, #0xdb6de0
00db6db8  ldr      x10, [x8, #0x98]
00db6dbc  mov      x11, xzr
00db6dc0  add      x10, x10, #8
00db6dc4  ldur     x12, [x10, #-8]
00db6dc8  cmp      x12, x1
00db6dcc  b.eq     #0xdb6df0
00db6dd0  add      x11, x11, #1
00db6dd4  add      x10, x10, #0x10
00db6dd8  cmp      x11, x9
00db6ddc  b.lo     #0xdb6dc4
00db6de0  mov      w2, #8
00db6de4  mov      x0, x20
00db6de8  bl       #0xbb9ee0
00db6dec  b        #0xdb6e00
00db6df0  ldr      w9, [x10]
00db6df4  add      w9, w9, #8
00db6df8  add      x8, x8, w9, uxtw #4
00db6dfc  add      x0, x8, #0x110
00db6e00  ldp      x8, x2, [x0]
00db6e04  mov      x0, x20
00db6e08  mov      x1, x21
00db6e0c  blr      x8
00db6e10  tbz      w0, #0, #0xdb6e80
00db6e14  cbnz     x20, #0xdb6e1c
00db6e18  bl       #0xbef9e8
00db6e1c  ldr      x1, [x22]
00db6e20  mov      x2, xzr
00db6e24  mov      x0, x20
00db6e28  bl       #0xfee960
00db6e2c  mov      x1, x0
00db6e30  mov      x0, xzr
00db6e34  mov      x2, xzr
00db6e38  bl       #0xff4f84
00db6e3c  adrp     x21, #0x2a4a000
00db6e40  ldr      x21, [x21, #0x5a0]
00db6e44  mov      v8.16b, v0.16b
00db6e48  ldr      x0, [x21]
00db6e4c  ldrb     w8, [x0, #0x10a]
00db6e50  tbz      w8, #0, #0xdb6e64
00db6e54  ldr      w8, [x0, #0xbc]
00db6e58  cbnz     w8, #0xdb6e64
00db6e5c  bl       #0xbd8b98
00db6e60  ldr      x0, [x21]
00db6e64  ldr      x8, [x0, #0xa0]
00db6e68  fcvtzs   x22, d8
00db6e6c  ldr      x21, [x8, #0x230]
00db6e70  cbnz     x21, #0xdb6e78
00db6e74  bl       #0xbef9e8
00db6e78  str      x22, [x21, #0x40]
00db6e7c  b        #0xdb6eb8
00db6e80  adrp     x21, #0x2a4a000
00db6e84  ldr      x21, [x21, #0x5a0]
00db6e88  ldr      x0, [x21]
00db6e8c  ldrb     w8, [x0, #0x10a]
00db6e90  tbz      w8, #0, #0xdb6ea4
00db6e94  ldr      w8, [x0, #0xbc]
00db6e98  cbnz     w8, #0xdb6ea4
00db6e9c  bl       #0xbd8b98
00db6ea0  ldr      x0, [x21]
00db6ea4  ldr      x8, [x0, #0xa0]
00db6ea8  ldr      x21, [x8, #0x230]
00db6eac  cbnz     x21, #0xdb6eb4
00db6eb0  bl       #0xbef9e8
00db6eb4  str      xzr, [x21, #0x40]
00db6eb8  cbnz     x20, #0xdb6ec0
00db6ebc  bl       #0xbef9e8
00db6ec0  adrp     x22, #0x2a65000
00db6ec4  ldr      x8, [x20]
00db6ec8  ldr      x1, [x24]
00db6ecc  ldr      x22, [x22, #0x360]
00db6ed0  ldrh     w9, [x8, #0x102]
00db6ed4  ldr      x21, [x22]
00db6ed8  cbz      x9, #0xdb6f04
00db6edc  ldr      x10, [x8, #0x98]
00db6ee0  mov      x11, xzr
00db6ee4  add      x10, x10, #8
00db6ee8  ldur     x12, [x10, #-8]
00db6eec  cmp      x12, x1
00db6ef0  b.eq     #0xdb6f14
00db6ef4  add      x11, x11, #1
00db6ef8  add      x10, x10, #0x10
00db6efc  cmp      x11, x9
00db6f00  b.lo     #0xdb6ee8
00db6f04  mov      w2, #8
00db6f08  mov      x0, x20
00db6f0c  bl       #0xbb9ee0
00db6f10  b        #0xdb6f24
00db6f14  ldr      w9, [x10]
00db6f18  add      w9, w9, #8
00db6f1c  add      x8, x8, w9, uxtw #4
00db6f20  add      x0, x8, #0x110
00db6f24  ldp      x8, x2, [x0]
00db6f28  mov      x0, x20
00db6f2c  mov      x1, x21
00db6f30  blr      x8
00db6f34  tbz      w0, #0, #0xdb6f9c
00db6f38  cbnz     x20, #0xdb6f40
00db6f3c  bl       #0xbef9e8
00db6f40  ldr      x1, [x22]
00db6f44  mov      x2, xzr
00db6f48  mov      x0, x20
00db6f4c  bl       #0xfee960
00db6f50  mov      x1, x0
00db6f54  bl       #0xdb452c
00db6f58  adrp     x21, #0x2a4a000
00db6f5c  ldr      x21, [x21, #0x5a0]
00db6f60  mov      w20, w0
00db6f64  ldr      x8, [x21]
00db6f68  ldrb     w9, [x8, #0x10a]
00db6f6c  tbz      w9, #0, #0xdb6f84
00db6f70  ldr      w9, [x8, #0xbc]
00db6f74  cbnz     w9, #0xdb6f84
00db6f78  mov      x0, x8
00db6f7c  bl       #0xbd8b98
00db6f80  ldr      x8, [x21]
00db6f84  ldr      x8, [x8, #0xa0]
00db6f88  ldr      x21, [x8, #0x230]
00db6f8c  cbnz     x21, #0xdb6f94
00db6f90  bl       #0xbef9e8
00db6f94  str      w20, [x21, #0x48]
00db6f98  b        #0xdb6fd4
00db6f9c  adrp     x20, #0x2a4a000
00db6fa0  ldr      x20, [x20, #0x5a0]
00db6fa4  ldr      x0, [x20]
00db6fa8  ldrb     w8, [x0, #0x10a]
00db6fac  tbz      w8, #0, #0xdb6fc0
00db6fb0  ldr      w8, [x0, #0xbc]
00db6fb4  cbnz     w8, #0xdb6fc0
00db6fb8  bl       #0xbd8b98
00db6fbc  ldr      x0, [x20]
00db6fc0  ldr      x8, [x0, #0xa0]
00db6fc4  ldr      x20, [x8, #0x230]
00db6fc8  cbnz     x20, #0xdb6fd0
00db6fcc  bl       #0xbef9e8
00db6fd0  str      wzr, [x20, #0x48]
00db6fd4  cbnz     x19, #0xdb6fdc
00db6fd8  bl       #0xbef9e8
00db6fdc  adrp     x21, #0x2a4c000
00db6fe0  ldr      x8, [x19]
00db6fe4  ldr      x1, [x24]
00db6fe8  ldr      x21, [x21, #0x950]
00db6fec  ldrh     w9, [x8, #0x102]
00db6ff0  ldr      x20, [x21]
00db6ff4  cbz      x9, #0xdb7020
00db6ff8  ldr      x10, [x8, #0x98]
00db6ffc  mov      x11, xzr
00db7000  add      x10, x10, #8
00db7004  ldur     x12, [x10, #-8]
00db7008  cmp      x12, x1
00db700c  b.eq     #0xdb7030
00db7010  add      x11, x11, #1
00db7014  add      x10, x10, #0x10
00db7018  cmp      x11, x9
00db701c  b.lo     #0xdb7004
00db7020  mov      w2, #8
00db7024  mov      x0, x19
00db7028  bl       #0xbb9ee0
00db702c  b        #0xdb7040
00db7030  ldr      w9, [x10]
00db7034  add      w9, w9, #8
00db7038  add      x8, x8, w9, uxtw #4
00db703c  add      x0, x8, #0x110
00db7040  ldp      x8, x2, [x0]
00db7044  mov      x0, x19
00db7048  mov      x1, x20
00db704c  blr      x8
00db7050  tbz      w0, #0, #0xdb70b0
00db7054  adrp     x20, #0x2a4a000
00db7058  ldr      x20, [x20, #0x5a0]
00db705c  ldr      x0, [x20]
00db7060  ldrb     w8, [x0, #0x10a]
00db7064  tbz      w8, #0, #0xdb7078
00db7068  ldr      w8, [x0, #0xbc]
00db706c  cbnz     w8, #0xdb7078
00db7070  bl       #0xbd8b98
00db7074  ldr      x0, [x20]
00db7078  ldr      x8, [x0, #0xa0]
00db707c  ldr      x22, [x8, #0x230]
00db7080  cbnz     x19, #0xdb7088
00db7084  bl       #0xbef9e8
00db7088  ldr      x1, [x21]
00db708c  mov      x2, xzr
00db7090  mov      x0, x19
00db7094  bl       #0xfee960
00db7098  mov      x1, x0
00db709c  bl       #0xdb452c
00db70a0  mov      w20, w0
00db70a4  cbnz     x22, #0xdb70ac
00db70a8  bl       #0xbef9e8
00db70ac  str      w20, [x22, #0x108]
00db70b0  cbnz     x19, #0xdb70b8
00db70b4  bl       #0xbef9e8
00db70b8  adrp     x21, #0x2a32000
00db70bc  ldr      x8, [x19]
00db70c0  ldr      x1, [x24]
00db70c4  ldr      x21, [x21, #0xaf8]
00db70c8  ldrh     w9, [x8, #0x102]
00db70cc  ldr      x20, [x21]
00db70d0  cbz      x9, #0xdb70fc
00db70d4  ldr      x10, [x8, #0x98]
00db70d8  mov      x11, xzr
00db70dc  add      x10, x10, #8
00db70e0  ldur     x12, [x10, #-8]
00db70e4  cmp      x12, x1
00db70e8  b.eq     #0xdb710c
00db70ec  add      x11, x11, #1
00db70f0  add      x10, x10, #0x10
00db70f4  cmp      x11, x9
00db70f8  b.lo     #0xdb70e0
00db70fc  mov      w2, #8
00db7100  mov      x0, x19
00db7104  bl       #0xbb9ee0
00db7108  b        #0xdb711c
00db710c  ldr      w9, [x10]
00db7110  add      w9, w9, #8
00db7114  add      x8, x8, w9, uxtw #4
00db7118  add      x0, x8, #0x110
00db711c  ldp      x8, x2, [x0]
00db7120  mov      x0, x19
00db7124  mov      x1, x20
00db7128  blr      x8
00db712c  tbz      w0, #0, #0xdb718c
00db7130  adrp     x20, #0x2a4a000
00db7134  ldr      x20, [x20, #0x5a0]
00db7138  ldr      x0, [x20]
00db713c  ldrb     w8, [x0, #0x10a]
00db7140  tbz      w8, #0, #0xdb7154
00db7144  ldr      w8, [x0, #0xbc]
00db7148  cbnz     w8, #0xdb7154
00db714c  bl       #0xbd8b98
00db7150  ldr      x0, [x20]
00db7154  ldr      x8, [x0, #0xa0]
00db7158  ldr      x22, [x8, #0x230]
00db715c  cbnz     x19, #0xdb7164
00db7160  bl       #0xbef9e8
00db7164  ldr      x1, [x21]
00db7168  mov      x2, xzr
00db716c  mov      x0, x19
00db7170  bl       #0xfee960
00db7174  mov      x1, x0
00db7178  bl       #0xdb452c
00db717c  mov      w20, w0
00db7180  cbnz     x22, #0xdb7188
00db7184  bl       #0xbef9e8
00db7188  str      w20, [x22, #0x10c]
00db718c  cbnz     x19, #0xdb7194
00db7190  bl       #0xbef9e8
00db7194  adrp     x21, #0x2a39000
00db7198  ldr      x8, [x19]
00db719c  ldr      x1, [x24]
00db71a0  ldr      x21, [x21, #0x248]
00db71a4  ldrh     w9, [x8, #0x102]
00db71a8  ldr      x20, [x21]
00db71ac  cbz      x9, #0xdb71d8
00db71b0  ldr      x10, [x8, #0x98]
00db71b4  mov      x11, xzr
00db71b8  add      x10, x10, #8
00db71bc  ldur     x12, [x10, #-8]
00db71c0  cmp      x12, x1
00db71c4  b.eq     #0xdb71e8
00db71c8  add      x11, x11, #1
00db71cc  add      x10, x10, #0x10
00db71d0  cmp      x11, x9
00db71d4  b.lo     #0xdb71bc
00db71d8  mov      w2, #8
00db71dc  mov      x0, x19
00db71e0  bl       #0xbb9ee0
00db71e4  b        #0xdb71f8
00db71e8  ldr      w9, [x10]
00db71ec  add      w9, w9, #8
00db71f0  add      x8, x8, w9, uxtw #4
00db71f4  add      x0, x8, #0x110
00db71f8  ldp      x8, x2, [x0]
00db71fc  mov      x0, x19
00db7200  mov      x1, x20
00db7204  blr      x8
00db7208  tbz      w0, #0, #0xdb7268
00db720c  adrp     x20, #0x2a4a000
00db7210  ldr      x20, [x20, #0x5a0]
00db7214  ldr      x0, [x20]
00db7218  ldrb     w8, [x0, #0x10a]
00db721c  tbz      w8, #0, #0xdb7230
00db7220  ldr      w8, [x0, #0xbc]
00db7224  cbnz     w8, #0xdb7230
00db7228  bl       #0xbd8b98
00db722c  ldr      x0, [x20]
00db7230  ldr      x8, [x0, #0xa0]
00db7234  ldr      x22, [x8, #0x230]
00db7238  cbnz     x19, #0xdb7240
00db723c  bl       #0xbef9e8
00db7240  ldr      x1, [x21]
00db7244  mov      x2, xzr
00db7248  mov      x0, x19
00db724c  bl       #0xfee960
00db7250  mov      x1, x0
00db7254  bl       #0xdb452c
00db7258  mov      w20, w0
00db725c  cbnz     x22, #0xdb7264
00db7260  bl       #0xbef9e8
00db7264  str      w20, [x22, #0x110]
00db7268  cbnz     x19, #0xdb7270
00db726c  bl       #0xbef9e8
00db7270  adrp     x21, #0x2a9d000
00db7274  ldr      x8, [x19]
00db7278  ldr      x1, [x24]
00db727c  ldr      x21, [x21, #0xc38]
00db7280  ldrh     w9, [x8, #0x102]
00db7284  ldr      x20, [x21]
00db7288  cbz      x9, #0xdb72b4
00db728c  ldr      x10, [x8, #0x98]
00db7290  mov      x11, xzr
00db7294  add      x10, x10, #8
00db7298  ldur     x12, [x10, #-8]
00db729c  cmp      x12, x1
00db72a0  b.eq     #0xdb72c4
00db72a4  add      x11, x11, #1
00db72a8  add      x10, x10, #0x10
00db72ac  cmp      x11, x9
00db72b0  b.lo     #0xdb7298
00db72b4  mov      w2, #8
00db72b8  mov      x0, x19
00db72bc  bl       #0xbb9ee0
00db72c0  b        #0xdb72d4
00db72c4  ldr      w9, [x10]
00db72c8  add      w9, w9, #8
00db72cc  add      x8, x8, w9, uxtw #4
00db72d0  add      x0, x8, #0x110
00db72d4  ldp      x8, x2, [x0]
00db72d8  mov      x0, x19
00db72dc  mov      x1, x20
00db72e0  blr      x8
00db72e4  tbz      w0, #0, #0xdb7308
00db72e8  cbnz     x19, #0xdb72f0
00db72ec  bl       #0xbef9e8
00db72f0  ldr      x1, [x21]
00db72f4  mov      x2, xzr
00db72f8  mov      x0, x19
00db72fc  bl       #0xfee960
00db7300  mov      x1, x0
00db7304  bl       #0xdb5c50
00db7308  cbz      x19, #0xdb7338
00db730c  adrp     x8, #0x2a57000
00db7310  ldr      x8, [x8, #0x130]
00db7314  mov      x2, xzr
00db7318  mov      x0, x19
00db731c  ldr      x1, [x8]
00db7320  bl       #0xfee960
00db7324  mov      x1, x0
00db7328  bl       #0xdb45c4
00db732c  mov      x1, x0
00db7330  bl       #0xdb5a04
00db7334  b        #0xdb7368
00db7338  bl       #0xbef9e8
00db733c  adrp     x8, #0x2a57000
00db7340  ldr      x8, [x8, #0x130]
00db7344  mov      x0, xzr
00db7348  mov      x2, xzr
00db734c  ldr      x1, [x8]
00db7350  bl       #0xfee960
00db7354  mov      x1, x0
00db7358  bl       #0xdb45c4
00db735c  mov      x1, x0
00db7360  bl       #0xdb5a04
00db7364  bl       #0xbef9e8
00db7368  adrp     x8, #0x2aaa000
00db736c  ldr      x8, [x8, #0xd60]
00db7370  mov      x2, xzr
00db7374  mov      x0, x19
00db7378  ldr      x1, [x8]
00db737c  bl       #0xfee960
00db7380  mov      x1, x0
00db7384  bl       #0xdb45c4
00db7388  adrp     x25, #0x2a4a000
00db738c  adrp     x26, #0x2a7a000
00db7390  ldr      x25, [x25, #0x5a0]
00db7394  ldr      x26, [x26, #0xf10]
00db7398  mov      x20, x0
00db739c  mov      w21, wzr
00db73a0  b        #0xdb73a8
00db73a4  add      w21, w21, #1
00db73a8  cbnz     x20, #0xdb73b0
00db73ac  bl       #0xbef9e8
00db73b0  mov      x1, xzr
00db73b4  mov      x0, x20
00db73b8  bl       #0xff2bd8
00db73bc  cmp      w21, w0
00db73c0  b.ge     #0xdb7518
00db73c4  ldr      x0, [x25]
00db73c8  ldrb     w8, [x0, #0x10a]
00db73cc  tbz      w8, #0, #0xdb73e0
00db73d0  ldr      w8, [x0, #0xbc]
00db73d4  cbnz     w8, #0xdb73e0
00db73d8  bl       #0xbd8b98
00db73dc  ldr      x0, [x25]
00db73e0  ldr      x8, [x0, #0xa0]
00db73e4  ldr      x22, [x8, #0x230]
00db73e8  cbnz     x22, #0xdb73f0
00db73ec  bl       #0xbef9e8
00db73f0  ldr      x22, [x22, #0x120]
00db73f4  cbnz     x22, #0xdb73fc
00db73f8  bl       #0xbef9e8
00db73fc  ldr      w8, [x22, #0x18]
00db7400  cmp      w21, w8
00db7404  b.ge     #0xdb7518
00db7408  cbnz     x20, #0xdb7410
00db740c  bl       #0xbef9e8
00db7410  mov      x2, xzr
00db7414  mov      x0, x20
00db7418  mov      w1, w21
00db741c  bl       #0xff4b40
00db7420  mov      x1, x0
00db7424  mov      x0, xzr
00db7428  mov      x2, xzr
00db742c  bl       #0xff501c
00db7430  ldr      x8, [x25]
00db7434  mov      w22, w0
00db7438  ldrb     w9, [x8, #0x10a]
00db743c  tbz      w9, #0, #0xdb7454
00db7440  ldr      w9, [x8, #0xbc]
00db7444  cbnz     w9, #0xdb7454
00db7448  mov      x0, x8
00db744c  bl       #0xbd8b98
00db7450  ldr      x8, [x25]
00db7454  ldr      x8, [x8, #0xa0]
00db7458  ldr      x23, [x8, #0x230]
00db745c  cbnz     x23, #0xdb7464
00db7460  bl       #0xbef9e8
00db7464  ldr      x23, [x23, #0x120]
00db7468  cbnz     x23, #0xdb7470
00db746c  bl       #0xbef9e8
00db7470  ldr      w8, [x23, #0x18]
00db7474  sxtw     x27, w21
00db7478  cmp      w21, w8
00db747c  b.lo     #0xdb748c
00db7480  bl       #0xbf05d4
00db7484  mov      x1, xzr
00db7488  bl       #0xbef8cc
00db748c  add      x8, x23, x27, lsl #3
00db7490  ldr      x23, [x8, #0x20]
00db7494  cbnz     x23, #0xdb749c
00db7498  bl       #0xbef9e8
00db749c  str      w22, [x23, #0x10]
00db74a0  ldr      x8, [x25]
00db74a4  ldr      x8, [x8, #0xa0]
00db74a8  ldr      x23, [x8, #0x230]
00db74ac  cbnz     x23, #0xdb74b4
00db74b0  bl       #0xbef9e8
00db74b4  mov      x3, xzr
00db74b8  mov      w2, #1
00db74bc  mov      x0, x23
00db74c0  mov      w1, w22
00db74c4  bl       #0x19d99f4
00db74c8  mov      x22, x0
00db74cc  cbz      x22, #0xdb73a4
00db74d0  mov      x1, xzr
00db74d4  mov      x0, x22
00db74d8  bl       #0xd025d0
00db74dc  and      w8, w0, #1
00db74e0  tbnz     w8, #0, #0xdb73a4
00db74e4  ldr      x1, [x26]
00db74e8  mov      x0, xzr
00db74ec  mov      x2, xzr
00db74f0  bl       #0x10bd3d4
00db74f4  mov      x2, xzr
00db74f8  mov      w1, #1
00db74fc  mov      x0, x22
00db7500  bl       #0xd09ad0
00db7504  mov      x2, xzr
00db7508  mov      w1, #1
00db750c  mov      x0, x22
00db7510  bl       #0xd09ab4
00db7514  b        #0xdb73a4
00db7518  ldr      x0, [x25]
00db751c  ldrb     w8, [x0, #0x10a]
00db7520  tbz      w8, #0, #0xdb7534
00db7524  ldr      w8, [x0, #0xbc]
00db7528  cbnz     w8, #0xdb7534
00db752c  bl       #0xbd8b98
00db7530  ldr      x0, [x25]
00db7534  ldr      x8, [x0, #0xa0]
00db7538  ldr      x20, [x8, #0x230]
00db753c  cbnz     x20, #0xdb7544
00db7540  bl       #0xbef9e8
00db7544  mov      x1, xzr
00db7548  mov      x0, x20
00db754c  bl       #0x19dbfd4
00db7550  cbnz     x19, #0xdb7558
00db7554  bl       #0xbef9e8
00db7558  adrp     x21, #0x2a51000
00db755c  ldr      x8, [x19]
00db7560  ldr      x1, [x24]
00db7564  ldr      x21, [x21, #0xf0]
00db7568  ldrh     w9, [x8, #0x102]
00db756c  ldr      x20, [x21]
00db7570  cbz      x9, #0xdb759c
00db7574  ldr      x10, [x8, #0x98]
00db7578  mov      x11, xzr
00db757c  add      x10, x10, #8
00db7580  ldur     x12, [x10, #-8]
00db7584  cmp      x12, x1
00db7588  b.eq     #0xdb75ac
00db758c  add      x11, x11, #1
00db7590  add      x10, x10, #0x10
00db7594  cmp      x11, x9
00db7598  b.lo     #0xdb7580
00db759c  mov      w2, #8
00db75a0  mov      x0, x19
00db75a4  bl       #0xbb9ee0
00db75a8  b        #0xdb75bc
00db75ac  ldr      w9, [x10]
00db75b0  add      w9, w9, #8
00db75b4  add      x8, x8, w9, uxtw #4
00db75b8  add      x0, x8, #0x110
00db75bc  ldp      x8, x2, [x0]
00db75c0  mov      x0, x19
00db75c4  mov      x1, x20
00db75c8  blr      x8
00db75cc  tbz      w0, #0, #0xdb7770
00db75d0  cbnz     x19, #0xdb75d8
00db75d4  bl       #0xbef9e8
00db75d8  ldr      x1, [x21]
00db75dc  mov      x2, xzr
00db75e0  mov      x0, x19
00db75e4  bl       #0xfee960
00db75e8  mov      x1, x0
00db75ec  bl       #0xdb45c4
00db75f0  mov      x20, x0
00db75f4  mov      w21, wzr
00db75f8  b        #0xdb7600
00db75fc  add      w21, w21, #1
00db7600  cbnz     x20, #0xdb7608
00db7604  bl       #0xbef9e8
00db7608  mov      x1, xzr
00db760c  mov      x0, x20
00db7610  bl       #0xff2bd8
00db7614  cmp      w21, w0
00db7618  b.ge     #0xdb7770
00db761c  ldr      x0, [x25]
00db7620  ldrb     w8, [x0, #0x10a]
00db7624  tbz      w8, #0, #0xdb7638
00db7628  ldr      w8, [x0, #0xbc]
00db762c  cbnz     w8, #0xdb7638
00db7630  bl       #0xbd8b98
00db7634  ldr      x0, [x25]
00db7638  ldr      x8, [x0, #0xa0]
00db763c  ldr      x22, [x8, #0x230]
00db7640  cbnz     x22, #0xdb7648
00db7644  bl       #0xbef9e8
00db7648  ldr      x22, [x22, #0x128]
00db764c  cbnz     x22, #0xdb7654
00db7650  bl       #0xbef9e8
00db7654  ldr      w8, [x22, #0x18]
00db7658  cmp      w21, w8
00db765c  b.ge     #0xdb7770
00db7660  cbnz     x20, #0xdb7668
00db7664  bl       #0xbef9e8
00db7668  mov      x2, xzr
00db766c  mov      x0, x20
00db7670  mov      w1, w21
00db7674  bl       #0xff4b40
00db7678  mov      x1, x0
00db767c  mov      x0, xzr
00db7680  mov      x2, xzr
00db7684  bl       #0xff501c
00db7688  ldr      x8, [x25]
00db768c  mov      w22, w0
00db7690  ldrb     w9, [x8, #0x10a]
00db7694  tbz      w9, #0, #0xdb76ac
00db7698  ldr      w9, [x8, #0xbc]
00db769c  cbnz     w9, #0xdb76ac
00db76a0  mov      x0, x8
00db76a4  bl       #0xbd8b98
00db76a8  ldr      x8, [x25]
00db76ac  ldr      x8, [x8, #0xa0]
00db76b0  ldr      x23, [x8, #0x230]
00db76b4  cbnz     x23, #0xdb76bc
00db76b8  bl       #0xbef9e8
00db76bc  ldr      x23, [x23, #0x128]
00db76c0  cbnz     x23, #0xdb76c8
00db76c4  bl       #0xbef9e8
00db76c8  ldr      w8, [x23, #0x18]
00db76cc  sxtw     x27, w21
00db76d0  cmp      w21, w8
00db76d4  b.lo     #0xdb76e4
00db76d8  bl       #0xbf05d4
00db76dc  mov      x1, xzr
00db76e0  bl       #0xbef8cc
00db76e4  add      x8, x23, x27, lsl #3
00db76e8  ldr      x23, [x8, #0x20]
00db76ec  cbnz     x23, #0xdb76f4
00db76f0  bl       #0xbef9e8
00db76f4  str      w22, [x23, #0x10]
00db76f8  ldr      x8, [x25]
00db76fc  ldr      x8, [x8, #0xa0]
00db7700  ldr      x23, [x8, #0x230]
00db7704  cbnz     x23, #0xdb770c
00db7708  bl       #0xbef9e8
00db770c  mov      x3, xzr
00db7710  mov      w2, #1
00db7714  mov      x0, x23
00db7718  mov      w1, w22
00db771c  bl       #0x19d99f4
00db7720  mov      x22, x0
00db7724  cbz      x22, #0xdb75fc
00db7728  mov      x1, xzr
00db772c  mov      x0, x22
00db7730  bl       #0xd025d0
00db7734  and      w8, w0, #1
00db7738  tbnz     w8, #0, #0xdb75fc
00db773c  ldr      x1, [x26]
00db7740  mov      x0, xzr
00db7744  mov      x2, xzr
00db7748  bl       #0x10bd3d4
00db774c  mov      x2, xzr
00db7750  mov      w1, #1
00db7754  mov      x0, x22
00db7758  bl       #0xd09ad0
00db775c  mov      x2, xzr
00db7760  mov      w1, #1
00db7764  mov      x0, x22
00db7768  bl       #0xd09ab4
00db776c  b        #0xdb75fc
00db7770  ldr      x0, [x25]
00db7774  ldrb     w8, [x0, #0x10a]
00db7778  tbz      w8, #0, #0xdb778c
00db777c  ldr      w8, [x0, #0xbc]
00db7780  cbnz     w8, #0xdb778c
00db7784  bl       #0xbd8b98
00db7788  ldr      x0, [x25]
00db778c  ldr      x8, [x0, #0xa0]
00db7790  ldr      x20, [x8, #0x230]
00db7794  cbnz     x20, #0xdb779c
00db7798  bl       #0xbef9e8
00db779c  mov      x1, xzr
00db77a0  mov      x0, x20
00db77a4  bl       #0x19dc260
00db77a8  cbnz     x19, #0xdb77b0
00db77ac  bl       #0xbef9e8
00db77b0  adrp     x21, #0x2aae000
00db77b4  ldr      x8, [x19]
00db77b8  ldr      x1, [x24]
00db77bc  ldr      x21, [x21, #0x380]
00db77c0  ldrh     w9, [x8, #0x102]
00db77c4  ldr      x20, [x21]
00db77c8  cbz      x9, #0xdb77f4
00db77cc  ldr      x10, [x8, #0x98]
00db77d0  mov      x11, xzr
00db77d4  add      x10, x10, #8
00db77d8  ldur     x12, [x10, #-8]
00db77dc  cmp      x12, x1
00db77e0  b.eq     #0xdb7804
00db77e4  add      x11, x11, #1
00db77e8  add      x10, x10, #0x10
00db77ec  cmp      x11, x9
00db77f0  b.lo     #0xdb77d8
00db77f4  mov      w2, #8
00db77f8  mov      x0, x19
00db77fc  bl       #0xbb9ee0
00db7800  b        #0xdb7814
00db7804  ldr      w9, [x10]
00db7808  add      w9, w9, #8
00db780c  add      x8, x8, w9, uxtw #4
00db7810  add      x0, x8, #0x110
00db7814  ldp      x8, x2, [x0]
00db7818  mov      x0, x19
00db781c  mov      x1, x20
00db7820  blr      x8
00db7824  tbz      w0, #0, #0xdb7b7c
00db7828  cbnz     x19, #0xdb7830
00db782c  bl       #0xbef9e8
00db7830  ldr      x1, [x21]
00db7834  mov      x2, xzr
00db7838  mov      x0, x19
00db783c  bl       #0xfee960
00db7840  mov      x1, x0
00db7844  bl       #0xdb45c4
00db7848  mov      x20, x0
00db784c  mov      w21, wzr
00db7850  b        #0xdb785c
00db7854  add      w21, w21, #1
00db7858  str      x22, [x23, #0x18]
00db785c  cbnz     x20, #0xdb7864
00db7860  bl       #0xbef9e8
00db7864  mov      x1, xzr
00db7868  mov      x0, x20
00db786c  bl       #0xff2bd8
00db7870  cmp      w21, w0
00db7874  b.ge     #0xdb7b7c
00db7878  ldr      x0, [x25]
00db787c  ldrb     w8, [x0, #0x10a]
00db7880  tbz      w8, #0, #0xdb7894
00db7884  ldr      w8, [x0, #0xbc]
00db7888  cbnz     w8, #0xdb7894
00db788c  bl       #0xbd8b98
00db7890  ldr      x0, [x25]
00db7894  ldr      x8, [x0, #0xa0]
00db7898  ldr      x22, [x8, #0x230]
00db789c  cbnz     x22, #0xdb78a4
00db78a0  bl       #0xbef9e8
00db78a4  ldr      x22, [x22, #0x130]
00db78a8  cbnz     x22, #0xdb78b0
00db78ac  bl       #0xbef9e8
00db78b0  ldr      w8, [x22, #0x18]
00db78b4  cmp      w21, w8
00db78b8  b.ge     #0xdb7b7c
00db78bc  cbnz     x20, #0xdb78c4
00db78c0  bl       #0xbef9e8
00db78c4  mov      x2, xzr
00db78c8  mov      x0, x20
00db78cc  mov      w1, w21
00db78d0  bl       #0xff4b40
00db78d4  mov      x1, x0
00db78d8  mov      x0, xzr
00db78dc  mov      x2, xzr
00db78e0  bl       #0xff501c
00db78e4  ldr      x8, [x25]
00db78e8  mov      w22, w0
00db78ec  ldrb     w9, [x8, #0x10a]
00db78f0  tbz      w9, #0, #0xdb7908
00db78f4  ldr      w9, [x8, #0xbc]
00db78f8  cbnz     w9, #0xdb7908
00db78fc  mov      x0, x8
00db7900  bl       #0xbd8b98
00db7904  ldr      x8, [x25]
00db7908  ldr      x8, [x8, #0xa0]
00db790c  ldr      x23, [x8, #0x230]
00db7910  cbnz     x23, #0xdb7918
00db7914  bl       #0xbef9e8
00db7918  ldr      x23, [x23, #0x130]
00db791c  cbnz     x23, #0xdb7924
00db7920  bl       #0xbef9e8
00db7924  ldr      w8, [x23, #0x18]
00db7928  sxtw     x26, w21
00db792c  cmp      w21, w8
00db7930  b.lo     #0xdb7940
00db7934  bl       #0xbf05d4
00db7938  mov      x1, xzr
00db793c  bl       #0xbef8cc
00db7940  add      x8, x23, x26, lsl #3
00db7944  ldr      x23, [x8, #0x20]
00db7948  cbnz     x23, #0xdb7950
00db794c  bl       #0xbef9e8
00db7950  mov      x2, xzr
00db7954  mov      x0, x23
00db7958  mov      w1, w22
00db795c  bl       #0x116c858
00db7960  ldr      x8, [x25]
00db7964  ldr      x8, [x8, #0xa0]
00db7968  ldr      x22, [x8, #0x230]
00db796c  cbnz     x22, #0xdb7974
00db7970  bl       #0xbef9e8
00db7974  ldr      x22, [x22, #0x130]
00db7978  cbnz     x22, #0xdb7980
00db797c  bl       #0xbef9e8
00db7980  ldr      w8, [x22, #0x18]
00db7984  cmp      w21, w8
00db7988  b.lo     #0xdb7998
00db798c  bl       #0xbf05d4
00db7990  mov      x1, xzr
00db7994  bl       #0xbef8cc
00db7998  add      x8, x22, x26, lsl #3
00db799c  ldr      x22, [x8, #0x20]
00db79a0  cbnz     x22, #0xdb79a8
00db79a4  bl       #0xbef9e8
00db79a8  mov      x1, xzr
00db79ac  mov      x0, x22
00db79b0  bl       #0x116cb94
00db79b4  ldr      x8, [x25]
00db79b8  mov      x22, x0
00db79bc  add      x9, x8, #0x109
00db79c0  ldrh     w9, [x9]
00db79c4  and      w9, w9, #0x100
00db79c8  and      w9, w9, #0xffff
00db79cc  cbz      x22, #0xdb7aa8
00db79d0  cbz      w9, #0xdb79e8
00db79d4  ldr      w9, [x8, #0xbc]
00db79d8  cbnz     w9, #0xdb79e8
00db79dc  mov      x0, x8
00db79e0  bl       #0xbd8b98
00db79e4  ldr      x8, [x25]
00db79e8  ldr      x8, [x8, #0xa0]
00db79ec  ldr      x23, [x8, #0x230]
00db79f0  cbnz     x23, #0xdb79f8
00db79f4  bl       #0xbef9e8
00db79f8  ldr      x23, [x23, #0x130]
00db79fc  cbnz     x23, #0xdb7a04
00db7a00  bl       #0xbef9e8
00db7a04  ldr      w8, [x23, #0x18]
00db7a08  cmp      w21, w8
00db7a0c  b.lo     #0xdb7a1c
00db7a10  bl       #0xbf05d4
00db7a14  mov      x1, xzr
00db7a18  bl       #0xbef8cc
00db7a1c  add      x8, x23, x26, lsl #3
00db7a20  ldr      x27, [x8, #0x20]
00db7a24  mov      x1, xzr
00db7a28  mov      x0, x22
00db7a2c  bl       #0xd0189c
00db7a30  mov      w1, w0
00db7a34  mov      x0, xzr
00db7a38  mov      x2, xzr
00db7a3c  bl       #0xca6ecc
00db7a40  mov      x23, x0
00db7a44  cbnz     x27, #0xdb7a4c
00db7a48  bl       #0xbef9e8
00db7a4c  str      x23, [x27, #0x10]
00db7a50  ldr      x8, [x25]
00db7a54  ldr      x8, [x8, #0xa0]
00db7a58  ldr      x23, [x8, #0x230]
00db7a5c  cbnz     x23, #0xdb7a64
00db7a60  bl       #0xbef9e8
00db7a64  ldr      x23, [x23, #0x130]
00db7a68  cbnz     x23, #0xdb7a70
00db7a6c  bl       #0xbef9e8
00db7a70  ldr      w8, [x23, #0x18]
00db7a74  cmp      w21, w8
00db7a78  b.lo     #0xdb7a88
00db7a7c  bl       #0xbf05d4
00db7a80  mov      x1, xzr
00db7a84  bl       #0xbef8cc
00db7a88  add      x8, x23, x26, lsl #3
00db7a8c  ldr      x23, [x8, #0x20]
00db7a90  mov      x1, xzr
00db7a94  mov      x0, x22
00db7a98  bl       #0xd019d4
00db7a9c  mov      w1, w0
00db7aa0  mov      x0, xzr
00db7aa4  b        #0xdb7b64
00db7aa8  cbz      w9, #0xdb7ac0
00db7aac  ldr      w9, [x8, #0xbc]
00db7ab0  cbnz     w9, #0xdb7ac0
00db7ab4  mov      x0, x8
00db7ab8  bl       #0xbd8b98
00db7abc  ldr      x8, [x25]
00db7ac0  ldr      x8, [x8, #0xa0]
00db7ac4  ldr      x22, [x8, #0x230]
00db7ac8  cbnz     x22, #0xdb7ad0
00db7acc  bl       #0xbef9e8
00db7ad0  ldr      x22, [x22, #0x130]
00db7ad4  cbnz     x22, #0xdb7adc
00db7ad8  bl       #0xbef9e8
00db7adc  ldr      w8, [x22, #0x18]
00db7ae0  cmp      w21, w8
00db7ae4  b.lo     #0xdb7af4
00db7ae8  bl       #0xbf05d4
00db7aec  mov      x1, xzr
00db7af0  bl       #0xbef8cc
00db7af4  add      x8, x22, x26, lsl #3
00db7af8  ldr      x23, [x8, #0x20]
00db7afc  mov      x0, xzr
00db7b00  mov      w1, wzr
00db7b04  mov      x2, xzr
00db7b08  bl       #0xca6ecc
00db7b0c  mov      x22, x0
00db7b10  cbnz     x23, #0xdb7b18
00db7b14  bl       #0xbef9e8
00db7b18  str      x22, [x23, #0x10]
00db7b1c  ldr      x8, [x25]
00db7b20  ldr      x8, [x8, #0xa0]
00db7b24  ldr      x22, [x8, #0x230]
00db7b28  cbnz     x22, #0xdb7b30
00db7b2c  bl       #0xbef9e8
00db7b30  ldr      x22, [x22, #0x130]
00db7b34  cbnz     x22, #0xdb7b3c
00db7b38  bl       #0xbef9e8
00db7b3c  ldr      w8, [x22, #0x18]
00db7b40  cmp      w21, w8
00db7b44  b.lo     #0xdb7b54
00db7b48  bl       #0xbf05d4
00db7b4c  mov      x1, xzr
00db7b50  bl       #0xbef8cc
00db7b54  add      x8, x22, x26, lsl #3
00db7b58  ldr      x23, [x8, #0x20]
00db7b5c  mov      x0, xzr
00db7b60  mov      w1, wzr
00db7b64  mov      x2, xzr
00db7b68  bl       #0xca6ecc
00db7b6c  mov      x22, x0
00db7b70  cbnz     x23, #0xdb7854
00db7b74  bl       #0xbef9e8
00db7b78  b        #0xdb7854
00db7b7c  ldr      x0, [x25]
00db7b80  ldrb     w8, [x0, #0x10a]
00db7b84  tbz      w8, #0, #0xdb7b98
00db7b88  ldr      w8, [x0, #0xbc]
00db7b8c  cbnz     w8, #0xdb7b98
00db7b90  bl       #0xbd8b98
00db7b94  ldr      x0, [x25]
00db7b98  ldr      x8, [x0, #0xa0]
00db7b9c  ldr      x20, [x8, #0x230]
00db7ba0  cbnz     x20, #0xdb7ba8
00db7ba4  bl       #0xbef9e8
00db7ba8  mov      x1, xzr
00db7bac  mov      x0, x20
00db7bb0  bl       #0x19dc4fc
00db7bb4  cbnz     x19, #0xdb7bbc
00db7bb8  bl       #0xbef9e8
00db7bbc  adrp     x21, #0x2ab1000
00db7bc0  ldr      x8, [x19]
00db7bc4  ldr      x1, [x24]
00db7bc8  ldr      x21, [x21, #0xb78]
00db7bcc  ldrh     w9, [x8, #0x102]
00db7bd0  ldr      x20, [x21]
00db7bd4  cbz      x9, #0xdb7c00
00db7bd8  ldr      x10, [x8, #0x98]
00db7bdc  mov      x11, xzr
00db7be0  add      x10, x10, #8
00db7be4  ldur     x12, [x10, #-8]
00db7be8  cmp      x12, x1
00db7bec  b.eq     #0xdb7c10
00db7bf0  add      x11, x11, #1
00db7bf4  add      x10, x10, #0x10
00db7bf8  cmp      x11, x9
00db7bfc  b.lo     #0xdb7be4
00db7c00  mov      w2, #8
00db7c04  mov      x0, x19
00db7c08  bl       #0xbb9ee0
00db7c0c  b        #0xdb7c20
00db7c10  ldr      w9, [x10]
00db7c14  add      w9, w9, #8
00db7c18  add      x8, x8, w9, uxtw #4
00db7c1c  add      x0, x8, #0x110
00db7c20  ldp      x8, x2, [x0]
00db7c24  mov      x0, x19
00db7c28  mov      x1, x20
00db7c2c  blr      x8
00db7c30  tbz      w0, #0, #0xdb7c98
00db7c34  cbnz     x19, #0xdb7c3c
00db7c38  bl       #0xbef9e8
00db7c3c  ldr      x1, [x21]
00db7c40  mov      x2, xzr
00db7c44  mov      x0, x19
00db7c48  bl       #0xfee960
00db7c4c  mov      x1, x0
00db7c50  bl       #0xdb45c4
00db7c54  ldr      x8, [x25]
00db7c58  mov      x20, x0
00db7c5c  ldrb     w9, [x8, #0x10a]
00db7c60  tbz      w9, #0, #0xdb7c78
00db7c64  ldr      w9, [x8, #0xbc]
00db7c68  cbnz     w9, #0xdb7c78
00db7c6c  mov      x0, x8
00db7c70  bl       #0xbd8b98
00db7c74  ldr      x8, [x25]
00db7c78  ldr      x8, [x8, #0xa0]
00db7c7c  ldr      x21, [x8, #0x230]
00db7c80  cbnz     x21, #0xdb7c88
00db7c84  bl       #0xbef9e8
00db7c88  mov      x2, xzr
00db7c8c  mov      x0, x21
00db7c90  mov      x1, x20
00db7c94  bl       #0x19dab10
00db7c98  cbnz     x19, #0xdb7ca0
00db7c9c  bl       #0xbef9e8
00db7ca0  adrp     x21, #0x2a59000
00db7ca4  ldr      x8, [x19]
00db7ca8  ldr      x1, [x24]
00db7cac  ldr      x21, [x21, #0x2d0]
00db7cb0  ldrh     w9, [x8, #0x102]
00db7cb4  ldr      x20, [x21]
00db7cb8  cbz      x9, #0xdb7ce4
00db7cbc  ldr      x10, [x8, #0x98]
00db7cc0  mov      x11, xzr
00db7cc4  add      x10, x10, #8
00db7cc8  ldur     x12, [x10, #-8]
00db7ccc  cmp      x12, x1
00db7cd0  b.eq     #0xdb7cf4
00db7cd4  add      x11, x11, #1
00db7cd8  add      x10, x10, #0x10
00db7cdc  cmp      x11, x9
00db7ce0  b.lo     #0xdb7cc8
00db7ce4  mov      w2, #8
00db7ce8  mov      x0, x19
00db7cec  bl       #0xbb9ee0
00db7cf0  b        #0xdb7d04
00db7cf4  ldr      w9, [x10]
00db7cf8  add      w9, w9, #8
00db7cfc  add      x8, x8, w9, uxtw #4
00db7d00  add      x0, x8, #0x110
00db7d04  ldp      x8, x2, [x0]
00db7d08  mov      x0, x19
00db7d0c  mov      x1, x20
00db7d10  blr      x8
00db7d14  tbz      w0, #0, #0xdb7d7c
00db7d18  cbnz     x19, #0xdb7d20
00db7d1c  bl       #0xbef9e8
00db7d20  ldr      x1, [x21]
00db7d24  mov      x2, xzr
00db7d28  mov      x0, x19
00db7d2c  bl       #0xfee960
00db7d30  mov      x1, x0
00db7d34  bl       #0xdb45c4
00db7d38  ldr      x8, [x25]
00db7d3c  mov      x20, x0
00db7d40  ldrb     w9, [x8, #0x10a]
00db7d44  tbz      w9, #0, #0xdb7d5c
00db7d48  ldr      w9, [x8, #0xbc]
00db7d4c  cbnz     w9, #0xdb7d5c
00db7d50  mov      x0, x8
00db7d54  bl       #0xbd8b98
00db7d58  ldr      x8, [x25]
00db7d5c  ldr      x8, [x8, #0xa0]
00db7d60  ldr      x21, [x8, #0x230]
00db7d64  cbnz     x21, #0xdb7d6c
00db7d68  bl       #0xbef9e8
00db7d6c  mov      x2, xzr
00db7d70  mov      x0, x21
00db7d74  mov      x1, x20
00db7d78  bl       #0x19db220
00db7d7c  cbnz     x19, #0xdb7d84
00db7d80  bl       #0xbef9e8
00db7d84  adrp     x21, #0x2a55000
00db7d88  ldr      x8, [x19]
00db7d8c  ldr      x1, [x24]
00db7d90  ldr      x21, [x21, #0xc20]
00db7d94  ldrh     w9, [x8, #0x102]
00db7d98  ldr      x20, [x21]
00db7d9c  cbz      x9, #0xdb7dc8
00db7da0  ldr      x10, [x8, #0x98]
00db7da4  mov      x11, xzr
00db7da8  add      x10, x10, #8
00db7dac  ldur     x12, [x10, #-8]
00db7db0  cmp      x12, x1
00db7db4  b.eq     #0xdb7dd8
00db7db8  add      x11, x11, #1
00db7dbc  add      x10, x10, #0x10
00db7dc0  cmp      x11, x9
00db7dc4  b.lo     #0xdb7dac
00db7dc8  mov      w2, #8
00db7dcc  mov      x0, x19
00db7dd0  bl       #0xbb9ee0
00db7dd4  b        #0xdb7de8
00db7dd8  ldr      w9, [x10]
00db7ddc  add      w9, w9, #8
00db7de0  add      x8, x8, w9, uxtw #4
00db7de4  add      x0, x8, #0x110
00db7de8  ldp      x8, x2, [x0]
00db7dec  mov      x0, x19
00db7df0  mov      x1, x20
00db7df4  blr      x8
00db7df8  tbz      w0, #0, #0xdb7e60
00db7dfc  cbnz     x19, #0xdb7e04
00db7e00  bl       #0xbef9e8
00db7e04  ldr      x1, [x21]
00db7e08  mov      x2, xzr
00db7e0c  mov      x0, x19
00db7e10  bl       #0xfee960
00db7e14  mov      x1, x0
00db7e18  bl       #0xdb45c4
00db7e1c  ldr      x8, [x25]
00db7e20  mov      x20, x0
00db7e24  ldrb     w9, [x8, #0x10a]
00db7e28  tbz      w9, #0, #0xdb7e40
00db7e2c  ldr      w9, [x8, #0xbc]
00db7e30  cbnz     w9, #0xdb7e40
00db7e34  mov      x0, x8
00db7e38  bl       #0xbd8b98
00db7e3c  ldr      x8, [x25]
00db7e40  ldr      x8, [x8, #0xa0]
00db7e44  ldr      x21, [x8, #0x230]
00db7e48  cbnz     x21, #0xdb7e50
00db7e4c  bl       #0xbef9e8
00db7e50  mov      x2, xzr
00db7e54  mov      x0, x21
00db7e58  mov      x1, x20
00db7e5c  bl       #0x19dd2bc
00db7e60  cbnz     x19, #0xdb7e68
00db7e64  bl       #0xbef9e8
00db7e68  adrp     x21, #0x2a3a000
00db7e6c  ldr      x8, [x19]
00db7e70  ldr      x1, [x24]
00db7e74  ldr      x21, [x21, #0xea8]
00db7e78  ldrh     w9, [x8, #0x102]
00db7e7c  ldr      x20, [x21]
00db7e80  cbz      x9, #0xdb7eac
00db7e84  ldr      x10, [x8, #0x98]
00db7e88  mov      x11, xzr
00db7e8c  add      x10, x10, #8
00db7e90  ldur     x12, [x10, #-8]
00db7e94  cmp      x12, x1
00db7e98  b.eq     #0xdb7ebc
00db7e9c  add      x11, x11, #1
00db7ea0  add      x10, x10, #0x10
00db7ea4  cmp      x11, x9
00db7ea8  b.lo     #0xdb7e90
00db7eac  mov      w2, #8
00db7eb0  mov      x0, x19
00db7eb4  bl       #0xbb9ee0
00db7eb8  b        #0xdb7ecc
00db7ebc  ldr      w9, [x10]
00db7ec0  add      w9, w9, #8
00db7ec4  add      x8, x8, w9, uxtw #4
00db7ec8  add      x0, x8, #0x110
00db7ecc  ldp      x8, x2, [x0]
00db7ed0  mov      x0, x19
00db7ed4  mov      x1, x20
00db7ed8  blr      x8
00db7edc  tbz      w0, #0, #0xdb7f44
00db7ee0  cbnz     x19, #0xdb7ee8
00db7ee4  bl       #0xbef9e8
00db7ee8  ldr      x1, [x21]
00db7eec  mov      x2, xzr
00db7ef0  mov      x0, x19
00db7ef4  bl       #0xfee960
00db7ef8  mov      x1, x0
00db7efc  bl       #0xdb45c4
00db7f00  ldr      x8, [x25]
00db7f04  mov      x20, x0
00db7f08  ldrb     w9, [x8, #0x10a]
00db7f0c  tbz      w9, #0, #0xdb7f24
00db7f10  ldr      w9, [x8, #0xbc]
00db7f14  cbnz     w9, #0xdb7f24
00db7f18  mov      x0, x8
00db7f1c  bl       #0xbd8b98
00db7f20  ldr      x8, [x25]
00db7f24  ldr      x8, [x8, #0xa0]
00db7f28  ldr      x21, [x8, #0x230]
00db7f2c  cbnz     x21, #0xdb7f34
00db7f30  bl       #0xbef9e8
00db7f34  mov      x2, xzr
00db7f38  mov      x0, x21
00db7f3c  mov      x1, x20
00db7f40  bl       #0x19dd630
00db7f44  cbnz     x19, #0xdb7f4c
00db7f48  bl       #0xbef9e8
00db7f4c  adrp     x21, #0x2ac7000
00db7f50  ldr      x8, [x19]
00db7f54  ldr      x1, [x24]
00db7f58  ldr      x21, [x21, #0x818]
00db7f5c  ldrh     w9, [x8, #0x102]
00db7f60  ldr      x20, [x21]
00db7f64  cbz      x9, #0xdb7f90
00db7f68  ldr      x10, [x8, #0x98]
00db7f6c  mov      x11, xzr
00db7f70  add      x10, x10, #8
00db7f74  ldur     x12, [x10, #-8]
00db7f78  cmp      x12, x1
00db7f7c  b.eq     #0xdb7fa0
00db7f80  add      x11, x11, #1
00db7f84  add      x10, x10, #0x10
00db7f88  cmp      x11, x9
00db7f8c  b.lo     #0xdb7f74
00db7f90  mov      w2, #8
00db7f94  mov      x0, x19
00db7f98  bl       #0xbb9ee0
00db7f9c  b        #0xdb7fb0
00db7fa0  ldr      w9, [x10]
00db7fa4  add      w9, w9, #8
00db7fa8  add      x8, x8, w9, uxtw #4
00db7fac  add      x0, x8, #0x110
00db7fb0  ldp      x8, x2, [x0]
00db7fb4  mov      x0, x19
00db7fb8  mov      x1, x20
00db7fbc  blr      x8
00db7fc0  tbz      w0, #0, #0xdb8034
00db7fc4  cbnz     x19, #0xdb7fcc
00db7fc8  bl       #0xbef9e8
00db7fcc  ldr      x1, [x21]
00db7fd0  mov      x2, xzr
00db7fd4  mov      x0, x19
00db7fd8  bl       #0xfee960
00db7fdc  mov      x1, x0
00db7fe0  bl       #0xdb45c4
00db7fe4  ldr      x8, [x25]
00db7fe8  mov      x20, x0
00db7fec  ldrb     w9, [x8, #0x10a]
00db7ff0  tbz      w9, #0, #0xdb8008
00db7ff4  ldr      w9, [x8, #0xbc]
00db7ff8  cbnz     w9, #0xdb8008
00db7ffc  mov      x0, x8
00db8000  bl       #0xbd8b98
00db8004  ldr      x8, [x25]
00db8008  ldr      x8, [x8, #0xa0]
00db800c  ldr      x21, [x8, #0x230]
00db8010  cbnz     x21, #0xdb8018
00db8014  bl       #0xbef9e8
00db8018  ldr      x21, [x21, #0x118]
00db801c  cbnz     x21, #0xdb8024
00db8020  bl       #0xbef9e8
00db8024  mov      x2, xzr
00db8028  mov      x0, x21
00db802c  mov      x1, x20
00db8030  bl       #0xe41e30
00db8034  cbnz     x19, #0xdb803c
00db8038  bl       #0xbef9e8
00db803c  adrp     x21, #0x2a92000
00db8040  ldr      x8, [x19]
00db8044  ldr      x1, [x24]
00db8048  ldr      x21, [x21, #0x7e8]
00db804c  ldrh     w9, [x8, #0x102]
00db8050  ldr      x20, [x21]
00db8054  cbz      x9, #0xdb8080
00db8058  ldr      x10, [x8, #0x98]
00db805c  mov      x11, xzr
00db8060  add      x10, x10, #8
00db8064  ldur     x12, [x10, #-8]
00db8068  cmp      x12, x1
00db806c  b.eq     #0xdb8090
00db8070  add      x11, x11, #1
00db8074  add      x10, x10, #0x10
00db8078  cmp      x11, x9
00db807c  b.lo     #0xdb8064
00db8080  mov      w2, #8
00db8084  mov      x0, x19
00db8088  bl       #0xbb9ee0
00db808c  b        #0xdb80a0
00db8090  ldr      w9, [x10]
00db8094  add      w9, w9, #8
00db8098  add      x8, x8, w9, uxtw #4
00db809c  add      x0, x8, #0x110
00db80a0  ldp      x8, x2, [x0]
00db80a4  mov      x0, x19
00db80a8  mov      x1, x20
00db80ac  blr      x8
00db80b0  tbz      w0, #0, #0xdb8110
00db80b4  ldr      x0, [x25]
00db80b8  ldrb     w8, [x0, #0x10a]
00db80bc  tbz      w8, #0, #0xdb80d0
00db80c0  ldr      w8, [x0, #0xbc]
00db80c4  cbnz     w8, #0xdb80d0
00db80c8  bl       #0xbd8b98
00db80cc  ldr      x0, [x25]
00db80d0  ldr      x8, [x0, #0xa0]
00db80d4  ldr      x22, [x8, #0x230]
00db80d8  cbnz     x19, #0xdb80e0
00db80dc  bl       #0xbef9e8
00db80e0  ldr      x1, [x21]
00db80e4  mov      x2, xzr
00db80e8  mov      x0, x19
00db80ec  bl       #0xfee960
00db80f0  mov      x1, x0
00db80f4  mov      x0, xzr
00db80f8  mov      x2, xzr
00db80fc  bl       #0xff501c
00db8100  mov      w20, w0
00db8104  cbnz     x22, #0xdb810c
00db8108  bl       #0xbef9e8
00db810c  str      w20, [x22, #0x178]
00db8110  cbnz     x19, #0xdb8118
00db8114  bl       #0xbef9e8
00db8118  adrp     x21, #0x2a25000
00db811c  ldr      x8, [x19]
00db8120  ldr      x1, [x24]
00db8124  ldr      x21, [x21, #0x810]
00db8128  ldrh     w9, [x8, #0x102]
00db812c  ldr      x20, [x21]
00db8130  cbz      x9, #0xdb815c
00db8134  ldr      x10, [x8, #0x98]
00db8138  mov      x11, xzr
00db813c  add      x10, x10, #8
00db8140  ldur     x12, [x10, #-8]
00db8144  cmp      x12, x1
00db8148  b.eq     #0xdb816c
00db814c  add      x11, x11, #1
00db8150  add      x10, x10, #0x10
00db8154  cmp      x11, x9
00db8158  b.lo     #0xdb8140
00db815c  mov      w2, #8
00db8160  mov      x0, x19
00db8164  bl       #0xbb9ee0
00db8168  b        #0xdb817c
00db816c  ldr      w9, [x10]
00db8170  add      w9, w9, #8
00db8174  add      x8, x8, w9, uxtw #4
00db8178  add      x0, x8, #0x110
00db817c  ldp      x8, x2, [x0]
00db8180  mov      x0, x19
00db8184  mov      x1, x20
00db8188  blr      x8
00db818c  tbz      w0, #0, #0xdb81dc
00db8190  ldr      x0, [x25]
00db8194  ldrb     w8, [x0, #0x10a]
00db8198  tbz      w8, #0, #0xdb81ac
00db819c  ldr      w8, [x0, #0xbc]
00db81a0  cbnz     w8, #0xdb81ac
00db81a4  bl       #0xbd8b98
00db81a8  ldr      x0, [x25]
00db81ac  ldr      x8, [x0, #0xa0]
00db81b0  ldr      x22, [x8, #0x230]
00db81b4  cbnz     x19, #0xdb81bc
00db81b8  bl       #0xbef9e8
00db81bc  ldr      x1, [x21]
00db81c0  mov      x2, xzr
00db81c4  mov      x0, x19
00db81c8  bl       #0xfee960
00db81cc  mov      x20, x0
00db81d0  cbnz     x22, #0xdb81d8
00db81d4  bl       #0xbef9e8
00db81d8  str      x20, [x22, #0x180]
00db81dc  cbnz     x19, #0xdb81e4
00db81e0  bl       #0xbef9e8
00db81e4  adrp     x21, #0x2ac9000
00db81e8  ldr      x8, [x19]
00db81ec  ldr      x1, [x24]
00db81f0  ldr      x21, [x21, #0xad0]
00db81f4  ldrh     w9, [x8, #0x102]
00db81f8  ldr      x20, [x21]
00db81fc  cbz      x9, #0xdb8228
00db8200  ldr      x10, [x8, #0x98]
00db8204  mov      x11, xzr
00db8208  add      x10, x10, #8
00db820c  ldur     x12, [x10, #-8]
00db8210  cmp      x12, x1
00db8214  b.eq     #0xdb8238
00db8218  add      x11, x11, #1
00db821c  add      x10, x10, #0x10
00db8220  cmp      x11, x9
00db8224  b.lo     #0xdb820c
00db8228  mov      w2, #8
00db822c  mov      x0, x19
00db8230  bl       #0xbb9ee0
00db8234  b        #0xdb8248
00db8238  ldr      w9, [x10]
00db823c  add      w9, w9, #8
00db8240  add      x8, x8, w9, uxtw #4
00db8244  add      x0, x8, #0x110
00db8248  ldp      x8, x2, [x0]
00db824c  mov      x0, x19
00db8250  mov      x1, x20
00db8254  blr      x8
00db8258  tbz      w0, #0, #0xdb82a8
00db825c  ldr      x0, [x25]
00db8260  ldrb     w8, [x0, #0x10a]
00db8264  tbz      w8, #0, #0xdb8278
00db8268  ldr      w8, [x0, #0xbc]
00db826c  cbnz     w8, #0xdb8278
00db8270  bl       #0xbd8b98
00db8274  ldr      x0, [x25]
00db8278  ldr      x8, [x0, #0xa0]
00db827c  ldr      x20, [x8, #0x230]
00db8280  cbnz     x19, #0xdb8288
00db8284  bl       #0xbef9e8
00db8288  ldr      x1, [x21]
00db828c  mov      x2, xzr
00db8290  mov      x0, x19
00db8294  bl       #0xfee960
00db8298  mov      x19, x0
00db829c  cbnz     x20, #0xdb82a4
00db82a0  bl       #0xbef9e8
00db82a4  str      x19, [x20, #0x188]
00db82a8  ldr      x0, [x25]
00db82ac  ldrb     w8, [x0, #0x10a]
00db82b0  tbz      w8, #0, #0xdb82c4
00db82b4  ldr      w8, [x0, #0xbc]
00db82b8  cbnz     w8, #0xdb82c4
00db82bc  bl       #0xbd8b98
00db82c0  ldr      x0, [x25]
00db82c4  ldr      x8, [x0, #0xa0]
00db82c8  ldr      x19, [x8, #0x230]
00db82cc  cbnz     x19, #0xdb82d4
00db82d0  bl       #0xbef9e8
00db82d4  mov      x1, xzr
00db82d8  mov      x0, x19
00db82dc  bl       #0x19d947c
00db82e0  sub      sp, x29, #0x60
00db82e4  ldp      x29, x30, [sp, #0x60]
00db82e8  ldp      x20, x19, [sp, #0x50]
00db82ec  ldp      x22, x21, [sp, #0x40]
00db82f0  ldp      x24, x23, [sp, #0x30]
00db82f4  ldp      x26, x25, [sp, #0x20]
00db82f8  ldp      x28, x27, [sp, #0x10]
00db82fc  ldp      d9, d8, [sp], #0x70
00db8300  ret
00db8304  mov      x20, xzr
00db8308  mov      w22, #0x112
00db830c  b        #0xdb6698
00db8310  mov      x20, x0
00db8314  add      x0, sp, #8
00db8318  mov      x22, x1
00db831c  bl       #0x2017ad8
00db8320  b        #0xdb667c
00db8324  bl       #0x913270

; UITeamStateItem.AddExp.MoveNext [0xf20c1c, 0xf21ccc)
00f20c1c  stp      d11, d10, [sp, #-0x70]!
00f20c20  stp      d9, d8, [sp, #0x10]
00f20c24  stp      x26, x25, [sp, #0x20]
00f20c28  stp      x24, x23, [sp, #0x30]
00f20c2c  stp      x22, x21, [sp, #0x40]
00f20c30  stp      x20, x19, [sp, #0x50]
00f20c34  stp      x29, x30, [sp, #0x60]
00f20c38  add      x29, sp, #0x60
00f20c3c  sub      sp, sp, #0x10
00f20c40  adrp     x20, #0x2be5000
00f20c44  ldrb     w8, [x20, #0xd36]
00f20c48  mov      x19, x0
00f20c4c  tbnz     w8, #0, #0xf20c68
00f20c50  adrp     x8, #0x2a4c000
00f20c54  ldr      x8, [x8, #0x8f0]
00f20c58  ldr      w0, [x8]
00f20c5c  bl       #0xbc39bc
00f20c60  mov      w8, #1
00f20c64  strb     w8, [x20, #0xd36]
00f20c68  ldr      w8, [x19, #0x8c]
00f20c6c  mov      w9, #-1
00f20c70  mov      w0, wzr
00f20c74  str      w9, [x19, #0x8c]
00f20c78  add      w9, w8, #3
00f20c7c  cmp      w8, #7
00f20c80  csel     w8, w9, wzr, lo
00f20c84  sub      w8, w8, #3
00f20c88  cmp      w8, #6
00f20c8c  b.hi     #0xf21b5c
00f20c90  adrp     x9, #0x21c7000
00f20c94  add      x9, x9, #0x7ac
00f20c98  ldrsw    x8, [x9, x8, lsl #2]
00f20c9c  add      x8, x8, x9
00f20ca0  br       x8
00f20ca4  ldr      x20, [x19, #0x78]
00f20ca8  cbnz     x20, #0xf20cb0
00f20cac  bl       #0xbef9e8
00f20cb0  mov      w8, #1
00f20cb4  strb     w8, [x20, #0xf0]
00f20cb8  adrp     x20, #0x2a4a000
00f20cbc  ldr      x20, [x20, #0x5a0]
00f20cc0  ldr      x0, [x20]
00f20cc4  ldrb     w8, [x0, #0x10a]
00f20cc8  tbz      w8, #0, #0xf20cdc
00f20ccc  ldr      w8, [x0, #0xbc]
00f20cd0  cbnz     w8, #0xf20cdc
00f20cd4  bl       #0xbd8b98
00f20cd8  ldr      x0, [x20]
00f20cdc  ldr      x8, [x0, #0xa0]
00f20ce0  ldr      x21, [x19, #0x78]
00f20ce4  ldr      x20, [x8, #0x230]
00f20ce8  cbnz     x21, #0xf20cf0
00f20cec  bl       #0xbef9e8
00f20cf0  ldr      w21, [x21, #0xdc]
00f20cf4  cbnz     x20, #0xf20cfc
00f20cf8  bl       #0xbef9e8
00f20cfc  mov      x3, xzr
00f20d00  mov      w2, #1
00f20d04  mov      x0, x20
00f20d08  mov      w1, w21
00f20d0c  bl       #0x19d99f4
00f20d10  mov      x20, x0
00f20d14  str      x20, [x19, #0x10]
00f20d18  cbnz     x20, #0xf20d20
00f20d1c  bl       #0xbef9e8
00f20d20  mov      x1, xzr
00f20d24  mov      x0, x20
00f20d28  bl       #0xd01c28
00f20d2c  mov      x21, x0
00f20d30  str      x21, [x19, #0x18]
00f20d34  adrp     x8, #0x2a48000
00f20d38  ldr      x8, [x8, #0x8d8]
00f20d3c  ldr      x8, [x8]
00f20d40  ldr      x8, [x8, #0xa0]
00f20d44  ldr      x20, [x8]
00f20d48  cbnz     x21, #0xf20d50
00f20d4c  bl       #0xbef9e8
00f20d50  ldr      x21, [x21, #0x60]
00f20d54  ldr      x22, [x19, #0x10]
00f20d58  cbnz     x22, #0xf20d60
00f20d5c  bl       #0xbef9e8
00f20d60  mov      x1, xzr
00f20d64  mov      x0, x22
00f20d68  bl       #0xd08684
00f20d6c  mov      w22, w0
00f20d70  cbnz     x21, #0xf20d78
00f20d74  bl       #0xbef9e8
00f20d78  adrp     x8, #0x2ab3000
00f20d7c  ldr      x8, [x8, #0x780]
00f20d80  mov      x0, x21
00f20d84  mov      w1, w22
00f20d88  ldr      x2, [x8]
00f20d8c  bl       #0x1f88a0c
00f20d90  mov      w21, w0
00f20d94  cbnz     x20, #0xf20d9c
00f20d98  bl       #0xbef9e8
00f20d9c  mov      x2, xzr
00f20da0  mov      x0, x20
00f20da4  mov      w1, w21
00f20da8  bl       #0x10bdf30
00f20dac  ldr      x20, [x19, #0x10]
00f20db0  str      x0, [x19, #0x20]
00f20db4  cbnz     x20, #0xf20dbc
00f20db8  bl       #0xbef9e8
00f20dbc  mov      x1, xzr
00f20dc0  mov      x0, x20
00f20dc4  bl       #0xd09650
00f20dc8  ldr      x20, [x19, #0x78]
00f20dcc  str      w0, [x19, #0x28]
00f20dd0  cbnz     x20, #0xf20dd8
00f20dd4  bl       #0xbef9e8
00f20dd8  str      wzr, [x20, #0xec]
00f20ddc  ldr      x20, [x19, #0x78]
00f20de0  strb     wzr, [x19, #0x2c]
00f20de4  cbnz     x20, #0xf20dec
00f20de8  bl       #0xbef9e8
00f20dec  strb     wzr, [x20, #0x104]
00f20df0  b        #0xf20e2c
00f20df4  mov      x24, x19
00f20df8  ldr      x20, [x24, #0x78]!
00f20dfc  cbnz     x20, #0xf20e04
00f20e00  bl       #0xbef9e8
00f20e04  strb     wzr, [x20, #0x104]
00f20e08  b        #0xf21b30
00f20e0c  ldr      x20, [x19, #0x78]
00f20e10  cbnz     x20, #0xf20e18
00f20e14  bl       #0xbef9e8
00f20e18  mov      w0, wzr
00f20e1c  mov      w8, #-1
00f20e20  strb     wzr, [x20, #0xf0]
00f20e24  str      w8, [x19, #0x8c]
00f20e28  b        #0xf21b5c
00f20e2c  ldr      w8, [x19, #0x30]
00f20e30  cmp      w8, #0
00f20e34  b.le     #0xf2100c
00f20e38  mov      x24, x19
00f20e3c  ldr      x20, [x24, #0x78]!
00f20e40  cbnz     x20, #0xf20e48
00f20e44  bl       #0xbef9e8
00f20e48  mov      x0, x20
00f20e4c  bl       #0xf205b4
00f20e50  ldrb     w8, [x19, #0x2c]
00f20e54  cbnz     w8, #0xf20e98
00f20e58  adrp     x8, #0x2a2f000
00f20e5c  ldr      x8, [x8, #0xef8]
00f20e60  ldr      x0, [x8]
00f20e64  ldrb     w8, [x0, #0x10a]
00f20e68  tbz      w8, #0, #0xf20e78
00f20e6c  ldr      w8, [x0, #0xbc]
00f20e70  cbnz     w8, #0xf20e78
00f20e74  bl       #0xbd8b98
00f20e78  adrp     x8, #0x2aa7000
00f20e7c  ldr      x8, [x8, #0x680]
00f20e80  mov      x0, xzr
00f20e84  mov      x2, xzr
00f20e88  ldr      x1, [x8]
00f20e8c  bl       #0xfd5148
00f20e90  mov      w8, #1
00f20e94  strb     w8, [x19, #0x2c]
00f20e98  mov      x21, x19
00f20e9c  mov      x20, x19
00f20ea0  str      xzr, [x21, #0x34]!
00f20ea4  str      wzr, [x20, #0x3c]!
00f20ea8  ldur     x23, [x20, #-0x2c]
00f20eac  sub      x22, x20, #4
00f20eb0  cbnz     x23, #0xf20eb8
00f20eb4  bl       #0xbef9e8
00f20eb8  mov      x5, xzr
00f20ebc  mov      w4, #-1
00f20ec0  mov      x0, x23
00f20ec4  mov      x1, x21
00f20ec8  mov      x2, x20
00f20ecc  mov      x3, x22
00f20ed0  bl       #0xd0bca8
00f20ed4  adrp     x23, #0x2ab8000
00f20ed8  ldr      x23, [x23, #0xd38]
00f20edc  ldr      w22, [x22]
00f20ee0  ldr      x0, [x23]
00f20ee4  ldrb     w8, [x0, #0x10a]
00f20ee8  tbz      w8, #0, #0xf20efc
00f20eec  ldr      w8, [x0, #0xbc]
00f20ef0  cbnz     w8, #0xf20efc
00f20ef4  bl       #0xbd8b98
00f20ef8  ldr      x0, [x23]
00f20efc  ldr      x8, [x0, #0xa0]
00f20f00  scvtf    s1, w22
00f20f04  fmov     s2, #2.50000000
00f20f08  ldr      x22, [x19, #0x78]
00f20f0c  ldr      s0, [x8, #0x14]
00f20f10  fmul     s0, s1, s0
00f20f14  fmul     s0, s0, s2
00f20f18  fcvtzs   w8, s0
00f20f1c  cmp      w8, #1
00f20f20  mov      w9, #1
00f20f24  csel     w8, w9, w8, lt
00f20f28  str      w8, [x19, #0x40]
00f20f2c  cbnz     x22, #0xf20f34
00f20f30  bl       #0xbef9e8
00f20f34  ldr      x23, [x22, #0xb0]
00f20f38  mov      x0, xzr
00f20f3c  mov      w1, #0x1e
00f20f40  mov      x2, xzr
00f20f44  bl       #0x116960c
00f20f48  mov      x22, x0
00f20f4c  cbnz     x23, #0xf20f54
00f20f50  bl       #0xbef9e8
00f20f54  str      x22, [x23, #0x20]
00f20f58  ldr      x22, [x24]
00f20f5c  cbnz     x22, #0xf20f64
00f20f60  bl       #0xbef9e8
00f20f64  ldr      x22, [x22, #0xb8]
00f20f68  mov      x1, xzr
00f20f6c  mov      x0, x21
00f20f70  bl       #0xa94944
00f20f74  mov      x21, x0
00f20f78  cbnz     x22, #0xf20f80
00f20f7c  bl       #0xbef9e8
00f20f80  str      x21, [x22, #0x20]
00f20f84  ldr      x21, [x24]
00f20f88  cbnz     x21, #0xf20f90
00f20f8c  bl       #0xbef9e8
00f20f90  ldr      x21, [x21, #0xc0]
00f20f94  cbnz     x21, #0xf20f9c
00f20f98  bl       #0xbef9e8
00f20f9c  adrp     x8, #0x2aba000
00f20fa0  ldr      x8, [x8, #0x818]
00f20fa4  mov      x2, xzr
00f20fa8  mov      x0, x21
00f20fac  ldr      x1, [x8]
00f20fb0  bl       #0xd5543c
00f20fb4  ldr      x21, [x24]
00f20fb8  cbnz     x21, #0xf20fc0
00f20fbc  bl       #0xbef9e8
00f20fc0  ldr      x21, [x21, #0xc0]
00f20fc4  ldr      s8, [x20]
00f20fc8  cbnz     x21, #0xf20fd0
00f20fcc  bl       #0xbef9e8
00f20fd0  mov      x1, xzr
00f20fd4  mov      x0, x21
00f20fd8  mov      v0.16b, v8.16b
00f20fdc  bl       #0xf43f60
00f20fe0  ldr      w8, [x19, #0x40]
00f20fe4  ldp      w9, w10, [x19, #0x30]
00f20fe8  cmp      w9, w8
00f20fec  csel     w8, w9, w8, lt
00f20ff0  str      w8, [x19, #0x44]
00f20ff4  cmp      w8, w10
00f20ff8  b.ge     #0xf21534
00f20ffc  ldr      x20, [x19, #0x10]
00f21000  cbz      x20, #0xf2164c
00f21004  ldr      x21, [x20, #0x50]
00f21008  b        #0xf219b0
00f2100c  adrp     x8, #0x2a2f000
00f21010  ldr      x8, [x8, #0xef8]
00f21014  ldr      x0, [x8]
00f21018  ldrb     w8, [x0, #0x10a]
00f2101c  tbz      w8, #0, #0xf2102c
00f21020  ldr      w8, [x0, #0xbc]
00f21024  cbnz     w8, #0xf2102c
00f21028  bl       #0xbd8b98
00f2102c  adrp     x8, #0x2aa7000
00f21030  ldr      x8, [x8, #0x680]
00f21034  mov      x0, xzr
00f21038  mov      x2, xzr
00f2103c  ldr      x1, [x8]
00f21040  adrp     x8, #0x208b000
00f21044  ldr      s0, [x8, #0x1fc]
00f21048  bl       #0xfd5cf0
00f2104c  ldr      w8, [x19, #0x48]
00f21050  cmp      w8, #1
00f21054  b.lt     #0xf2124c
00f21058  adrp     x22, #0x2a5f000
00f2105c  ldr      x22, [x22, #0x928]
00f21060  adrp     x9, #0x2ad0000
00f21064  ldr      x8, [x22]
00f21068  ldr      x9, [x9, #0xa98]
00f2106c  ldr      x8, [x8, #0xa0]
00f21070  ldr      x0, [x9]
00f21074  ldr      x20, [x8]
00f21078  ldrb     w8, [x0, #0x10a]
00f2107c  tbz      w8, #0, #0xf2108c
00f21080  ldr      w8, [x0, #0xbc]
00f21084  cbnz     w8, #0xf2108c
00f21088  bl       #0xbd8b98
00f2108c  mov      x0, xzr
00f21090  mov      x1, xzr
00f21094  bl       #0x1fadc70
00f21098  mov      v8.16b, v0.16b
00f2109c  mov      v9.16b, v1.16b
00f210a0  mov      v10.16b, v2.16b
00f210a4  cbnz     x20, #0xf210ac
00f210a8  bl       #0xbef9e8
00f210ac  mov      x2, xzr
00f210b0  mov      w1, #0x6b
00f210b4  mov      x0, x20
00f210b8  mov      v0.16b, v8.16b
00f210bc  mov      v1.16b, v9.16b
00f210c0  mov      v2.16b, v10.16b
00f210c4  bl       #0x10ca684
00f210c8  mov      x21, x0
00f210cc  str      x21, [x19, #0x50]
00f210d0  ldr      x8, [x22]
00f210d4  ldr      x8, [x8, #0xa0]
00f210d8  ldr      x20, [x8]
00f210dc  cbnz     x21, #0xf210e4
00f210e0  bl       #0xbef9e8
00f210e4  ldr      x21, [x21, #0x10]
00f210e8  cbnz     x20, #0xf210f0
00f210ec  bl       #0xbef9e8
00f210f0  mov      x3, xzr
00f210f4  mov      w2, #0xdac
00f210f8  mov      x0, x20
00f210fc  mov      x1, x21
00f21100  bl       #0x10cd5c0
00f21104  ldr      x20, [x19, #0x50]
00f21108  cbnz     x20, #0xf21110
00f2110c  bl       #0xbef9e8
00f21110  ldr      x20, [x20, #0x10]
00f21114  cbnz     x20, #0xf2111c
00f21118  bl       #0xbef9e8
00f2111c  mov      x1, xzr
00f21120  mov      x0, x20
00f21124  bl       #0x1d64a24
00f21128  mov      x20, x0
00f2112c  mov      x0, xzr
00f21130  mov      x1, xzr
00f21134  bl       #0x1fb6394
00f21138  mov      v8.16b, v0.16b
00f2113c  mov      v9.16b, v1.16b
00f21140  mov      v10.16b, v2.16b
00f21144  cbnz     x20, #0xf2114c
00f21148  bl       #0xbef9e8
00f2114c  mov      x1, xzr
00f21150  mov      x0, x20
00f21154  mov      v0.16b, v8.16b
00f21158  mov      v1.16b, v9.16b
00f2115c  mov      v2.16b, v10.16b
00f21160  bl       #0x1fb3344
00f21164  ldr      x20, [x19, #0x50]
00f21168  cbnz     x20, #0xf21170
00f2116c  bl       #0xbef9e8
00f21170  ldr      x20, [x20, #0x10]
00f21174  cbnz     x20, #0xf2117c
00f21178  bl       #0xbef9e8
00f2117c  mov      x1, xzr
00f21180  mov      x0, x20
00f21184  bl       #0x1d64a24
00f21188  ldr      x21, [x19, #0x78]
00f2118c  mov      x20, x0
00f21190  cbnz     x21, #0xf21198
00f21194  bl       #0xbef9e8
00f21198  mov      x1, xzr
00f2119c  mov      x0, x21
00f211a0  bl       #0x1d64a24
00f211a4  mov      x21, x0
00f211a8  cbnz     x20, #0xf211b0
00f211ac  bl       #0xbef9e8
00f211b0  mov      x2, xzr
00f211b4  mov      x0, x20
00f211b8  mov      x1, x21
00f211bc  bl       #0x1fb3448
00f211c0  ldr      x20, [x19, #0x50]
00f211c4  cbnz     x20, #0xf211cc
00f211c8  bl       #0xbef9e8
00f211cc  ldr      x20, [x20, #0x10]
00f211d0  cbnz     x20, #0xf211d8
00f211d4  bl       #0xbef9e8
00f211d8  mov      x1, xzr
00f211dc  mov      x0, x20
00f211e0  bl       #0x1d64a24
00f211e4  adrp     x8, #0x204f000
00f211e8  adrp     x9, #0x21c4000
00f211ec  ldr      s0, [x8, #0x20c]
00f211f0  ldr      s2, [x9, #0x8cc]
00f211f4  mov      x20, x0
00f211f8  mov      x1, xzr
00f211fc  fmov     s1, wzr
00f21200  mov      x0, sp
00f21204  str      wzr, [sp, #8]
00f21208  str      xzr, [sp]
00f2120c  bl       #0x1fa7b38
00f21210  cbnz     x20, #0xf21218
00f21214  bl       #0xbef9e8
00f21218  ldp      s0, s1, [sp]
00f2121c  ldr      s2, [sp, #8]
00f21220  mov      x1, xzr
00f21224  mov      x0, x20
00f21228  bl       #0x1fb2ba8
00f2122c  ldr      x20, [x19, #0x78]
00f21230  cbz      x20, #0xf216e8
00f21234  fmov     s0, #1.00000000
00f21238  mov      x0, x20
00f2123c  mov      v1.16b, v0.16b
00f21240  bl       #0xf20638
00f21244  mov      x21, x0
00f21248  b        #0xf21704
00f2124c  ldr      w8, [x19, #0x58]
00f21250  cmp      w8, #1
00f21254  b.lt     #0xf212f8
00f21258  ldr      x20, [x19, #0x10]
00f2125c  str      xzr, [x19, #0x60]
00f21260  cbnz     x20, #0xf21268
00f21264  bl       #0xbef9e8
00f21268  mov      x1, xzr
00f2126c  mov      x0, x20
00f21270  bl       #0xd08958
00f21274  ldr      x21, [x19, #0x78]
00f21278  mov      w20, w0
00f2127c  cbnz     x21, #0xf21284
00f21280  bl       #0xbef9e8
00f21284  ldr      w8, [x21, #0x100]
00f21288  sub      w8, w20, w8
00f2128c  str      w8, [x19, #0x68]
00f21290  cmp      w8, #1
00f21294  b.ne     #0xf215d8
00f21298  adrp     x8, #0x2a5f000
00f2129c  ldr      x8, [x8, #0x928]
00f212a0  adrp     x9, #0x2ad0000
00f212a4  ldr      x8, [x8]
00f212a8  ldr      x9, [x9, #0xa98]
00f212ac  ldr      x8, [x8, #0xa0]
00f212b0  ldr      x0, [x9]
00f212b4  ldr      x20, [x8]
00f212b8  ldrb     w8, [x0, #0x10a]
00f212bc  tbz      w8, #0, #0xf212cc
00f212c0  ldr      w8, [x0, #0xbc]
00f212c4  cbnz     w8, #0xf212cc
00f212c8  bl       #0xbd8b98
00f212cc  mov      x0, xzr
00f212d0  mov      x1, xzr
00f212d4  bl       #0x1fadc70
00f212d8  mov      v8.16b, v0.16b
00f212dc  mov      v9.16b, v1.16b
00f212e0  mov      v10.16b, v2.16b
00f212e4  cbnz     x20, #0xf212ec
00f212e8  bl       #0xbef9e8
00f212ec  mov      x2, xzr
00f212f0  mov      w1, #0x180
00f212f4  b        #0xf217a4
00f212f8  ldr      w21, [x19, #0x28]
00f212fc  ldr      x20, [x19, #0x10]
00f21300  cbnz     x20, #0xf21308
00f21304  bl       #0xbef9e8
00f21308  mov      x1, xzr
00f2130c  mov      x0, x20
00f21310  bl       #0xd09650
00f21314  cmp      w21, w0
00f21318  b.ge     #0xf21510
00f2131c  adrp     x22, #0x2a5f000
00f21320  ldr      x22, [x22, #0x928]
00f21324  adrp     x9, #0x2ad0000
00f21328  ldr      x8, [x22]
00f2132c  ldr      x9, [x9, #0xa98]
00f21330  ldr      x8, [x8, #0xa0]
00f21334  ldr      x0, [x9]
00f21338  ldr      x20, [x8]
00f2133c  ldrb     w8, [x0, #0x10a]
00f21340  tbz      w8, #0, #0xf21350
00f21344  ldr      w8, [x0, #0xbc]
00f21348  cbnz     w8, #0xf21350
00f2134c  bl       #0xbd8b98
00f21350  mov      x0, xzr
00f21354  mov      x1, xzr
00f21358  bl       #0x1fadc70
00f2135c  mov      v8.16b, v0.16b
00f21360  mov      v9.16b, v1.16b
00f21364  mov      v10.16b, v2.16b
00f21368  cbnz     x20, #0xf21370
00f2136c  bl       #0xbef9e8
00f21370  mov      x2, xzr
00f21374  mov      w1, #0x77
00f21378  mov      x0, x20
00f2137c  mov      v0.16b, v8.16b
00f21380  mov      v1.16b, v9.16b
00f21384  mov      v2.16b, v10.16b
00f21388  bl       #0x10ca684
00f2138c  mov      x21, x0
00f21390  str      x21, [x19, #0x70]
00f21394  ldr      x8, [x22]
00f21398  ldr      x8, [x8, #0xa0]
00f2139c  ldr      x20, [x8]
00f213a0  cbnz     x21, #0xf213a8
00f213a4  bl       #0xbef9e8
00f213a8  ldr      x21, [x21, #0x10]
00f213ac  cbnz     x20, #0xf213b4
00f213b0  bl       #0xbef9e8
00f213b4  mov      x3, xzr
00f213b8  mov      w2, #0xdac
00f213bc  mov      x0, x20
00f213c0  mov      x1, x21
00f213c4  bl       #0x10cd5c0
00f213c8  ldr      x20, [x19, #0x70]
00f213cc  cbnz     x20, #0xf213d4
00f213d0  bl       #0xbef9e8
00f213d4  ldr      x20, [x20, #0x10]
00f213d8  cbnz     x20, #0xf213e0
00f213dc  bl       #0xbef9e8
00f213e0  mov      x1, xzr
00f213e4  mov      x0, x20
00f213e8  bl       #0x1d64a24
00f213ec  mov      x20, x0
00f213f0  mov      x0, xzr
00f213f4  mov      x1, xzr
00f213f8  bl       #0x1fb6394
00f213fc  mov      v8.16b, v0.16b
00f21400  mov      v9.16b, v1.16b
00f21404  mov      v10.16b, v2.16b
00f21408  cbnz     x20, #0xf21410
00f2140c  bl       #0xbef9e8
00f21410  mov      x1, xzr
00f21414  mov      x0, x20
00f21418  mov      v0.16b, v8.16b
00f2141c  mov      v1.16b, v9.16b
00f21420  mov      v2.16b, v10.16b
00f21424  bl       #0x1fb3344
00f21428  ldr      x20, [x19, #0x70]
00f2142c  cbnz     x20, #0xf21434
00f21430  bl       #0xbef9e8
00f21434  ldr      x20, [x20, #0x10]
00f21438  cbnz     x20, #0xf21440
00f2143c  bl       #0xbef9e8
00f21440  mov      x1, xzr
00f21444  mov      x0, x20
00f21448  bl       #0x1d64a24
00f2144c  ldr      x21, [x19, #0x78]
00f21450  mov      x20, x0
00f21454  cbnz     x21, #0xf2145c
00f21458  bl       #0xbef9e8
00f2145c  mov      x1, xzr
00f21460  mov      x0, x21
00f21464  bl       #0x1d64a24
00f21468  mov      x21, x0
00f2146c  cbnz     x20, #0xf21474
00f21470  bl       #0xbef9e8
00f21474  mov      x2, xzr
00f21478  mov      x0, x20
00f2147c  mov      x1, x21
00f21480  bl       #0x1fb3448
00f21484  ldr      x20, [x19, #0x70]
00f21488  cbnz     x20, #0xf21490
00f2148c  bl       #0xbef9e8
00f21490  ldr      x20, [x20, #0x10]
00f21494  cbnz     x20, #0xf2149c
00f21498  bl       #0xbef9e8
00f2149c  mov      x1, xzr
00f214a0  mov      x0, x20
00f214a4  bl       #0x1d64a24
00f214a8  adrp     x8, #0x204f000
00f214ac  adrp     x9, #0x21c4000
00f214b0  ldr      s0, [x8, #0x20c]
00f214b4  ldr      s2, [x9, #0x8cc]
00f214b8  mov      x20, x0
00f214bc  mov      x1, xzr
00f214c0  fmov     s1, wzr
00f214c4  mov      x0, sp
00f214c8  str      wzr, [sp, #8]
00f214cc  str      xzr, [sp]
00f214d0  bl       #0x1fa7b38
00f214d4  cbnz     x20, #0xf214dc
00f214d8  bl       #0xbef9e8
00f214dc  ldp      s0, s1, [sp]
00f214e0  ldr      s2, [sp, #8]
00f214e4  mov      x1, xzr
00f214e8  mov      x0, x20
00f214ec  bl       #0x1fb2ba8
00f214f0  ldr      x20, [x19, #0x78]
00f214f4  cbz      x20, #0xf21728
00f214f8  fmov     s0, #1.00000000
00f214fc  mov      x0, x20
00f21500  mov      v1.16b, v0.16b
00f21504  bl       #0xf20638
00f21508  mov      x21, x0
00f2150c  b        #0xf21744
00f21510  ldr      x20, [x19, #0x78]
00f21514  cbz      x20, #0xf21594
00f21518  adrp     x8, #0x208b000
00f2151c  ldr      s0, [x8, #0x1fc]
00f21520  mov      x0, x20
00f21524  mov      v1.16b, v0.16b
00f21528  bl       #0xf20638
00f2152c  mov      x21, x0
00f21530  b        #0xf215b4
00f21534  adrp     x8, #0x2a2f000
00f21538  ldr      x8, [x8, #0xef8]
00f2153c  ldr      x0, [x8]
00f21540  ldrb     w8, [x0, #0x10a]
00f21544  tbz      w8, #0, #0xf21554
00f21548  ldr      w8, [x0, #0xbc]
00f2154c  cbnz     w8, #0xf21554
00f21550  bl       #0xbd8b98
00f21554  adrp     x8, #0x2aa7000
00f21558  ldr      x8, [x8, #0x680]
00f2155c  mov      x0, xzr
00f21560  mov      x2, xzr
00f21564  ldr      x1, [x8]
00f21568  adrp     x8, #0x208b000
00f2156c  ldr      s0, [x8, #0x1fc]
00f21570  bl       #0xfd5cf0
00f21574  ldr      x20, [x19, #0x10]
00f21578  strb     wzr, [x19, #0x2c]
00f2157c  cbz      x20, #0xf21664
00f21580  mov      x1, xzr
00f21584  mov      x0, x20
00f21588  bl       #0xd08684
00f2158c  mov      w21, w0
00f21590  b        #0xf2167c
00f21594  bl       #0xbef9e8
00f21598  adrp     x8, #0x208b000
00f2159c  ldr      s0, [x8, #0x1fc]
00f215a0  mov      x0, xzr
00f215a4  mov      v1.16b, v0.16b
00f215a8  bl       #0xf20638
00f215ac  mov      x21, x0
00f215b0  bl       #0xbef9e8
00f215b4  mov      x2, xzr
00f215b8  mov      x0, x20
00f215bc  mov      x1, x21
00f215c0  bl       #0x1fa3a7c
00f215c4  ldrb     w8, [x19, #0x88]
00f215c8  str      x0, [x19, #0x80]
00f215cc  cbnz     w8, #0xf21b58
00f215d0  mov      w8, #6
00f215d4  b        #0xf21b54
00f215d8  adrp     x9, #0x2a5f000
00f215dc  ldr      x9, [x9, #0x928]
00f215e0  adrp     x10, #0x2ad0000
00f215e4  cmp      w8, #2
00f215e8  ldr      x9, [x9]
00f215ec  ldr      x10, [x10, #0xa98]
00f215f0  ldr      x9, [x9, #0xa0]
00f215f4  ldr      x0, [x10]
00f215f8  ldr      x20, [x9]
00f215fc  add      x10, x0, #0x109
00f21600  ldrh     w10, [x10]
00f21604  and      w9, w10, #0x100
00f21608  b.ne     #0xf21768
00f2160c  and      w8, w9, #0xffff
00f21610  cbz      w8, #0xf21620
00f21614  ldr      w8, [x0, #0xbc]
00f21618  cbnz     w8, #0xf21620
00f2161c  bl       #0xbd8b98
00f21620  mov      x0, xzr
00f21624  mov      x1, xzr
00f21628  bl       #0x1fadc70
00f2162c  mov      v8.16b, v0.16b
00f21630  mov      v9.16b, v1.16b
00f21634  mov      v10.16b, v2.16b
00f21638  cbnz     x20, #0xf21640
00f2163c  bl       #0xbef9e8
00f21640  mov      x2, xzr
00f21644  mov      w1, #0x181
00f21648  b        #0xf217a4
00f2164c  bl       #0xbef9e8
00f21650  ldr      x8, [x19, #0x10]
00f21654  ldr      x21, [x20, #0x50]
00f21658  cbz      x8, #0xf219a8
00f2165c  mov      x20, x8
00f21660  b        #0xf219b0
00f21664  bl       #0xbef9e8
00f21668  mov      x0, xzr
00f2166c  mov      x1, xzr
00f21670  bl       #0xd08684
00f21674  mov      w21, w0
00f21678  bl       #0xbef9e8
00f2167c  mov      x2, xzr
00f21680  mov      x0, x20
00f21684  mov      w1, w21
00f21688  bl       #0xd090c0
00f2168c  adrp     x23, #0x2a4a000
00f21690  ldr      x23, [x23, #0x5a0]
00f21694  mov      w21, w0
00f21698  ldr      x8, [x23]
00f2169c  ldrb     w9, [x8, #0x10a]
00f216a0  tbz      w9, #0, #0xf216b8
00f216a4  ldr      w9, [x8, #0xbc]
00f216a8  cbnz     w9, #0xf216b8
00f216ac  mov      x0, x8
00f216b0  bl       #0xbd8b98
00f216b4  ldr      x8, [x23]
00f216b8  ldr      x8, [x8, #0xa0]
00f216bc  ldr      x20, [x19, #0x10]
00f216c0  ldr      w25, [x8, #0x30]
00f216c4  cbz      x20, #0xf216d0
00f216c8  ldr      x22, [x20, #0x50]
00f216cc  b        #0xf21a1c
00f216d0  bl       #0xbef9e8
00f216d4  ldr      x8, [x19, #0x10]
00f216d8  ldr      x22, [x20, #0x50]
00f216dc  cbz      x8, #0xf21a14
00f216e0  mov      x20, x8
00f216e4  b        #0xf21a1c
00f216e8  bl       #0xbef9e8
00f216ec  fmov     s0, #1.00000000
00f216f0  mov      x0, xzr
00f216f4  mov      v1.16b, v0.16b
00f216f8  bl       #0xf20638
00f216fc  mov      x21, x0
00f21700  bl       #0xbef9e8
00f21704  mov      x2, xzr
00f21708  mov      x0, x20
00f2170c  mov      x1, x21
00f21710  bl       #0x1fa3a7c
00f21714  ldrb     w8, [x19, #0x88]
00f21718  str      x0, [x19, #0x80]
00f2171c  cbnz     w8, #0xf21b58
00f21720  mov      w8, #3
00f21724  b        #0xf21b54
00f21728  bl       #0xbef9e8
00f2172c  fmov     s0, #1.00000000
00f21730  mov      x0, xzr
00f21734  mov      v1.16b, v0.16b
00f21738  bl       #0xf20638
00f2173c  mov      x21, x0
00f21740  bl       #0xbef9e8
00f21744  mov      x2, xzr
00f21748  mov      x0, x20
00f2174c  mov      x1, x21
00f21750  bl       #0x1fa3a7c
00f21754  ldrb     w8, [x19, #0x88]
00f21758  str      x0, [x19, #0x80]
00f2175c  cbnz     w8, #0xf21b58
00f21760  mov      w8, #5
00f21764  b        #0xf21b54
00f21768  and      w8, w9, #0xffff
00f2176c  cbz      w8, #0xf2177c
00f21770  ldr      w8, [x0, #0xbc]
00f21774  cbnz     w8, #0xf2177c
00f21778  bl       #0xbd8b98
00f2177c  mov      x0, xzr
00f21780  mov      x1, xzr
00f21784  bl       #0x1fadc70
00f21788  mov      v8.16b, v0.16b
00f2178c  mov      v9.16b, v1.16b
00f21790  mov      v10.16b, v2.16b
00f21794  cbnz     x20, #0xf2179c
00f21798  bl       #0xbef9e8
00f2179c  mov      x2, xzr
00f217a0  mov      w1, #0x182
00f217a4  mov      x0, x20
00f217a8  mov      v0.16b, v8.16b
00f217ac  mov      v1.16b, v9.16b
00f217b0  mov      v2.16b, v10.16b
00f217b4  bl       #0x10ca684
00f217b8  mov      x20, x0
00f217bc  str      x20, [x19, #0x60]
00f217c0  adrp     x8, #0x2a5f000
00f217c4  ldr      x8, [x8, #0x928]
00f217c8  ldr      x8, [x8]
00f217cc  ldr      x8, [x8, #0xa0]
00f217d0  ldr      x21, [x8]
00f217d4  cbnz     x20, #0xf217dc
00f217d8  bl       #0xbef9e8
00f217dc  ldr      x20, [x20, #0x10]
00f217e0  cbnz     x21, #0xf217e8
00f217e4  bl       #0xbef9e8
00f217e8  mov      x3, xzr
00f217ec  mov      w2, #0xdac
00f217f0  mov      x0, x21
00f217f4  mov      x1, x20
00f217f8  bl       #0x10cd5c0
00f217fc  ldr      x20, [x19, #0x60]
00f21800  cbnz     x20, #0xf21808
00f21804  bl       #0xbef9e8
00f21808  ldr      x20, [x20, #0x10]
00f2180c  cbnz     x20, #0xf21814
00f21810  bl       #0xbef9e8
00f21814  mov      x1, xzr
00f21818  mov      x0, x20
00f2181c  bl       #0x1d64a24
00f21820  adrp     x8, #0x2ad0000
00f21824  ldr      x8, [x8, #0xa98]
00f21828  mov      x20, x0
00f2182c  ldr      x8, [x8]
00f21830  ldrb     w9, [x8, #0x10a]
00f21834  tbz      w9, #0, #0xf21848
00f21838  ldr      w9, [x8, #0xbc]
00f2183c  cbnz     w9, #0xf21848
00f21840  mov      x0, x8
00f21844  bl       #0xbd8b98
00f21848  mov      x0, xzr
00f2184c  mov      x1, xzr
00f21850  bl       #0x1fb6394
00f21854  mov      v8.16b, v0.16b
00f21858  mov      v9.16b, v1.16b
00f2185c  mov      v10.16b, v2.16b
00f21860  cbnz     x20, #0xf21868
00f21864  bl       #0xbef9e8
00f21868  mov      x1, xzr
00f2186c  mov      x0, x20
00f21870  mov      v0.16b, v8.16b
00f21874  mov      v1.16b, v9.16b
00f21878  mov      v2.16b, v10.16b
00f2187c  bl       #0x1fb3344
00f21880  ldr      x20, [x19, #0x60]
00f21884  cbnz     x20, #0xf2188c
00f21888  bl       #0xbef9e8
00f2188c  ldr      x20, [x20, #0x10]
00f21890  cbnz     x20, #0xf21898
00f21894  bl       #0xbef9e8
00f21898  mov      x1, xzr
00f2189c  mov      x0, x20
00f218a0  bl       #0x1d64a24
00f218a4  ldr      x21, [x19, #0x78]
00f218a8  mov      x20, x0
00f218ac  cbnz     x21, #0xf218b4
00f218b0  bl       #0xbef9e8
00f218b4  mov      x1, xzr
00f218b8  mov      x0, x21
00f218bc  bl       #0x1d64a24
00f218c0  mov      x21, x0
00f218c4  cbnz     x20, #0xf218cc
00f218c8  bl       #0xbef9e8
00f218cc  mov      x2, xzr
00f218d0  mov      x0, x20
00f218d4  mov      x1, x21
00f218d8  bl       #0x1fb3448
00f218dc  ldr      x20, [x19, #0x60]
00f218e0  cbnz     x20, #0xf218e8
00f218e4  bl       #0xbef9e8
00f218e8  ldr      x20, [x20, #0x10]
00f218ec  cbnz     x20, #0xf218f4
00f218f0  bl       #0xbef9e8
00f218f4  mov      x1, xzr
00f218f8  mov      x0, x20
00f218fc  bl       #0x1d64a24
00f21900  adrp     x8, #0x204f000
00f21904  adrp     x9, #0x21c4000
00f21908  ldr      s0, [x8, #0x20c]
00f2190c  ldr      s2, [x9, #0x8cc]
00f21910  mov      x20, x0
00f21914  mov      x1, xzr
00f21918  fmov     s1, wzr
00f2191c  mov      x0, sp
00f21920  str      wzr, [sp, #8]
00f21924  str      xzr, [sp]
00f21928  bl       #0x1fa7b38
00f2192c  cbnz     x20, #0xf21934
00f21930  bl       #0xbef9e8
00f21934  ldp      s0, s1, [sp]
00f21938  ldr      s2, [sp, #8]
00f2193c  mov      x1, xzr
00f21940  mov      x0, x20
00f21944  bl       #0x1fb2ba8
00f21948  ldr      x20, [x19, #0x78]
00f2194c  cbz      x20, #0xf21968
00f21950  fmov     s0, #1.00000000
00f21954  mov      x0, x20
00f21958  mov      v1.16b, v0.16b
00f2195c  bl       #0xf20638
00f21960  mov      x21, x0
00f21964  b        #0xf21984
00f21968  bl       #0xbef9e8
00f2196c  fmov     s0, #1.00000000
00f21970  mov      x0, xzr
00f21974  mov      v1.16b, v0.16b
00f21978  bl       #0xf20638
00f2197c  mov      x21, x0
00f21980  bl       #0xbef9e8
00f21984  mov      x2, xzr
00f21988  mov      x0, x20
00f2198c  mov      x1, x21
00f21990  bl       #0x1fa3a7c
00f21994  ldrb     w8, [x19, #0x88]
00f21998  str      x0, [x19, #0x80]
00f2199c  cbnz     w8, #0xf21b58
00f219a0  mov      w8, #4
00f219a4  b        #0xf21b54
00f219a8  bl       #0xbef9e8
00f219ac  mov      x20, xzr
00f219b0  mov      x1, xzr
00f219b4  mov      x0, x20
00f219b8  bl       #0xd08684
00f219bc  mov      w20, w0
00f219c0  cbnz     x21, #0xf219c8
00f219c4  bl       #0xbef9e8
00f219c8  ldr      w8, [x21, #0x18]
00f219cc  sxtw     x22, w20
00f219d0  cmp      w20, w8
00f219d4  b.lo     #0xf219e4
00f219d8  bl       #0xbf05d4
00f219dc  mov      x1, xzr
00f219e0  bl       #0xbef8cc
00f219e4  add      x8, x21, x22, lsl #2
00f219e8  ldr      w9, [x19, #0x44]
00f219ec  ldr      w10, [x8, #0x20]
00f219f0  add      w9, w10, w9
00f219f4  str      w9, [x8, #0x20]
00f219f8  ldr      w8, [x19, #0x30]
00f219fc  ldr      w9, [x19, #0x44]
00f21a00  ldr      x20, [x19, #0x78]
00f21a04  sub      w8, w8, w9
00f21a08  str      w8, [x19, #0x30]
00f21a0c  cbnz     x20, #0xf21b28
00f21a10  b        #0xf21b24
00f21a14  bl       #0xbef9e8
00f21a18  mov      x20, xzr
00f21a1c  mov      x1, xzr
00f21a20  mov      x0, x20
00f21a24  bl       #0xd08684
00f21a28  mov      w20, w0
00f21a2c  cmp      w21, w25
00f21a30  b.ge     #0xf21aa4
00f21a34  cbnz     x22, #0xf21a3c
00f21a38  bl       #0xbef9e8
00f21a3c  ldr      w8, [x22, #0x18]
00f21a40  sxtw     x21, w20
00f21a44  cmp      w20, w8
00f21a48  b.lo     #0xf21a58
00f21a4c  bl       #0xbf05d4
00f21a50  mov      x1, xzr
00f21a54  bl       #0xbef8cc
00f21a58  add      x8, x22, x21, lsl #2
00f21a5c  ldr      w9, [x19, #0x34]
00f21a60  ldr      w10, [x8, #0x20]
00f21a64  add      w9, w10, w9
00f21a68  str      w9, [x8, #0x20]
00f21a6c  ldr      x20, [x19, #0x10]
00f21a70  cbnz     x20, #0xf21a78
00f21a74  bl       #0xbef9e8
00f21a78  mov      x1, xzr
00f21a7c  mov      x0, x20
00f21a80  bl       #0xd08684
00f21a84  ldr      x22, [x19, #0x10]
00f21a88  mov      w21, w0
00f21a8c  cbz      x22, #0xf21b80
00f21a90  mov      x1, xzr
00f21a94  mov      x0, x22
00f21a98  bl       #0xd08684
00f21a9c  mov      w23, w0
00f21aa0  b        #0xf21b98
00f21aa4  ldr      x0, [x23]
00f21aa8  ldr      x21, [x19, #0x20]
00f21aac  ldrb     w8, [x0, #0x10a]
00f21ab0  tbz      w8, #0, #0xf21ac4
00f21ab4  ldr      w8, [x0, #0xbc]
00f21ab8  cbnz     w8, #0xf21ac4
00f21abc  bl       #0xbd8b98
00f21ac0  ldr      x0, [x23]
00f21ac4  ldr      x8, [x0, #0xa0]
00f21ac8  ldr      w23, [x8, #0x30]
00f21acc  cbnz     x21, #0xf21ad4
00f21ad0  bl       #0xbef9e8
00f21ad4  add      w1, w23, #1
00f21ad8  mov      x2, xzr
00f21adc  mov      x0, x21
00f21ae0  bl       #0x10c407c
00f21ae4  mov      w21, w0
00f21ae8  cbnz     x22, #0xf21af0
00f21aec  bl       #0xbef9e8
00f21af0  ldr      w8, [x22, #0x18]
00f21af4  sxtw     x23, w20
00f21af8  sub      w21, w21, #1
00f21afc  cmp      w20, w8
00f21b00  b.lo     #0xf21b10
00f21b04  bl       #0xbf05d4
00f21b08  mov      x1, xzr
00f21b0c  bl       #0xbef8cc
00f21b10  add      x8, x22, x23, lsl #2
00f21b14  str      w21, [x8, #0x20]
00f21b18  ldr      x20, [x19, #0x78]
00f21b1c  str      wzr, [x19, #0x30]
00f21b20  cbnz     x20, #0xf21b28
00f21b24  bl       #0xbef9e8
00f21b28  mov      x0, x20
00f21b2c  bl       #0xf1f1d8
00f21b30  ldr      x20, [x24]
00f21b34  cbnz     x20, #0xf21b3c
00f21b38  bl       #0xbef9e8
00f21b3c  ldrb     w8, [x20, #0x104]
00f21b40  cbnz     w8, #0xf20e2c
00f21b44  ldrb     w8, [x19, #0x88]
00f21b48  str      xzr, [x19, #0x80]
00f21b4c  cbnz     w8, #0xf21b58
00f21b50  mov      w8, #2
00f21b54  str      w8, [x19, #0x8c]
00f21b58  mov      w0, #1
00f21b5c  sub      sp, x29, #0x60
00f21b60  ldp      x29, x30, [sp, #0x60]
00f21b64  ldp      x20, x19, [sp, #0x50]
00f21b68  ldp      x22, x21, [sp, #0x40]
00f21b6c  ldp      x24, x23, [sp, #0x30]
00f21b70  ldp      x26, x25, [sp, #0x20]
00f21b74  ldp      d9, d8, [sp, #0x10]
00f21b78  ldp      d11, d10, [sp], #0x70
00f21b7c  ret
00f21b80  bl       #0xbef9e8
00f21b84  mov      x0, xzr
00f21b88  mov      x1, xzr
00f21b8c  bl       #0xd08684
00f21b90  mov      w23, w0
00f21b94  bl       #0xbef9e8
00f21b98  mov      x2, xzr
00f21b9c  mov      x0, x22
00f21ba0  mov      w1, w23
00f21ba4  bl       #0xd090c0
00f21ba8  mov      w22, w0
00f21bac  cbnz     x20, #0xf21bb4
00f21bb0  bl       #0xbef9e8
00f21bb4  add      w2, w22, #1
00f21bb8  mov      x3, xzr
00f21bbc  mov      x0, x20
00f21bc0  mov      w1, w21
00f21bc4  bl       #0xd09168
00f21bc8  ldp      w8, w9, [x19, #0x30]
00f21bcc  adrp     x10, #0x2aaf000
00f21bd0  ldr      x10, [x10, #0xa20]
00f21bd4  ldr      x21, [x19, #0x78]
00f21bd8  sub      w8, w8, w9
00f21bdc  str      w8, [x19, #0x30]
00f21be0  ldr      x8, [x10]
00f21be4  ldr      x8, [x8, #0xa0]
00f21be8  ldr      x20, [x8]
00f21bec  mov      x8, x21
00f21bf0  cbnz     x21, #0xf21c00
00f21bf4  bl       #0xbef9e8
00f21bf8  ldr      x8, [x24]
00f21bfc  cbz      x8, #0xf21cc8
00f21c00  ldr      x21, [x21, #0xe0]
00f21c04  ldr      w22, [x8, #0xdc]
00f21c08  cbnz     x20, #0xf21c10
00f21c0c  bl       #0xbef9e8
00f21c10  mov      w4, wzr
00f21c14  mov      x5, xzr
00f21c18  mov      w3, #-1
00f21c1c  mov      x0, x20
00f21c20  mov      x1, x21
00f21c24  mov      w2, w22
00f21c28  bl       #0xe615c0
00f21c2c  ldr      x20, [x24]
00f21c30  cbnz     x20, #0xf21c38
00f21c34  bl       #0xbef9e8
00f21c38  mov      x0, x20
00f21c3c  bl       #0xf1f1d8
00f21c40  ldr      x20, [x24]
00f21c44  cbnz     x20, #0xf21c4c
00f21c48  bl       #0xbef9e8
00f21c4c  ldr      x20, [x20, #0xe0]
00f21c50  cbnz     x20, #0xf21c58
00f21c54  bl       #0xbef9e8
00f21c58  mov      x1, xzr
00f21c5c  fmov     s0, #1.00000000
00f21c60  mov      x0, x20
00f21c64  bl       #0x107ab18
00f21c68  ldr      x20, [x19, #0x78]
00f21c6c  ldr      x21, [x19, #0x10]
00f21c70  cbz      x20, #0xf21c88
00f21c74  mov      x0, x20
00f21c78  mov      x1, x21
00f21c7c  bl       #0xf20850
00f21c80  mov      x21, x0
00f21c84  b        #0xf21ca0
00f21c88  bl       #0xbef9e8
00f21c8c  mov      x0, xzr
00f21c90  mov      x1, x21
00f21c94  bl       #0xf20850
00f21c98  mov      x21, x0
00f21c9c  bl       #0xbef9e8
00f21ca0  mov      x2, xzr
00f21ca4  mov      x0, x20
00f21ca8  mov      x1, x21
00f21cac  bl       #0x1fa3a7c
00f21cb0  ldrb     w8, [x19, #0x88]
00f21cb4  str      x0, [x19, #0x80]
00f21cb8  mov      w0, #1
00f21cbc  cbnz     w8, #0xf21b5c
00f21cc0  str      w0, [x19, #0x8c]
00f21cc4  b        #0xf21b5c
00f21cc8  bl       #0xbef9e8
