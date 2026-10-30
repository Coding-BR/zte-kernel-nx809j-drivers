#!/bin/bash
set -eu
cd /work
gcc -std=gnu11 -O1 -g -fsanitize=address,undefined -fno-omit-frame-pointer \
 -I/work/reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw8693x_container_update_20261030/host_harness/include \
 -Ikernel_development/drivers/reconstructed/haptic_86938 \
 reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw8693x_container_update_20261030/host_harness/container_update_harness.c \
 -o /tmp/container-update-harness
ASAN_OPTIONS=detect_leaks=0 /tmp/container-update-harness
set +e
ASAN_OPTIONS=detect_leaks=0 /tmp/container-update-harness oob >/tmp/container-update-oob.log 2>&1
status=$?
set -e
if [ "$status" -eq 0 ]; then echo "FAIL expected short-payload OOB"; exit 1; fi
python3 - <<'PY'
from pathlib import Path
s=Path("/tmp/container-update-oob.log").read_text(errors="replace")
if "AddressSanitizer: heap-buffer-overflow" not in s:
 print(s); raise SystemExit("FAIL expected ASan OOB evidence missing")
print("KNOWN_STOCK_DEFECT_REPRODUCED len=3 read at data+2")
PY
