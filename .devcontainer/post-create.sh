#!/usr/bin/env bash
set -euo pipefail

cd /workspaces/vsd-fpga-orfs-sclcp8d
mkdir -p /tmp/orfs

for module in src/fpga src/orfs; do
    if [ ! -e "$module/.git" ]; then
        git submodule update --init -- "$module"
    fi
done

echo "FPGA: $(git -C src/fpga rev-parse HEAD)"
echo "ORFS: $(git -C src/orfs rev-parse HEAD)"
