import unittest

from workspace_tools.reconstruction_pipeline.generate_driver_microtasks import (
    mapping_source_state,
)


class GenerateDriverMicrotasksTests(unittest.TestCase):
    def test_reviewed_mapping_is_ready(self):
        self.assertEqual(
            mapping_source_state(
                {
                    "status": "reviewed",
                    "source_file": "driver.c",
                    "source_function": "driver_probe",
                }
            ),
            ("driver.c", "driver_probe", "READY_FOR_IMPLEMENTATION"),
        )

    def test_mapped_not_exact_is_not_reported_as_unmapped(self):
        self.assertEqual(
            mapping_source_state(
                {
                    "status": "mapped_not_exact",
                    "source_file": "driver.c",
                    "source_function": "driver_probe",
                }
            ),
            ("driver.c", "driver_probe", "MAPPED_NOT_EXACT"),
        )

    def test_missing_source_function_remains_waiting(self):
        self.assertEqual(
            mapping_source_state(
                {"status": "reviewed", "source_file": "driver.c"}
            ),
            ("driver.c", "", "WAITING_FOR_SOURCE_MAP"),
        )


if __name__ == "__main__":
    unittest.main()
