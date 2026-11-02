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
JOB = ROOT / "workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_richtap_rtp_work_20261101.json"
SOURCE = ROOT / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_137_richtap_rtp_work.c"
REPORT = HERE / "host_harness_report.json"
IMAGE = json.loads(JOB.read_text(encoding="utf-8"))["docker"]["image"]
SCRIPT = "set -eu; ulimit -c 0; gcc -std=gnu11 -Wall -Wextra -Werror -O1 -g -fsanitize=address,undefined -fno-omit-frame-pointer -I/harness/include /harness/richtap_rtp_work_host_harness.c -o /tmp/richtap-work-host; /tmp/richtap-work-host"
command = [
    "docker", "run", "--rm", "--network", "none",
    "-v", f"{HERE}:/harness:ro",
    "-v", f"{SOURCE}:/candidate.c:ro",
    "--entrypoint", "sh", IMAGE, "-c", SCRIPT,
]
result = subprocess.run(command, capture_output=True, text=True, timeout=180)
passed = result.returncode == 0 and "PASS: 6 worker paths" in result.stdout

def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

report = {
    "schema_version": "1.0",
    "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
    "passed": passed,
    "image": IMAGE,
    "source": str(SOURCE.relative_to(ROOT)).replace("\\", "/"),
    "source_sha256": digest(SOURCE),
    "harness_sha256": digest(HERE / "richtap_rtp_work_host_harness.c"),
    "compiler_flags": ["-std=gnu11", "-Wall", "-Wextra", "-Werror", "-O1", "-g", "-fsanitize=address,undefined", "-fno-omit-frame-pointer"],
    "scenarios": [
        "drain two ready FIFO nodes and preserve callback order",
        "partially copy a node without advancing the FIFO cursor",
        "stop on the empty sentinel and propagate rtp_start failure",
        "bound invalid-state retries to 31 sleeps",
        "execute the looping refill callback path",
        "stop refill when FIFO almost-full is reported",
    ],
    "returncode": result.returncode,
    "stdout": result.stdout,
    "stderr": result.stderr,
    "command": command,
}
REPORT.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
print(json.dumps({"passed": passed, "report": str(REPORT), "returncode": result.returncode}, indent=2))
if not passed:
    print(result.stdout, file=sys.stderr)
    print(result.stderr, file=sys.stderr)
    raise SystemExit(1)
