import json
import tempfile
import unittest
from pathlib import Path

from workspace_tools.reconstruction_pipeline.bind_candidate_source_map import (
    bind_driver,
    source_file_name,
)


class BindCandidateSourceMapTests(unittest.TestCase):
    def test_fp_goodix_translation_unit_dispatch(self):
        self.assertEqual(
            source_file_name("gf_ioctl", "fp_goodix", "fp_goodix.c"),
            "fp_goodix_core.c",
        )
        self.assertEqual(
            source_file_name("sendnlmsg", "fp_goodix", "fp_goodix.c"),
            "fp_goodix_netlink.c",
        )
        self.assertEqual(
            source_file_name("gf_parse_dts", "fp_goodix", "fp_goodix.c"),
            "fp_goodix_platform.c",
        )

    def test_bind_driver_replaces_stale_monolithic_paths(self):
        with tempfile.TemporaryDirectory() as temporary:
            repo = Path(temporary)
            driver_root = (
                repo
                / "kernel_development"
                / "drivers"
                / "reconstructed"
                / "fp_goodix"
            )
            export = (
                repo
                / "reverse_engineering"
                / "validation"
                / "reconstructed"
                / "fp_goodix"
                / "offline_static"
                / "ghidra_stock"
            )
            driver_root.mkdir(parents=True)
            export.mkdir(parents=True)

            (driver_root / "fp_goodix_core.c").write_text(
                "long gf_ioctl(void) { return 0; }\n"
                "int zte_fp_init(void) { return 0; }\n",
                encoding="utf-8",
            )
            (driver_root / "fp_goodix_netlink.c").write_text(
                "int sendnlmsg(void) { return 0; }\n",
                encoding="utf-8",
            )
            (driver_root / "fp_goodix_platform.c").write_text(
                "int gf_parse_dts(void) { return 0; }\n",
                encoding="utf-8",
            )

            functions = ["gf_ioctl", "sendnlmsg", "gf_parse_dts", "init_module"]
            (export / "functions.jsonl").write_text(
                "".join(json.dumps({"name": name}) + "\n" for name in functions),
                encoding="utf-8",
            )
            mapping = {
                "schema_version": "1.0",
                "driver": "fp_goodix",
                "stock_sha256": "test",
                "ghidra_export": export.relative_to(repo).as_posix(),
                "status": "PARTIAL_SOURCE_MAP",
                "mappings": [
                    {
                        "stock_function": name,
                        "source_file": "fp_goodix.c",
                        "source_function": name,
                        "evidence": ["test"],
                        "status": "mapped_not_exact",
                    }
                    for name in functions
                ],
            }
            map_path = driver_root / "reconstruction_map.json"
            map_path.write_text(json.dumps(mapping), encoding="utf-8")

            result = bind_driver(repo, "fp_goodix", check=False)
            updated = json.loads(map_path.read_text(encoding="utf-8"))
            by_name = {
                item["stock_function"]: item for item in updated["mappings"]
            }

            self.assertEqual(result["functions"], 4)
            self.assertEqual(
                result["source_files"],
                [
                    "fp_goodix_core.c",
                    "fp_goodix_netlink.c",
                    "fp_goodix_platform.c",
                ],
            )
            self.assertEqual(by_name["gf_ioctl"]["source_file"], "fp_goodix_core.c")
            self.assertEqual(by_name["sendnlmsg"]["source_file"], "fp_goodix_netlink.c")
            self.assertEqual(
                by_name["gf_parse_dts"]["source_file"], "fp_goodix_platform.c"
            )
            self.assertEqual(by_name["init_module"]["source_function"], "zte_fp_init")


if __name__ == "__main__":
    unittest.main()
