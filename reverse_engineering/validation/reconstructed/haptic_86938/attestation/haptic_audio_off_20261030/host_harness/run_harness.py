#!/usr/bin/env python3
from pathlib import Path
import hashlib
import json
import subprocess
import sys

here = Path(__file__).resolve().parent
repo = next(parent for parent in here.parents if (parent / ".git").exists())
container_script = here / "run_harness_container.sh"
container_script.write_bytes(
    container_script.read_bytes().replace(bytes([13, 10]), bytes([10]))
)
command = [
    "docker", "run", "--rm", "-v", str(repo).replace("\\", "/") + ":/work",
    "-w", "/work", "nubia-sm8850-kernel-builder:nx809j-repro", "bash",
    "/work/" + str(container_script.relative_to(repo)).replace("\\", "/"),
]
result = subprocess.run(command, text=True, capture_output=True)
source = repo / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_129_audio_off.c"
report = {
    "schema_version": "1.0",
    "status": "PASS" if result.returncode == 0 else "FAIL",
    "returncode": result.returncode,
    "candidate_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
    "docker_image": "nubia-sm8850-kernel-builder:nx809j-repro",
    "sanitizers": ["AddressSanitizer", "UndefinedBehaviorSanitizer"],
    "stdout": result.stdout,
    "stderr": result.stderr,
}
(here / "harness_result.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
print(result.stdout, end="")
if result.stderr:
    print(result.stderr, file=sys.stderr, end="")
raise SystemExit(result.returncode)
