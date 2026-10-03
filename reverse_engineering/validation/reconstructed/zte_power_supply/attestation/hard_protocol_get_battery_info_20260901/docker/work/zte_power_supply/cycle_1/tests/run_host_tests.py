#!/usr/bin/env python3
"""Build and run the zte_power_supply host harness twice."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path

FUNCTIONS = [
    "__zte_power_supply_changed_work",
    "__zte_power_supply_find_supply_from_node",
    "__zte_power_supply_populate_supplied_from",
    "__zte_power_supply_register",
    "cleanup_module",
    "device_init_wakeup",
    "init_module",
    "power_supply_attr_is_visible",
    "zte_devm_power_supply_get_by_phandle",
    "zte_devm_power_supply_put",
    "zte_devm_power_supply_register",
    "zte_devm_power_supply_register_no_ws",
    "zte_devm_power_supply_release",
    "zte_power_supply_batinfo_ocv2cap",
    "zte_power_supply_changed",
    "zte_power_supply_changed_work",
    "zte_power_supply_check_supplies",
    "zte_power_supply_deferred_register_work",
    "zte_power_supply_dev_release",
    "zte_power_supply_external_power_changed",
    "zte_power_supply_find_ocv2cap_table",
    "zte_power_supply_get_battery_info",
    "zte_power_supply_get_by_name",
    "zte_power_supply_get_by_phandle",
    "zte_power_supply_get_by_phandle_array",
    "zte_power_supply_get_drvdata",
    "zte_power_supply_get_property",
    "zte_power_supply_init_attrs",
    "zte_power_supply_match_device_by_name",
    "zte_power_supply_match_device_node",
    "zte_power_supply_match_device_node_array",
    "zte_power_supply_ocv2cap_simple",
    "zte_power_supply_powers",
    "zte_power_supply_property_is_writeable",
    "zte_power_supply_put",
    "zte_power_supply_put_battery_info",
    "zte_power_supply_reg_notifier",
    "zte_power_supply_register",
    "zte_power_supply_register_no_ws",
    "zte_power_supply_set_battery_charged",
    "zte_power_supply_set_property",
    "zte_power_supply_show_property",
    "zte_power_supply_store_property",
    "zte_power_supply_temp2resist_simple",
    "zte_power_supply_uevent",
    "zte_power_supply_unreg_notifier",
    "zte_power_supply_unregister",
]

BATTERY = {
    "zte_power_supply_batinfo_ocv2cap",
    "zte_power_supply_find_ocv2cap_table",
    "zte_power_supply_get_battery_info",
    "zte_power_supply_ocv2cap_simple",
    "zte_power_supply_put_battery_info",
    "zte_power_supply_temp2resist_simple",
}
SYSFS = {
    "power_supply_attr_is_visible",
    "zte_power_supply_get_drvdata",
    "zte_power_supply_get_property",
    "zte_power_supply_init_attrs",
    "zte_power_supply_property_is_writeable",
    "zte_power_supply_set_battery_charged",
    "zte_power_supply_set_property",
    "zte_power_supply_show_property",
    "zte_power_supply_store_property",
    "zte_power_supply_uevent",
}
CHANGE = {
    "__zte_power_supply_changed_work",
    "zte_power_supply_changed",
    "zte_power_supply_changed_work",
    "zte_power_supply_deferred_register_work",
    "zte_power_supply_external_power_changed",
    "zte_power_supply_reg_notifier",
    "zte_power_supply_unreg_notifier",
}
MODULE = {"init_module", "cleanup_module"}


def test_id(function: str) -> str:
    if function in BATTERY:
        return "test_interpolation_and_battery_info"
    if function in SYSFS:
        return "test_property_sysfs_and_uevent"
    if function in CHANGE:
        return "test_register_lookup_change_and_unregister"
    if function in MODULE:
        return "test_register_lookup_change_and_unregister;test_failure_paths_and_devm"
    return "test_register_lookup_change_and_unregister;test_failure_paths_and_devm"


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(command: list[str]) -> dict[str, object]:
    result = subprocess.run(
        command,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=120,
        check=False,
    )
    return {
        "argv": command,
        "returncode": result.returncode,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }


def main() -> int:
    tests = Path(__file__).resolve().parent
    driver = tests.parent
    if driver.parent.name == "curated":
        validation = driver.parent.parent / "validation" / "zte_power_supply"
    else:
        repository = driver.parents[3]
        validation = (
            repository
            / "reverse_engineering"
            / "validation"
            / "reconstructed"
            / "zte_power_supply"
        )
    output = validation / "host"
    output.mkdir(parents=True, exist_ok=True)
    compile_reports: list[dict[str, object]] = []
    run_reports: list[dict[str, object]] = []
    binaries: list[dict[str, object]] = []

    for suffix in ("a", "b"):
        binary = output / f"host_test_{suffix}"
        compile_command = [
            "docker", "run", "--rm",
            "-v", f"{driver}:/source:ro",
            "-v", f"{output}:/output",
            "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang",
            "-std=gnu11", "-O2", "-Wall", "-Wextra", "-Werror",
            "-Wno-unused-parameter", "-Wno-sign-compare",
            "/source/tests/host_test.c", "-o", f"/output/{binary.name}",
        ]
        compile_reports.append(run(compile_command))
        if compile_reports[-1]["returncode"] or not binary.is_file():
            break
        binaries.append({
            "path": str(binary),
            "size": binary.stat().st_size,
            "sha256": sha256(binary),
        })
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
        and all("zte_power_supply host tests: PASS" in str(item["stdout"])
                for item in run_reports)
        and len(FUNCTIONS) == 47
        and len(set(FUNCTIONS)) == 47
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_power_supply",
        "source": str(driver / "zte_power_supply.c"),
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
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n",
                      encoding="utf-8")
    print(json.dumps({
        "report": str(report),
        "passed": passed,
        "reproducible": reproducible,
        "covered_functions": len(FUNCTIONS),
    }))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
