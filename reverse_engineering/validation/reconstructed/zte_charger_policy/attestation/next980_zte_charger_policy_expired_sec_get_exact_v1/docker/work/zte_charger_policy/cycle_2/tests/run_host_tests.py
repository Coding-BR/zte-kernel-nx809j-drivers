#!/usr/bin/env python3
"""Build and run the zte_charger_policy host harness twice."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path

FUNCTIONS = [
    "charger_policy_cap_max_get", "charger_policy_cap_max_set",
    "charger_policy_cap_min_get", "charger_policy_cap_min_set",
    "charger_policy_check_soc_reach_min", "charger_policy_check_usb_present",
    "charger_policy_ctrl_charging_enable", "charger_policy_demo_sts_get",
    "charger_policy_demo_sts_set", "charger_policy_disable_cas",
    "charger_policy_enable_status_get", "charger_policy_enable_status_set",
    "charger_policy_expired_sec_get", "charger_policy_expired_sec_set",
    "charger_policy_expired_sts_get", "charger_policy_force_disching_sec_get",
    "charger_policy_force_disching_sec_set", "charger_policy_get_prop_by_name",
    "charger_policy_get_status", "charger_policy_notifier_switch",
    "charger_policy_probe", "charger_policy_probe_work", "charger_policy_remove",
    "charger_policy_status_disable", "charger_policy_status_forcedischging",
    "charger_policy_status_ide", "charger_policy_status_runchging",
    "charger_policy_status_rundischging", "charger_policy_timeout_alarm_cb",
    "charger_policy_timeout_handler_work", "cleanup_module", "init_module",
    "policy_external_power_changed", "policy_property_is_writeable",
    "policy_psy_get_property", "policy_psy_set_property",
    "zte_charger_policy_get_prop_by_name", "zte_charger_policy_set_prop_by_name",
]

CALLBACKS = {
    "charger_policy_cap_max_get", "charger_policy_cap_max_set",
    "charger_policy_cap_min_get", "charger_policy_cap_min_set",
    "charger_policy_demo_sts_get", "charger_policy_demo_sts_set",
    "charger_policy_enable_status_get", "charger_policy_enable_status_set",
    "charger_policy_expired_sec_get", "charger_policy_expired_sec_set",
    "charger_policy_expired_sts_get", "charger_policy_force_disching_sec_get",
    "charger_policy_force_disching_sec_set", "policy_external_power_changed",
    "policy_property_is_writeable", "policy_psy_get_property", "policy_psy_set_property",
}
STATE = {
    "charger_policy_status_disable", "charger_policy_status_forcedischging",
    "charger_policy_status_ide", "charger_policy_status_runchging",
    "charger_policy_status_rundischging", "charger_policy_timeout_handler_work",
}
PROBE = {"charger_policy_probe", "charger_policy_probe_work", "charger_policy_remove"}
ALARM = {"charger_policy_timeout_alarm_cb", "charger_policy_notifier_switch", "charger_policy_get_status"}
MODULE = {"init_module", "cleanup_module"}

def test_id(function: str) -> str:
    if function in CALLBACKS:
        return "test_callbacks"
    if function in STATE:
        return "test_state_machine;test_failure_paths"
    if function in PROBE:
        return "test_probe_remove_and_module"
    if function in ALARM:
        return "test_alarm_notifier_and_status"
    if function in MODULE:
        return "test_probe_remove_and_module/module_entrypoints"
    return "test_property_helpers;test_failure_paths"

def sha(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()

def run(command: list[str]) -> dict:
    result = subprocess.run(command, capture_output=True, text=True,
                            encoding="utf-8", errors="replace", timeout=120)
    return {"argv": command, "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}

def main() -> int:
    tests = Path(__file__).resolve().parent
    driver = tests.parent
    if driver.parent.name == "curated":
        validation = driver.parent.parent / "validation" / "zte_charger_policy"
    else:
        repository = driver.parents[3]
        validation = (repository / "reverse_engineering" / "validation" /
                      "reconstructed" / "zte_charger_policy")
    output = validation / "host"
    output.mkdir(parents=True, exist_ok=True)
    compile_reports, run_reports, binaries = [], [], []

    for suffix in ("a", "b"):
        binary = output / f"host_test_{suffix}"
        command = [
            "docker", "run", "--rm", "-v", f"{driver}:/source:ro",
            "-v", f"{output}:/output", "-v",
            "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang", "-std=gnu11", "-O2",
            "-Wall", "-Wextra", "-Werror", "-Wno-unused-parameter",
            "/source/tests/host_test.c", "-o", f"/output/{binary.name}",
        ]
        compile_reports.append(run(command))
        if compile_reports[-1]["returncode"] or not binary.is_file():
            break
        binaries.append({"path": str(binary), "size": binary.stat().st_size,
                         "sha256": sha(binary)})
        run_reports.append(run([
            "docker", "run", "--rm", "-v", f"{output}:/output:ro",
            "nubia-sm8850-kernel-builder:latest", f"/output/{binary.name}",
        ]))

    reproducible = (
        len(binaries) == 2
        and binaries[0]["sha256"] == binaries[1]["sha256"]
        and binaries[0]["size"] == binaries[1]["size"]
    )
    passed = (
        reproducible
        and len(run_reports) == 2
        and all(item["returncode"] == 0 for item in compile_reports + run_reports)
        and all("PASS zte_charger_policy host tests" in item["stdout"]
                for item in run_reports)
        and len(FUNCTIONS) == 38
        and len(set(FUNCTIONS)) == 38
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_charger_policy",
        "source": str(driver / "zte_charger_policy.c"),
        "test_source": str(tests / "host_test.c"),
        "covered_functions": FUNCTIONS,
        "coverage_evidence": [
            {"function": function, "test_id": test_id(function)}
            for function in FUNCTIONS
        ],
        "compile_reports": compile_reports,
        "run_reports": run_reports,
        "binaries": binaries,
        "reproducible": reproducible,
        "passed": passed,
    }
    report = validation / "host_test_report.json"
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"report": str(report), "passed": passed,
                      "reproducible": reproducible,
                      "covered_functions": len(FUNCTIONS)}))
    return 0 if passed else 1

if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
