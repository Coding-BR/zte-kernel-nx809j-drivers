from __future__ import annotations

import os
import subprocess
from dataclasses import dataclass
from pathlib import Path
from typing import Any

from .acquisition import ModuleArtifact
from .util import safe_name, write_text


@dataclass(frozen=True)
class GhidraResult:
    module: str
    status: str
    returncode: int
    export_directory: str
    project_directory: str
    console_log: str


class GhidraHeadless:
    def __init__(self, config: dict[str, Any], script_directory: Path) -> None:
        settings = config["ghidra"]
        self.home = Path(settings["home"])
        self.analysis_timeout = int(settings.get("analysis_timeout_seconds", 600))
        self.decompile_timeout = int(settings.get("decompile_timeout_seconds", 120))
        self.max_cpu = int(settings.get("max_cpu", 4))
        self.script_directory = script_directory.resolve()
        executable_name = "analyzeHeadless.bat" if os.name == "nt" else "analyzeHeadless"
        self.executable = self.home / "support" / executable_name
        if not self.executable.is_file():
            raise FileNotFoundError(f"Ghidra Headless was not found: {self.executable}")

    def analyze(self, run_root: Path, module: ModuleArtifact) -> GhidraResult:
        module_id = safe_name(module.name)
        project_parent = run_root / "03_ghidra" / "projects" / module_id
        export_root = run_root / "03_ghidra" / "exports"
        log_root = run_root / "05_logs" / "ghidra" / module_id
        project_parent.mkdir(parents=True, exist_ok=True)
        export_root.mkdir(parents=True, exist_ok=True)
        log_root.mkdir(parents=True, exist_ok=True)

        project_name = f"NX809J_{module_id}"
        ghidra_log = log_root / "ghidra.log"
        script_log = log_root / "script.log"
        console_log = log_root / "console.log"
        command = [
            str(self.executable),
            str(project_parent.resolve()),
            project_name,
            "-import",
            str(module.local_path.resolve()),
            "-overwrite",
            "-analysisTimeoutPerFile",
            str(self.analysis_timeout),
            "-scriptPath",
            str(self.script_directory),
            "-postScript",
            "ExportKernelModuleAnalysis.java",
            str(export_root.resolve()),
            str(self.decompile_timeout),
            "-max-cpu",
            str(self.max_cpu),
            "-log",
            str(ghidra_log.resolve()),
            "-scriptlog",
            str(script_log.resolve()),
        ]

        print(f"[GHIDRA] analyzing {module.name}", flush=True)
        result = subprocess.run(
            command,
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=self.analysis_timeout + 300,
            check=False,
        )
        write_text(console_log, result.stdout)
        expected_export = export_root / module.name
        status = "success" if result.returncode == 0 and expected_export.is_dir() else "failed"
        return GhidraResult(
            module=module.name,
            status=status,
            returncode=result.returncode,
            export_directory=expected_export.relative_to(run_root).as_posix(),
            project_directory=project_parent.relative_to(run_root).as_posix(),
            console_log=console_log.relative_to(run_root).as_posix(),
        )

    def analyze_all(self, run_root: Path, modules: list[ModuleArtifact]) -> list[GhidraResult]:
        results: list[GhidraResult] = []
        for module in modules:
            result = self.analyze(run_root, module)
            print(f"[GHIDRA] {module.name}: {result.status}", flush=True)
            results.append(result)
        return results
