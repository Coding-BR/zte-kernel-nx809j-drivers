#!/usr/bin/env python3
from __future__ import annotations

import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


HERE = Path(__file__).resolve().parent
EVIDENCE = HERE.parent
REPO = EVIDENCE.parents[5]
IMAGE = "nubia-sm8850-kernel-builder:latest"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


inputs = [
    REPO / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_126_aw8693x_creat_node.c",
    HERE / "aw8693x_creat_node_harness.c",
    HERE / "run_harness.sh",
    *sorted((HERE / "include").rglob("*.h")),
]
argv = [
    "docker", "run", "--rm",
    "-v", f"{REPO}:/repo:ro",
    "-v", f"{EVIDENCE}:/evidence:ro",
    "--entrypoint", "/bin/sh", IMAGE,
    "/evidence/host_harness/run_harness.sh",
]
result = subprocess.run(argv, capture_output=True, text=True, check=False)
report = {
    "schema_version": "1.0",
    "generated_utc": datetime.now(timezone.utc).isoformat(),
    "status": "PASS" if result.returncode == 0 else "FAIL",
    "returncode": result.returncode,
    "command": argv,
    "container_image": IMAGE,
    "input_hashes": {
        str(path.relative_to(REPO)) if path.is_relative_to(REPO) else str(path.relative_to(EVIDENCE)): {
            "sha256": sha256(path),
            "size": path.stat().st_size,
        }
        for path in inputs
    },
    "stdout": result.stdout,
    "stderr": result.stderr,
    "scope": [
        "sysfs_create_group receives the pointer at haptic+0xf8 and the reconstructed group",
        "five ordered attribute names, 0644 modes, callback pointers, and NULL terminator",
        "success and positive returns normalize to zero",
        "negative return is preserved and emits the exact stock log format and arguments",
    ],
    "limitations": [
        "host harness stubs sysfs_create_group and does not prove kernel sysfs lifetime or hardware behavior",
        "kernel ABI and code generation are covered by the separate Docker/Joern/KCFI/assembly gates",
    ],
}
(EVIDENCE / "host_harness" / "harness_result.json").write_text(
    json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8"
)
print(json.dumps({"status": report["status"], "report": str(EVIDENCE / "host_harness" / "harness_result.json"), "stdout": result.stdout, "stderr": result.stderr}))
raise SystemExit(result.returncode)
