import unittest

from workspace_tools.reconstruction_pipeline.audit_module_abi_surface import (
    normalized_dependencies,
    merge_symvers,
    parse_module_symvers,
)


class AuditModuleAbiSurfaceTests(unittest.TestCase):
    def test_dependencies_are_compared_as_module_sets(self):
        self.assertEqual(
            normalized_dependencies(
                {"depends": ["zlog_common,kmparam", "panel_event_notifier"]}
            ),
            {"zlog_common", "kmparam", "panel_event_notifier"},
        )

    def test_module_symvers_parses_crc_values(self):
        parsed = parse_module_symvers(
            "0x12345678\tone\tvmlinux\tEXPORT_SYMBOL\n"
            "0xabcdef01\ttwo\tfoo\tEXPORT_SYMBOL_GPL\n"
        )
        self.assertEqual(parsed, {"one": {0x12345678}, "two": {0xABCDEF01}})

    def test_symvers_tables_are_unioned_by_symbol(self):
        self.assertEqual(
            merge_symvers({"one": {1}}, {"one": {2}, "two": {3}}),
            {"one": {1, 2}, "two": {3}},
        )


if __name__ == "__main__":
    unittest.main()
