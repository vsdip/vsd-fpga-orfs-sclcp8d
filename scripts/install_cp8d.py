from hashlib import sha256
from io import BytesIO
from pathlib import Path
from zipfile import ZipFile

repo = Path(__file__).resolve().parents[1]
archive = repo / "pdk-input/cp8d-pdk.zip"
output = repo / "work/pdks"

expected_outer = "5eea81949cd8c19b0456e96e07e35bc0a8697dec7d5f82bbaf6a75dc22e84a18"
expected_inner = "bce42e862018c4edd8db66270e627442274c683d03b2549ef619a0e074d3b7fa"

if sha256(archive.read_bytes()).hexdigest() != expected_outer:
    raise SystemExit("CP8D outer ZIP checksum differs from the attached PDK")

with ZipFile(archive) as outer:
    payload = outer.read(
        "SCL_CP8D_PDK_v1/digital_cp8d/my_dtech_cp8d.zip"
    )

if sha256(payload).hexdigest() != expected_inner:
    raise SystemExit("CP8D digital ZIP checksum mismatch")

with ZipFile(BytesIO(payload)) as inner:
    for entry in inner.infolist():
        path = Path(entry.filename)
        if path.is_absolute() or ".." in path.parts:
            raise SystemExit(f"Unsafe ZIP entry: {entry.filename}")
    inner.extractall(output)

pdk = (
    output
    / "my_dtech_cp8d/Open_Source_SCL_0.8micron_PDK_digital"
    / "open_source_scl_cp8d/open_pdks/scl_cp8d"
)

required = (
    "libs.ref/digital_cp8d/lef/core_cp8d.lef",
    "libs.ref/digital_cp8d/lib/cp8d_core_typ.lib",
    "libs.tech/openlane/digital_cp8d/lef/tech_cp8d.lef",
    "libs.tech/openrcx/scl800.rcx.lib",
)
for name in required:
    if not (pdk / name).is_file():
        raise SystemExit(f"Missing CP8D asset: {name}")

print(f"PASS: verified CP8D digital PDK at {pdk}")
print(f"PDK_ROOT={pdk.parent}")
print("PDK=scl_cp8d")
