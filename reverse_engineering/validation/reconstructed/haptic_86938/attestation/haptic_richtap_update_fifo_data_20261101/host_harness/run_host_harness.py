#!/usr/bin/env python3
from __future__ import annotations
import datetime as dt
import hashlib
import json
import re
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / "workspace_tools/reconstruction_pipeline/run_hard_driver_protocol.py").is_file())
JOB = ROOT / "workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_richtap_update_fifo_data_20261101.json"
SOURCE = ROOT / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_136_richtap_update_fifo_data.c"
REPORT = HERE / "host_harness_report.json"
IMAGE = json.loads(JOB.read_text(encoding="utf-8"))["docker"]["image"]
CONTAINER_SCRIPT = r"""
set -eu
ulimit -c 0
gcc -std=gnu11 -Wall -Wextra -Werror -O1 -g -fsanitize=address,undefined -fno-omit-frame-pointer -I/harness/host_include /harness/richtap_update_fifo_data_host_harness.c /candidate.c -o /tmp/richtap-host
/tmp/richtap-host >/tmp/richtap-normal.log 2>&1
cat /tmp/richtap-normal.log
set +e
/tmp/richtap-host invalid-offset >/tmp/richtap-trap.log 2>&1
trap_rc=$?
set -e
test "$trap_rc" -ne 0
printf 'INVALID_OFFSET_TRAP_EXIT=%s\n' "$trap_rc"
"""
command = [
    "docker", "run", "--rm", "--network", "none",
    "-v", f"{HERE}:/harness:ro",
    "-v", f"{SOURCE}:/candidate.c:ro",
    "--entrypoint", "sh", IMAGE, "-c", CONTAINER_SCRIPT,
]
result = subprocess.run(command, capture_output=True, text=True, timeout=180)
match = re.search(r"INVALID_OFFSET_TRAP_EXIT=(\d+)", result.stdout)
passed = (
    result.returncode == 0
    and "PASS: partial copy, cross-node drain, last valid offset, empty FIFO, invalid-state retries" in result.stdout
    and match is not None
    and int(match.group(1)) != 0
)
def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()
report = {
    "schema_version": "1.0",
    "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
    "passed": passed,
    "image": IMAGE,
    "source": str(SOURCE.relative_to(ROOT)).replace("\\", "/"),
    "source_sha256": sha256(SOURCE),
    "harness_sha256": sha256(HERE / "richtap_update_fifo_data_host_harness.c"),
    "compiler_flags": ["-std=gnu11", "-Wall", "-Wextra", "-Werror", "-O1", "-fsanitize=address,undefined", "-fno-omit-frame-pointer"],
    "scenarios": [
        "partial copy from nonzero FIFO offset",
        "drain one node and continue into the next",
        "copy the final valid payload byte at offset 1000",
        "empty FIFO callback with zero copied bytes",
        "invalid state retry count and warning",
        "offset 1001 reaches the bounds trap",
    ],
    "normal_exit_code": result.returncode,
    "normal_and_trap_stdout": result.stdout,
    "stderr": result.stderr,
    "invalid_offset_trap_exit_code": int(match.group(1)) if match else None,
    "command": command,
}
REPORT.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
print(json.dumps({"passed": passed, "report": str(REPORT), "exit_code": result.returncode}, indent=2))
if not passed:
    print(result.stdout, file=sys.stderr)
    print(result.stderr, file=sys.stderr)
    raise SystemExit(1)
