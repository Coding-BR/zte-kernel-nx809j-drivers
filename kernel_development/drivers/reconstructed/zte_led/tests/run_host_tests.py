#!/usr/bin/env python3
"""Build and run the zte_led host harness twice."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path

FUNCTION_GROUPS = {
    "test_i2c_hardware_irq": [
        "aw22xxx_i2c_write", "aw22xxx_i2c_read", "aw22xxx_hw_reset",
        "aw22xxx_read_chipid", "aw22xxx_led_imax_cfg",
        "aw22xxx_interrupt_setup", "aw22xxx_irq", "aw22xxx_irq_v15",
        "aw22xxx_led_init", "aw22xxx_init_cfg_update_array",
    ],
    "test_firmware_and_configuration": [
        "aw22xxx_alloc_name_array", "aw22xxx_get_fwname",
        "aw22xxx_cfg_loaded", "aw22xxx_fw_loaded",
        "aw22xxx_cfg_update_wait_from_dyn_name", "aw22xxx_set_cfg_run_state",
        "aw22xxx_cfg_recover_update_wait",
    ],
    "test_work_timer_and_pattern": [
        "aw22xxx_brightness_work", "aw22xxx_task_work",
        "aw22xxx_fw_work_routine", "aw22xxx_cfg_work_routine",
        "aw22xxx_recover_work_routine", "aw22xxx_fw_timer_func",
        "aw22xxx_fw_init", "aw22xxx_set_breath_data", "aw22xxx_play",
    ],
    "test_sysfs_and_proc": [
        "aw22xxx_cfg_show", "aw22xxx_cfg_store", "aw22xxx_effect_show",
        "aw22xxx_effect_store", "aw22xxx_fw_show", "aw22xxx_fw_store",
        "aw22xxx_hwen_show", "aw22xxx_hwen_store", "aw22xxx_imax_show",
        "aw22xxx_imax_store", "aw22xxx_para_show", "aw22xxx_para_store",
        "aw22xxx_reg_show", "aw22xxx_reg_store", "aw22xxx_rgb_show",
        "aw22xxx_rgb_store", "aw22xxx_task0_show", "aw22xxx_task0_store",
        "aw22xxx_task1_show", "aw22xxx_task1_store",
        "aw22xxx_task_irq_show", "aw22xxx_task_irq_store",
        "aw22xxx_multi_breath_pattern_show",
        "aw22xxx_multi_breath_pattern_store", "get_aw22xxx_id",
        "aw22xxx_create_proc_entry",
    ],
    "test_parse_probe_lifecycle": [
        "aw22xxx_parse_led_cdev", "aw22xxx_set_brightness",
        "aw22xxx_i2c_probe", "aw22xxx_i2c_remove", "init_module",
        "cleanup_module",
    ],
}

FUNCTIONS = [function for group in FUNCTION_GROUPS.values() for function in group]
COVERAGE = {
    function: group
    for group, functions in FUNCTION_GROUPS.items()
    for function in functions
}


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(command: list[str]) -> dict:
    result = subprocess.run(
        command, capture_output=True, text=True, encoding="utf-8",
        errors="replace", timeout=120,
    )
    return {
        "argv": command,
        "returncode": result.returncode,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }


def validation_root(driver: Path) -> Path:
    if driver.parent.name == "curated":
        return driver.parent.parent / "validation" / "zte_led"
    if driver.parent.name == "reconstructed":
        repository = driver.parents[3]
        return (repository / "reverse_engineering" / "validation" /
                "reconstructed" / "zte_led")
    raise RuntimeError(f"unsupported zte_led layout: {driver}")


def main() -> int:
    tests = Path(__file__).resolve().parent
    driver = tests.parent
    validation = validation_root(driver)
    output = validation / "host"
    output.mkdir(parents=True, exist_ok=True)
    compile_reports: list[dict] = []
    run_reports: list[dict] = []
    binaries: list[dict] = []

    for suffix in ("a", "b"):
        binary = output / f"host_test_{suffix}"
        command = [
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
        compile_reports.append(run(command))
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
    expected_message = "PASS zte_led host tests: 58/58 reconstructed functions covered"
    passed = (
        len(FUNCTIONS) == len(set(FUNCTIONS)) == 58
        and set(FUNCTIONS) == set(COVERAGE)
        and reproducible
        and len(compile_reports) == len(run_reports) == 2
        and all(item["returncode"] == 0 for item in compile_reports + run_reports)
        and all(expected_message in item["stdout"] for item in run_reports)
    )
    report = validation / "host_test_report.json"
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_led",
        "source": str(driver / "zte_led.c"),
        "source_sha256": sha256(driver / "zte_led.c"),
        "test_source": str(tests / "host_test.c"),
        "test_source_sha256": sha256(tests / "host_test.c"),
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
    report.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    print(json.dumps({
        "report": str(report), "passed": passed,
        "reproducible": reproducible, "covered_functions": len(FUNCTIONS),
    }))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
