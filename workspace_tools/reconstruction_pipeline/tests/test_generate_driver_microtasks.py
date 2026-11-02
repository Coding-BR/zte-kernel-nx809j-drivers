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

    def test_candidate_under_static_validation_keeps_source_mapping(self):
        self.assertEqual(
            mapping_source_state(
                {
                    "status": "candidate_under_static_validation",
                    "source_file": "driver.c",
                    "source_function": "driver_probe",
                }
            ),
            ("driver.c", "driver_probe", "CANDIDATE_UNDER_STATIC_VALIDATION"),
        )

    def test_candidate_hardening_deviation_keeps_source_mapping(self):
        self.assertEqual(
            mapping_source_state(
                {
                    "status": "candidate_hardening_deviation",
                    "source_file": "driver.c",
                    "source_function": "driver_probe",
                }
            ),
            ("driver.c", "driver_probe", "CANDIDATE_HARDENING_DEVIATION"),
        )

    def test_promoted_mapping_is_not_hidden_as_unmapped(self):
        self.assertEqual(
            mapping_source_state(
                {
                    "status": "PROMOTED_OFFLINE_EXACT",
                    "source_file": "driver.c",
                    "source_function": "driver_probe",
                }
            ),
            ("driver.c", "driver_probe", "PROMOTED_OFFLINE_EXACT"),
        )

    def test_unknown_mapping_status_keeps_source_but_requires_review(self):
        self.assertEqual(
            mapping_source_state(
                {
                    "status": "new_status",
                    "source_file": "driver.c",
                    "source_function": "driver_probe",
                }
            ),
            ("driver.c", "driver_probe", "MAPPED_STATUS_REQUIRES_REVIEW"),
        )


if __name__ == "__main__":
    unittest.main()
