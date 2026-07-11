from __future__ import annotations

import shutil
import subprocess
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
from typing import Any

from .acquisition import ModuleArtifact
from .util import write_text


class DockerKernelTools:
    def __init__(self, config: dict[str, Any]) -> None:
        toolchain = config["toolchain"]
        self.image = toolchain["docker_image"]
        self.source_volume = toolchain["source_volume"]
        self.module_symvers = toolchain["module_symvers"]
        self.dtc = toolchain["dtc"]
        self.magiskboot = toolchain.get("magiskboot")

    def _run(
        self,
        arguments: list[str],
        *,
        timeout: int = 600,
        cwd: Path | None = None,
    ) -> subprocess.CompletedProcess[str]:
        result = subprocess.run(
            arguments,
            cwd=str(cwd) if cwd else None,
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=timeout,
            check=False,
        )
        if result.returncode != 0:
            raise RuntimeError(
                f"Docker tool failed ({result.returncode}): "
                f"{subprocess.list2cmdline(arguments)}\n{result.stderr.strip()}"
            )
        return result

    def unpack_vendor_boot(self, run_root: Path, slot_suffix: str) -> Path | None:
        if not self.magiskboot:
            return None
        executable = Path(self.magiskboot)
        if not executable.is_file():
            raise FileNotFoundError(f"magiskboot was not found: {executable}")

        partition_name = f"vendor_boot{slot_suffix}"
        image = run_root / "01_acquisition" / "partitions" / f"{partition_name}.img"
        if not image.is_file():
            return None
        output = run_root / "02_normalized" / "boot_images" / partition_name
        module_directory = output / "ramdisk" / "lib" / "modules"
        if module_directory.is_dir():
            return module_directory
        output.mkdir(parents=True, exist_ok=True)

        unpack = self._run(
            [str(executable), "unpack", "-h", str(image.resolve())],
            timeout=300,
            cwd=output,
        )
        write_text(run_root / "05_logs" / "vendor_boot_unpack.log", unpack.stdout + unpack.stderr)
        ramdisk = output / "ramdisk.cpio"
        if not ramdisk.is_file():
            raise RuntimeError("magiskboot did not produce vendor_boot ramdisk.cpio")

        decompressed = output / "vendor_ramdisk.cpio"
        decompress = subprocess.run(
            [str(executable), "decompress", str(ramdisk), str(decompressed)],
            cwd=str(output),
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=300,
            check=False,
        )
        write_text(
            run_root / "05_logs" / "vendor_ramdisk_decompress.log",
            decompress.stdout + decompress.stderr,
        )
        if decompress.returncode != 0:
            if ramdisk.read_bytes()[:6] == b"070701":
                shutil.copy2(ramdisk, decompressed)
            else:
                raise RuntimeError(
                    "magiskboot could not decompress vendor ramdisk: "
                    + decompress.stderr.strip()
                )

        extract = self._run(
            [str(executable), "cpio", str(decompressed), "extract"],
            timeout=300,
            cwd=output,
        )
        write_text(
            run_root / "05_logs" / "vendor_ramdisk_extract.log",
            extract.stdout + extract.stderr,
        )
        if not module_directory.is_dir():
            raise RuntimeError("vendor ramdisk extraction contains no /lib/modules directory")
        return module_directory

    def export_module_symvers(self, run_root: Path) -> Path:
        destination = run_root / "02_normalized" / "kmi" / "Module.symvers"
        destination.parent.mkdir(parents=True, exist_ok=True)
        arguments = [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{self.source_volume}:/work/src:ro",
            "-v",
            f"{destination.parent.resolve()}:/output",
            self.image,
            "cp",
            self.module_symvers,
            "/output/Module.symvers",
        ]
        self._run(arguments)
        return destination

    def compile_live_dts(self, run_root: Path, live_tree: Path) -> Path:
        destination = run_root / "02_normalized" / "device_tree" / "live.dts"
        destination.parent.mkdir(parents=True, exist_ok=True)
        run_mount = run_root.resolve()
        input_path = "/analysis/" + live_tree.relative_to(run_root).as_posix()
        output_path = "/analysis/" + destination.relative_to(run_root).as_posix()
        arguments = [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{self.source_volume}:/work/src:ro",
            "-v",
            f"{run_mount}:/analysis",
            self.image,
            self.dtc,
            "-I",
            "fs",
            "-O",
            "dts",
            "-o",
            output_path,
            input_path,
        ]
        result = self._run(arguments, timeout=900)
        if result.stderr.strip():
            write_text(run_root / "05_logs" / "dtc_warnings.log", result.stderr)
        return destination

    def analyze_module(self, run_root: Path, module: ModuleArtifact) -> dict[str, str]:
        output = run_root / "02_normalized" / "modules" / module.name
        output.mkdir(parents=True, exist_ok=True)
        mount = f"{module.local_path.parent.resolve()}:/input:ro"
        remote_module = f"/input/{module.name}"

        commands = {
            "readelf.txt": [
                "llvm-readelf",
                "--file-header",
                "--sections",
                "--symbols",
                "--relocs",
                "--notes",
                "--string-dump=.modinfo",
                remote_module,
            ],
            "undefined_symbols.txt": [
                "llvm-nm",
                "--undefined-only",
                "--format=posix",
                remote_module,
            ],
            "defined_symbols.txt": [
                "llvm-nm",
                "--defined-only",
                "--format=posix",
                remote_module,
            ],
        }
        generated: dict[str, str] = {}
        for filename, tool_command in commands.items():
            arguments = ["docker", "run", "--rm", "-v", mount, self.image] + tool_command
            result = self._run(arguments)
            destination = output / filename
            write_text(destination, result.stdout)
            if result.stderr.strip():
                write_text(output / f"{filename}.stderr.log", result.stderr)
            generated[filename] = destination.relative_to(run_root).as_posix()
        return generated

    def analyze_modules(
        self,
        run_root: Path,
        modules: list[ModuleArtifact],
        workers: int = 4,
    ) -> dict[str, dict[str, str]]:
        output: dict[str, dict[str, str]] = {}
        with ThreadPoolExecutor(max_workers=max(1, workers)) as executor:
            futures = {
                executor.submit(self.analyze_module, run_root, module): module
                for module in modules
            }
            for future in as_completed(futures):
                module = futures[future]
                print(f"[ELF] normalized metadata for {module.name}", flush=True)
                output[module.name] = future.result()
        return output
