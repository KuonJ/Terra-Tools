"""Archive relevant ARM64 functions from the already extracted client library."""
import hashlib
from pathlib import Path
import capstone

root = Path(__file__).resolve().parents[1]
source = root / 'user-data/libil2cpp.so'
blob = source.read_bytes()
decoder = capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM)
functions = [
    ('Character.SetJobLevel', 0xD09168, 0xD09254),
    ('Character.SetJobLevel_bin', 0xD09B28, 0xD0A2A8),
    ('Character.GetJobLevel_bin', 0xD0A714, 0xD0A7F4),
    ('Character.UnlockJob', 0xD0B8D4, 0xD0B9FC),
    ('Character.GetExpToNextLevel', 0xD0BCA8, 0xD0BE94),
    ('ChrJobParams.GetEXPAt', 0x10C407C, 0x10C4150),
    ('UserData.totalEnergy_and_paidEnergy', 0x19D7F70, 0x19D7FA0),
    ('AppServerUtil.LoadUserdataFromJson', 0xDB6010, 0xDB8328),
    ('UITeamStateItem.AddExp.MoveNext', 0xF20C1C, 0xF21CCC),
]
lines = [f'; source: {source.name}', f'; sha256: {hashlib.sha256(blob).hexdigest()}',
         '; Offsets/names cross-checked against user-data/dump.cs. Not a runtime execution trace.']
for name, start, end in functions:
    lines += ['', f'; {name} [{start:#x}, {end:#x})']
    lines += [f'{i.address:08x}  {i.mnemonic:8} {i.op_str}'.rstrip()
              for i in decoder.disasm(blob[start:end], start)]
target = root / 'docs/audits/client-save-5.5.7-arm64.asm'
target.parent.mkdir(parents=True, exist_ok=True)
target.write_text('\n'.join(lines) + '\n')
print(f'Archived {len(functions)} functions; SHA-256 {hashlib.sha256(blob).hexdigest()}')
