#!/usr/bin/env python3
from __future__ import annotations
import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / "workspace_tools/reconstruction_pipeline/run_hard_driver_protocol.py").is_file())
DRIVER = ROOT / "kernel_development/drivers/reconstructed/haptic_86938"
SOURCE = DRIVER / "haptic_86938_fn_136_richtap_update_fifo_data.c"
HEADER = DRIVER / "haptic_86938_internal.h"
JOB = ROOT / "workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_richtap_fifo_integrity_20261103.json"
IMAGE = json.loads(JOB.read_text(encoding="utf-8"))["docker"]["image"]
container_script = r"""
set -eu
ulimit -c 0
gcc -std=gnu11 -Wall -Wextra -Werror -O1 -g -fsanitize=address,undefined -fno-omit-frame-pointer -I/harness/host_include -I/source /harness/fifo_integrity_host_harness.c /source/haptic_86938_fn_136_richtap_update_fifo_data.c -o /tmp/fifo-integrity-host
/tmp/fifo-integrity-host
"""
command = [
    "docker", "run", "--rm", "--network", "none",
    "-v", f"{HERE}:/harness:ro", "-v", f"{DRIVER}:/source:ro",
    "--entrypoint", "sh", IMAGE, "-c", container_script,
]
result = subprocess.run(command, capture_output=True, text=True, timeout=240)

def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

report = {
    "schema_version": "1.0",
    "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
    "passed": result.returncode == 0 and "PASS: FIFO bounds" in result.stdout,
    "image": IMAGE,
    "sources": {
        str(SOURCE.relative_to(ROOT)).replace("\\", "/"): sha256(SOURCE),
        str(HEADER.relative_to(ROOT)).replace("\\", "/"): sha256(HEADER),
    },
    "harness_sha256": sha256(HERE / "fifo_integrity_host_harness.c"),
    "compiler_flags": ["-std=gnu11", "-Wall", "-Wextra", "-Werror", "-O1", "-fsanitize=address,undefined", "-fno-omit-frame-pointer"],
    "scenarios": [
        "partial offset and cross-node drain",
        "maximum 16000-byte transfer",
        "last-node wrap and bounded zero-size ring",
        "unaligned, below-pool and end-of-pool cursor rejection",
        "negative and oversized data_size",
        "negative and excessive cursor count",
        "wrong aligned and out-of-pool next pointer rejection",
        "16001-byte request rejection",
    ],
    "returncode": result.returncode,
    "stdout": result.stdout,
    "stderr": result.stderr,
    "command": command,
}
(HERE / "host_harness_report.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
print(json.dumps({"passed": report["passed"], "returncode": result.returncode, "stdout": result.stdout, "stderr": result.stderr}, indent=2))
if not report["passed"]:
    raise SystemExit(1)

