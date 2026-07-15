#!/usr/bin/env python3
"""Validate the published zte_ir evidence without touching a device."""

from __future__ import annotations

import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DRIVER = ROOT / "kernel_development" / "drivers" / "zte_ir"
EVIDENCE = ROOT / "reverse_engineering" / "validation" / "reconstructed" / "zte_ir"
CANDIDATE_SHA256 = "1a1d1362729f91510ec7dca7ffb1c4865105abef8c3ded90f7c8b00a6d8d4ffc"


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def load(name: str) -> dict:
    return json.loads((EVIDENCE / name).read_text(encoding="utf-8"))


def main() -> int:
    candidate = DRIVER / "zte_ir.ko"
    audit = load("offline_reconstruction_audit.json")["drivers"][0]
    build = load("driver_audit_final.json")["drivers"][0]
    host = load("host_test_report.json")
    kcfi = load("kcfi_current_surface.json")
    pass_gates = [gate["name"] for gate in audit["gates"] if gate["status"] == "PASS"]
    incomplete = [gate["name"] for gate in audit["gates"] if gate["status"] == "INCOMPLETE"]
    deferred = [gate["name"] for gate in audit["gates"] if gate["status"] == "DEFERRED"]
    checks = {
        "candidate_exists": candidate.is_file(),
        "candidate_sha256": candidate.is_file() and sha256(candidate) == CANDIDATE_SHA256,
        "nine_offline_gates_pass": len(pass_gates) == 9,
        "only_o10_incomplete": incomplete == ["O10 Independent review"],
        "hardware_deferred": deferred == ["Hardware"],
        "double_clean_build": (
            build.get("status") == "static_verified"
            and build.get("build", {}).get("reproducible") is True
            and build.get("build", {}).get("first_build", {}).get("sha256") == CANDIDATE_SHA256
            and build.get("build", {}).get("second_build", {}).get("sha256") == CANDIDATE_SHA256
        ),
        "exact_kmi_surface": build.get("checks", {}).get("undefined_symbols_match") is True,
        "host_harness": host.get("passed") is True and host.get("reproducible") is True,
        "kcfi_8_of_8": kcfi.get("passed") is True and len(kcfi.get("comparisons", [])) == 8,
    }
    passed = all(checks.values())
    print(json.dumps({
        "driver": "zte_ir",
        "mode": "offline_only",
        "status": "O0_O9_PASS_O10_PENDING" if passed else "FAILED",
        "candidate_sha256": CANDIDATE_SHA256,
        "checks": checks,
        "hardware_validation": "DEFERRED",
        "hardware_runbook": str(DRIVER / "GUIA_TESTE_CONTROLADO_OUTRO_AMBIENTE.md"),
    }, indent=2, sort_keys=True))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
