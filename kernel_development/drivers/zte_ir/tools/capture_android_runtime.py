#!/usr/bin/env python3
"""Capture read-only Android runtime evidence for an SPI kernel module."""

from __future__ import annotations

import argparse
import datetime as dt
import json
import re
import shlex
import subprocess
import sys
import time
from pathlib import Path
from typing import Any


SAFE_NAME = re.compile(r"^[A-Za-z0-9_.-]+$")
SPI_DEVICE = re.compile(r"^spi[0-9]+\.[0-9]+$")


def run_process(arguments: list[str], timeout: int = 15) -> dict[str, Any]:
    started = time.monotonic()
    completed = subprocess.run(
        arguments,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=timeout,
        check=False,
    )
    return {
        "argv": arguments,
        "returncode": completed.returncode,
        "stdout": completed.stdout.rstrip("\r\n"),
        "stderr": completed.stderr.rstrip("\r\n"),
        "duration_ms": round((time.monotonic() - started) * 1000),
    }


def adb(serial: str, arguments: list[str], timeout: int = 15) -> dict[str, Any]:
    return run_process(["adb", "-s", serial, *arguments], timeout=timeout)


def shell(serial: str, command: str, root_mode: str | None) -> dict[str, Any]:
    arguments = ["shell"]
    if root_mode == "su-uid":
        arguments.extend(["su", "0", *shlex.split(command)])
    elif root_mode == "su-c":
        arguments.extend(["su", "-c", command])
    else:
        arguments.append(command)
    result = adb(serial, arguments)
    result["shell_command"] = command
    result["root_mode"] = root_mode
    return result


def connected_devices() -> list[str]:
    result = run_process(["adb", "devices"])
    if result["returncode"] != 0:
        raise RuntimeError(result["stderr"] or "adb devices failed")
    devices = []
    for line in result["stdout"].splitlines()[1:]:
        fields = line.split()
        if len(fields) >= 2 and fields[1] == "device":
            devices.append(fields[0])
    return devices


def select_serial(requested: str | None) -> str:
    devices = connected_devices()
    if requested:
        if requested not in devices:
            raise RuntimeError(f"ADB device {requested!r} is not connected")
        return requested
    if len(devices) != 1:
        raise RuntimeError(f"expected one connected ADB device, found {len(devices)}")
    return devices[0]


def parse_uevent(text: str) -> dict[str, str]:
    values: dict[str, str] = {}
    for line in text.splitlines():
        key, separator, value = line.partition("=")
        if separator:
            values[key] = value
    return values


def parse_hex_dump(text: str) -> bytes:
    tokens = re.findall(r"(?<![0-9A-Fa-f])[0-9A-Fa-f]{2}(?![0-9A-Fa-f])", text)
    return bytes.fromhex("".join(tokens))


def command_summary(result: dict[str, Any]) -> dict[str, Any]:
    return {
        "returncode": result["returncode"],
        "stdout": result["stdout"],
        "stderr": result["stderr"],
        "duration_ms": result["duration_ms"],
        "shell_command": result.get("shell_command"),
        "root_mode": result.get("root_mode"),
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("-s", "--serial", help="ADB serial; auto-selected when only one is connected")
    parser.add_argument("--module", default="zte_ir", help="kernel module and SPI driver name")
    parser.add_argument(
        "--dt-node",
        default="/sys/firmware/devicetree/base/soc/qcom,qupv3_3_geni_se@19c0000/spi@1988000/irled@0",
        help="active Device Tree node to inspect",
    )
    parser.add_argument("-o", "--output", required=True, type=Path, help="JSON output path")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if not SAFE_NAME.fullmatch(args.module):
        raise ValueError("module name contains unsafe characters")
    serial = select_serial(args.serial)

    root_mode = None
    root_probe = shell(serial, "id", root_mode="su-uid")
    if root_probe["returncode"] == 0 and "uid=0" in root_probe["stdout"]:
        root_mode = "su-uid"
    else:
        root_probe = shell(serial, "id", root_mode="su-c")
        if root_probe["returncode"] == 0 and "uid=0" in root_probe["stdout"]:
            root_mode = "su-c"
    identity = root_probe if root_mode else shell(serial, "id", root_mode=None)

    commands: dict[str, dict[str, Any]] = {}

    def capture(name: str, command: str) -> dict[str, Any]:
        result = shell(serial, command, root_mode=root_mode)
        commands[name] = command_summary(result)
        return result

    uname = capture("uname", "uname -a")
    property_keys = (
        "ro.product.name",
        "ro.product.model",
        "ro.build.type",
        "ro.debuggable",
        "ro.boot.slot_suffix",
        "ro.build.id",
        "ro.build.fingerprint",
        "ro.build.version.security_patch",
    )
    properties = {}
    for property_key in property_keys:
        result = capture(f"property_{property_key}", f"getprop {property_key}")
        properties[property_key] = result["stdout"]
    modules_result = capture(
        "module_line", f"grep -E '^{args.module} ' /proc/modules"
    )
    driver_path = f"/sys/bus/spi/drivers/{args.module}"
    driver_entries_result = capture("spi_driver_entries", f"ls -1 {driver_path}")

    entries = [line.strip() for line in driver_entries_result["stdout"].splitlines()]
    bound_devices = sorted(entry for entry in entries if SPI_DEVICE.fullmatch(entry))
    device_records = []
    for device in bound_devices:
        uevent_result = capture(
            f"uevent_{device}", f"cat /sys/bus/spi/devices/{device}/uevent"
        )
        target_result = capture(
            f"driver_link_{device}", f"readlink -f {driver_path}/{device}"
        )
        device_records.append(
            {
                "name": device,
                "driver_link_target": target_result["stdout"],
                "uevent": parse_uevent(uevent_result["stdout"]),
            }
        )

    dev_node_result = capture("dev_node", f"ls -lZ /dev/{args.module}")
    dt_properties: dict[str, dict[str, Any]] = {}
    for property_name in ("compatible", "reg", "spi-max-frequency", "status"):
        result = capture(
            f"dt_{property_name}", f"od -An -tx1 -v {args.dt_node}/{property_name}"
        )
        raw = parse_hex_dump(result["stdout"]) if result["returncode"] == 0 else b""
        record: dict[str, Any] = {"bytes_hex": raw.hex(), "size": len(raw)}
        if property_name in ("compatible", "status"):
            record["strings"] = [
                item.decode("utf-8", errors="replace") for item in raw.rstrip(b"\0").split(b"\0")
            ] if raw else []
        elif len(raw) == 4:
            record["u32_be"] = int.from_bytes(raw, "big")
        dt_properties[property_name] = record

    module_line = next(
        (line for line in modules_result["stdout"].splitlines() if line.split()[:1] == [args.module]),
        "",
    )
    payload = {
        "schema_version": "1.0",
        "captured_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "capture_mode": "read-only",
        "adb": {
            "serial": serial,
            "root_available": bool(root_mode),
            "root_mode": root_mode,
            "identity": identity["stdout"],
        },
        "device": {
            "product": properties.get("ro.product.name"),
            "model": properties.get("ro.product.model"),
            "build_type": properties.get("ro.build.type"),
            "debuggable": properties.get("ro.debuggable"),
            "slot_suffix": properties.get("ro.boot.slot_suffix"),
            "build_id": properties.get("ro.build.id"),
            "build_fingerprint": properties.get("ro.build.fingerprint"),
            "security_patch": properties.get("ro.build.version.security_patch"),
            "kernel": uname["stdout"],
        },
        "module": {
            "name": args.module,
            "loaded": bool(module_line),
            "proc_modules_line": module_line,
            "driver_path": driver_path,
            "bound_spi_devices": device_records,
            "dev_node_listing": dev_node_result["stdout"],
        },
        "device_tree": {
            "node": args.dt_node,
            "properties": dt_properties,
        },
        "commands": commands,
    }
    rendered = json.dumps(payload, indent=2, sort_keys=True) + "\n"
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(rendered, encoding="utf-8", newline="\n")
    print(
        json.dumps(
            {
                "output": str(args.output),
                "serial": serial,
                "root": bool(root_mode),
                "root_mode": root_mode,
                "module_loaded": bool(module_line),
                "bound_spi_devices": bound_devices,
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, ValueError, subprocess.SubprocessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
