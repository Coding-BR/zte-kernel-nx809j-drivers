import tempfile
import unittest
from pathlib import Path

from workspace_tools.reconstruction_pipeline.audit_kcfi_artifact_stability import section_hashes


class AuditKcfiArtifactStabilityTests(unittest.TestCase):
    def test_rejects_non_elf(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "not-elf"
            path.write_bytes(b"not an elf")
            with self.assertRaises(ValueError):
                section_hashes(path)


if __name__ == "__main__":
    unittest.main()
