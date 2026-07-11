from __future__ import annotations

import shlex
import subprocess
from dataclasses import dataclass
from pathlib import Path


class AdbError(RuntimeError):
    pass


@dataclass(frozen=True)
class DeviceRecord:
    serial: str
    state: str
    description: str


class AdbClient:
    def __init__(self, serial: str | None = None, adb: str = "adb") -> None:
        self.adb = adb
        self.serial = serial or self._select_device()

    def _base(self) -> list[str]:
        return [self.adb, "-s", self.serial]

    def _select_device(self) -> str:
        result = subprocess.run(
            [self.adb, "devices", "-l"],
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            check=False,
        )
        if result.returncode != 0:
            raise AdbError(f"adb devices failed: {result.stderr.strip()}")

        devices: list[DeviceRecord] = []
        for line in result.stdout.splitlines()[1:]:
            fields = line.split()
            if len(fields) >= 2:
                devices.append(DeviceRecord(fields[0], fields[1], " ".join(fields[2:])))

        ready = [item for item in devices if item.state == "device"]
        if len(ready) != 1:
            summary = ", ".join(f"{item.serial}:{item.state}" for item in devices) or "none"
            raise AdbError(
                "Expected exactly one authorized ADB device; "
                f"found {len(ready)} ready device(s): {summary}"
            )
        return ready[0].serial

    def shell(
        self,
        command: str,
        *,
        timeout: int = 120,
        check: bool = True,
    ) -> subprocess.CompletedProcess[str]:
        result = subprocess.run(
            self._base() + ["shell", command],
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=timeout,
            check=False,
        )
        if check and result.returncode != 0:
            raise AdbError(
                f"ADB shell failed ({result.returncode}): {command}\n{result.stderr.strip()}"
            )
        return result

    def text(self, command: str, *, timeout: int = 120, check: bool = True) -> str:
        return self.shell(command, timeout=timeout, check=check).stdout

    def stream(self, command: str, destination: Path, *, timeout: int = 900) -> None:
        destination.parent.mkdir(parents=True, exist_ok=True)
        with destination.open("wb") as output:
            result = subprocess.run(
                self._base() + ["exec-out", command],
                stdout=output,
                stderr=subprocess.PIPE,
                timeout=timeout,
                check=False,
            )
        if result.returncode != 0:
            destination.unlink(missing_ok=True)
            error = result.stderr.decode("utf-8", errors="replace").strip()
            raise AdbError(f"ADB binary extraction failed: {command}\n{error}")

    def pull_file(self, remote_path: str, destination: Path, *, timeout: int = 900) -> None:
        self.stream(f"cat {shlex.quote(remote_path)}", destination, timeout=timeout)

    def exists(self, remote_path: str) -> bool:
        result = self.shell(f"test -r {shlex.quote(remote_path)}", check=False)
        return result.returncode == 0

    def require_root(self) -> str:
        identity = self.text("id").strip()
        if "uid=0(root)" not in identity:
            raise AdbError(f"Root ADB shell is required; current identity: {identity}")
        return identity
