# vsd-fpga-orfs-sclcp8d

## Restore CP8D after a Codespaces rebuild

Upload `SCL_0.8 µm PDK.zip` to the repository root, then run:

```bash
cd /workspaces/vsd-fpga-orfs-sclcp8d
mkdir -p pdk-input work/pdks /tmp/orfs
mv -- 'SCL_0.8 µm PDK.zip' pdk-input/cp8d-pdk.zip
python3 scripts/install_cp8d.py
bash scripts/doctor_cp8d.sh
```

The installer verifies the archive and extracts it into `work/pdks`.
The doctor checks the CP8D files, tools, and synthesis probe.
Neither the archive nor the extracted PDK should be committed.
