from __future__ import annotations

import importlib.util
import tempfile
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "attest_tested_driver_microtasks.py"
SPEC = importlib.util.spec_from_file_location("attest_tested_driver_microtasks", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class AttestTestedDriverMicrotasksTests(unittest.TestCase):
    def test_build_requires_static_verified_reproducible_result(self) -> None:
        payload = {
            "drivers": [
                {
                    "status": "static_verified",
                    "build": {"passed": True, "reproducible": True},
                }
            ]
        }
        self.assertTrue(MODULE.build_passed(payload))
        payload["drivers"][0]["build"]["reproducible"] = False
        self.assertFalse(MODULE.build_passed(payload))

    def test_build_accepts_canonical_reproducible_result(self) -> None:
        payload = {
            "passed": True,
            "reproducible": True,
            "candidate": {"sha256": "a" * 64},
        }

        self.assertTrue(MODULE.build_passed(payload))
        self.assertEqual(MODULE.build_candidate_sha256(payload), "a" * 64)
        payload["reproducible"] = False
        self.assertFalse(MODULE.build_passed(payload))

    def test_kcfi_index_accepts_only_passing_comparisons(self) -> None:
        report = Path("kcfi.json")
        indexed = MODULE.kcfi_functions(
            [
                (
                    report,
                    {
                        "passed": True,
                        "comparisons": [
                            {"function": "good", "passed": True},
                            {"function": "bad", "passed": False},
                        ],
                    },
                )
            ]
        )
        self.assertEqual(indexed, {"good": report})

    def test_test_index_requires_current_source_hash(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            source_dir = Path(temporary)
            current = source_dir / "current.c"
            stale = source_dir / "stale.c"
            current.write_text("int current(void) { return 0; }\n", encoding="ascii")
            stale.write_text("int stale(void) { return 0; }\n", encoding="ascii")
            report = Path("test.json")
            indexed = MODULE.direct_tested_sources(
                source_dir,
                [
                    (
                        report,
                        {
                            "passed": True,
                            "inputs": [
                                {
                                    "path": "/old/current.c",
                                    "sha256": MODULE.sha256_file(current),
                                },
                                {
                                    "path": "/old/stale.c",
                                    "sha256": "0" * 64,
                                },
                            ],
                        },
                    )
                ],
            )
            self.assertEqual(indexed, {"current.c": report})

    def test_reset_is_fail_closed_for_previous_pass(self) -> None:
        tasks = [
            {"id": "old", "status": "PASS", "evidence": [{"role": "test"}]},
            {"id": "open", "status": "READY_FOR_IMPLEMENTATION", "evidence": []},
        ]

        normalized, previous = MODULE.reset_microtask_attestations(tasks)

        self.assertEqual(previous, {"old"})
        self.assertTrue(
            all(task["status"] == "READY_FOR_IMPLEMENTATION" for task in normalized)
        )
        self.assertTrue(all(task["evidence"] == [] for task in normalized))

    def test_scoped_reset_preserves_unselected_pass(self) -> None:
        tasks = [
            {
                "id": "old",
                "source_function": "old_fn",
                "status": "PASS",
                "evidence": [{"role": "test"}],
            },
            {
                "id": "target",
                "source_function": "target_fn",
                "status": "PASS",
                "evidence": [{"role": "stale"}],
            },
        ]

        normalized, previous = MODULE.reset_microtask_attestations(
            tasks,
            selected_functions={"target_fn"},
            preserve_unselected=True,
        )

        self.assertEqual(previous, {"old", "target"})
        self.assertEqual(normalized[0]["status"], "PASS")
        self.assertEqual(normalized[0]["evidence"], [{"role": "test"}])
        self.assertEqual(normalized[1]["status"], "READY_FOR_IMPLEMENTATION")
        self.assertEqual(normalized[1]["evidence"], [])

    def test_markdown_uses_the_attested_task_state(self) -> None:
        payload = {
            "driver": "sample",
            "tasks": [
                {
                    "id": "001_callback",
                    "stock_function": "callback",
                    "stock_entry": "00100000",
                    "category": "async_or_irq",
                    "source_file": "callback.c",
                    "source_function": "callback",
                    "status": "PASS",
                }
            ],
        }

        markdown = MODULE.render_manifest_markdown(payload)

        self.assertIn("callback.c:callback | PASS |", markdown)
        self.assertNotIn("READY_FOR_IMPLEMENTATION", markdown)


if __name__ == "__main__":
    unittest.main()
