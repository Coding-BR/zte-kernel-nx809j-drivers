#!/usr/bin/env python3

from __future__ import annotations

import importlib.util
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = (
    Path(__file__).resolve().parents[1] / "audit_userdebug_observability.py"
)
SPEC = importlib.util.spec_from_file_location("audit_userdebug_observability", MODULE_PATH)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)
REPO = Path(__file__).resolve().parents[3]


class UserdebugObservabilityTests(unittest.TestCase):
    def test_parse_kernel_config_preserves_enabled_module_and_disabled(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / ".config"
            path.write_text(
                "CONFIG_ALPHA=y\nCONFIG_BETA=m\n# CONFIG_GAMMA is not set\n",
                encoding="utf-8",
            )
            self.assertEqual(
                MODULE.parse_kernel_config(path),
                {
                    "CONFIG_ALPHA": "y",
                    "CONFIG_BETA": "m",
                    "CONFIG_GAMMA": "n",
                },
            )

    def test_capability_reports_partial_requirements(self) -> None:
        capability = {
            "id": "test",
            "name": "Test",
            "requirements": (("CONFIG_ALPHA", "y"), ("CONFIG_BETA", "y")),
            "use": "Test",
            "runtime_gate": "Test",
            "intrusiveness": "low",
        }
        result = MODULE.evaluate_capability(
            capability, {"CONFIG_ALPHA": "y", "CONFIG_BETA": "n"}, "arm64"
        )
        self.assertEqual(result["status"], "PARTIAL")
        self.assertEqual(result["missing_requirements"], ["CONFIG_BETA"])

    def test_optional_support_keeps_related_infrastructure_partial(self) -> None:
        capability = {
            "id": "test",
            "name": "Test",
            "requirements": (("CONFIG_FULL", "y"),),
            "optional": ("CONFIG_CORE",),
            "use": "Test",
            "runtime_gate": "Test",
            "intrusiveness": "low",
        }
        result = MODULE.evaluate_capability(
            capability, {"CONFIG_FULL": "n", "CONFIG_CORE": "y"}, "arm64"
        )
        self.assertEqual(result["status"], "PARTIAL")

    def test_repository_report_matches_pinned_nx809j_config(self) -> None:
        report = MODULE.build_report(
            REPO,
            REPO / MODULE.DEFAULT_CONFIG,
            REPO / MODULE.DEFAULT_LOCK,
        )
        capabilities = {item["id"]: item for item in report["capabilities"]}
        self.assertEqual(report["architecture"], "arm64")
        self.assertEqual(capabilities["kprobe_events"]["status"], "CONFIGURED")
        self.assertEqual(capabilities["function_tracing"]["status"], "PARTIAL")
        self.assertEqual(capabilities["kunit"]["status"], "CONFIGURED_AS_MODULE")
        self.assertEqual(
            capabilities["kcov"]["implementation"]["delivery"], "kernel_builtin"
        )
        self.assertEqual(
            capabilities["mmiotrace"]["status"], "UNSUPPORTED_ARCHITECTURE"
        )


if __name__ == "__main__":
    unittest.main()
