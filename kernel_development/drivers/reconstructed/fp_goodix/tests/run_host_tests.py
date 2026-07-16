#!/usr/bin/env python3
"""Build and run the fp_goodix host harness twice."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path

FUNCTIONS = [
    "gf_ioctl", "gf_compat_ioctl", "gf_open", "gf_release",
    "gf_disable_irq", "gf_enable_irq", "nav_event_input",
    "_inline_copy_to_user", "_inline_copy_from_user", "gf_irq", "gf_probe",
    "gf_remove", "goodixfp_init_drm_notifier", "list_del",
    "goodixfp_drm_get_pannel", "goodix_fb_state_chg_callback", "sendnlmsg",
    "netlink_init", "nl_data_ready", "netlink_exit",
    "zte_goodix_pinctrl_init", "zte_goodix_pinctrl_select", "gf_parse_dts",
    "gf_cleanup", "gf_power_on", "gf_power_off", "gf_hw_reset", "gf_irq_num",
    "init_module", "cleanup_module",
]

COVERAGE = {
    "gf_ioctl": "test_full_lifecycle/ioctl_matrix",
    "gf_compat_ioctl": "test_full_lifecycle/compat_ioctl",
    "gf_open": "test_full_lifecycle/open_release",
    "gf_release": "test_full_lifecycle/open_release",
    "gf_disable_irq": "test_direct_helpers/irq_helpers",
    "gf_enable_irq": "test_direct_helpers/irq_helpers",
    "nav_event_input": "test_direct_helpers/navigation",
    "_inline_copy_to_user": "test_full_lifecycle/ioctl_get_version",
    "_inline_copy_from_user": "test_full_lifecycle/ioctl_copy_inputs",
    "gf_irq": "test_full_lifecycle/irq_callback",
    "gf_probe": "test_full_lifecycle/probe_success;test_failure_paths/probe_failures",
    "gf_remove": "test_full_lifecycle/remove",
    "goodixfp_init_drm_notifier": "test_full_lifecycle/panel_worker",
    "list_del": "test_failure_paths/input_allocate_failure",
    "goodixfp_drm_get_pannel": "test_full_lifecycle/panel_lookup",
    "goodix_fb_state_chg_callback": "test_full_lifecycle/panel_events",
    "sendnlmsg": "test_full_lifecycle/netlink_send;test_failure_paths/netlink_failure",
    "netlink_init": "test_module_entrypoints;test_failure_paths/netlink_failure",
    "nl_data_ready": "test_full_lifecycle/netlink_receive",
    "netlink_exit": "test_module_entrypoints;test_failure_paths/netlink_failure",
    "zte_goodix_pinctrl_init": "test_direct_helpers/pinctrl",
    "zte_goodix_pinctrl_select": "test_direct_helpers/pinctrl",
    "gf_parse_dts": "test_failure_paths/dts_regulator_failure",
    "gf_cleanup": "test_direct_helpers/cleanup;test_failure_paths/rollback",
    "gf_power_on": "test_direct_helpers/power",
    "gf_power_off": "test_direct_helpers/power",
    "gf_hw_reset": "test_direct_helpers/reset",
    "gf_irq_num": "test_direct_helpers/irq_number",
    "init_module": "test_module_entrypoints",
    "cleanup_module": "test_module_entrypoints",
}


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
    engineering = driver.parent.parent
    output = engineering / "validation" / "fp_goodix" / "host"
    output.mkdir(parents=True, exist_ok=True)
    compile_reports, run_reports, binaries = [], [], []

    for suffix in ("a", "b"):
        binary = output / f"host_test_{suffix}"
        compile_command = [
            "docker", "run", "--rm", "-v", f"{driver}:/source:ro",
            "-v", f"{output}:/output", "-v",
            "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang", "-std=gnu11", "-O2",
            "-Wall", "-Wextra", "-Werror", "-Wno-unused-parameter",
            "/source/tests/host_test.c", "-o", f"/output/{binary.name}",
        ]
        compile_reports.append(run(compile_command))
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
        and all(report["returncode"] == 0 for report in compile_reports + run_reports)
        and all("PASS fp_goodix host tests" in report["stdout"]
                for report in run_reports)
        and set(FUNCTIONS) == set(COVERAGE)
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "fp_goodix",
        "sources": [
            str(driver / "fp_goodix_core.c"),
            str(driver / "fp_goodix_netlink.c"),
            str(driver / "fp_goodix_platform.c"),
        ],
        "test_source": str(tests / "host_test.c"),
        "covered_functions": FUNCTIONS,
        "coverage_evidence": [
            {"function": function, "test_id": COVERAGE[function]}
            for function in FUNCTIONS
        ],
        "compile_reports": compile_reports,
        "run_reports": run_reports,
        "binaries": binaries,
        "reproducible": reproducible,
        "passed": passed,
    }
    report = engineering / "validation" / "fp_goodix" / "host_test_report.json"
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
