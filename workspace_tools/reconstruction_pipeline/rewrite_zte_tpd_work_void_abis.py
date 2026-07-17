#!/usr/bin/env python3
"""Apply stock KCFI ABIs to zte_tpd work callbacks and void routines."""

from __future__ import annotations

import argparse
from pathlib import Path


def replace_once(content: str, old: str, new: str, label: str) -> str:
    if old in content:
        return content.replace(old, new, 1)
    if new in content:
        return content
    raise ValueError(f"precondition failed: {label}")


def transform_tpd_id(content: str, name: str, index: int) -> str:
    content = replace_once(
        content,
        f"__int64 {name}()\n{{",
        f"void {name}(struct work_struct *work)\n{{\n  (void)work;",
        f"{name} signature",
    )
    return replace_once(
        content,
        f"  return edge_long_press_up((struct input_dev *)qword_{0x30F28 + index * 0x88:X}, {index});",
        f"  edge_long_press_up((struct input_dev *)qword_{0x30F28 + index * 0x88:X}, {index});",
        f"{name} return",
    )


def transform_files(root: Path) -> dict[Path, str]:
    updates: dict[Path, str] = {}

    def edit(name: str, operations: list[tuple[str, str, str]]) -> None:
        path = root / name
        content = path.read_text(encoding="utf-8")
        for old, new, label in operations:
            content = replace_once(content, old, new, f"{name}: {label}")
        updates[path] = content

    edit(
        "syna_work_charger_detect_work.c",
        [
            (
                "__int64 __fastcall syna_work_charger_detect_work(__int64 result, __int64 a2, __int64 a3)\n{",
                "void syna_work_charger_detect_work(struct work_struct *work)\n{\n  __int64 result = (__int64)work;",
                "signature",
            ),
            (
                '  printk(unk_35219, "syna_work_charger_detect_work", a3);',
                '  printk(unk_35219, "syna_work_charger_detect_work");',
                "printk phantom argument",
            ),
            ("  return result;", "  return;", "void return"),
        ],
    )

    edit(
        "tp_ghost_check_work.c",
        [
            (
                "__int64 tp_ghost_check_work()\n{",
                "void tp_ghost_check_work(struct work_struct *work)\n{\n  (void)work;",
                "signature",
            ),
            ("  __int64 result; // x0\n", "", "result declaration"),
            ("  result = ghost_check_reset();", "  ghost_check_reset();", "void call"),
            ("  return result;\n", "", "void return"),
        ],
    )

    for index in range(10):
        name = f"tpd_id{index}_report_work"
        path = root / f"{name}.c"
        updates[path] = transform_tpd_id(
            path.read_text(encoding="utf-8"), name, index
        )

    for name in ("tpd_resume_work", "tpd_suspend_work", "ufp_single_tap_work"):
        edit(
            f"{name}.c",
            [
                (
                    f"void {name}()\n{{",
                    f"void {name}(struct work_struct *work)\n{{\n  (void)work;",
                    "signature",
                )
            ],
        )

    edit(
        "ufp_report_lcd_state_work.c",
        [
            (
                "__int64 ufp_report_lcd_state_work()\n{",
                "void ufp_report_lcd_state_work(struct work_struct *work)\n{\n  (void)work;",
                "signature",
            ),
            (
                "  return ufp_report_lcd_state();",
                "  ufp_report_lcd_state();",
                "void return",
            ),
        ],
    )

    edit(
        "ztp_probe_work.c",
        [
            (
                "__int64 __fastcall ztp_probe_work(__int64 a1, __int64 a2, __int64 a3)\n{",
                "void ztp_probe_work(struct work_struct *work)\n{\n  (void)work;",
                "signature",
            ),
            ("  v3 = printk(unk_33A5E, a2, a3);", "  v3 = printk(unk_33A5E);", "printk"),
            ("  return syna_dev_module_init(v3);", "  syna_dev_module_init(v3);", "void return"),
        ],
    )

    edit(
        "cancel_report_lcd_state_delayed_work.c",
        [
            (
                "__int64 cancel_report_lcd_state_delayed_work(void)",
                "void cancel_report_lcd_state_delayed_work(void)",
                "signature",
            ),
            (
                "  return cancel_delayed_work_sync(tpd_cdev + 2528);",
                "  cancel_delayed_work_sync(tpd_cdev + 2528);",
                "void return",
            ),
        ],
    )

    edit(
        "syna_dev_module_exit.c",
        [
            ("extern __int64 syna_hw_interface_exit(void);", "extern void syna_hw_interface_exit(void);", "callee declaration"),
            ("__int64 syna_dev_module_exit(void)", "void syna_dev_module_exit(void)", "signature"),
            ("  return syna_hw_interface_exit();", "  syna_hw_interface_exit();", "void return"),
        ],
    )

    edit(
        "syna_hw_interface_exit.c",
        [
            ("__int64 syna_hw_interface_exit(void)", "void syna_hw_interface_exit(void)", "signature"),
            ("  return 0;\n", "", "void return"),
        ],
    )

    edit(
        "tp_free_tp_firmware_data.c",
        [
            ("__int64 tp_free_tp_firmware_data()", "void tp_free_tp_firmware_data(void)", "signature"),
            ("  return result;\n", "", "void return"),
        ],
    )

    edit(
        "tpd_clean_all_event.c",
        [("void tpd_clean_all_event()", "void tpd_clean_all_event(void)", "signature")],
    )

    edit(
        "tpd_probe_work_deinit.c",
        [
            ("__int64 __fastcall tpd_probe_work_deinit(__int64 a1, __int64 a2, __int64 a3)", "void tpd_probe_work_deinit(void)", "signature"),
            ('  printk(unk_322AA, "tpd_probe_work_deinit", a3);', '  printk(unk_322AA, "tpd_probe_work_deinit");', "printk"),
            ("  return cancel_delayed_work_sync(v3 + 2256);", "  cancel_delayed_work_sync(v3 + 2256);", "void return"),
        ],
    )

    edit(
        "tpd_probe_work_init.c",
        [
            ("__int64 __fastcall tpd_probe_work_init(__int64 a1, __int64 a2, __int64 a3)", "void tpd_probe_work_init(void)", "signature"),
            ('  printk(unk_322AA, "tpd_probe_work_init", a3);', '  printk(unk_322AA, "tpd_probe_work_init");', "printk"),
            ("  return 0;\n", "", "void return"),
        ],
    )

    edit(
        "tpd_proc_deinit.c",
        [
            ("__int64 __fastcall tpd_proc_deinit(__int64 a1, __int64 a2, __int64 a3)", "void tpd_proc_deinit(void)", "signature"),
            (
                '  if ( !tpd_proc_dir )\n    return printk(unk_3CE70, "tpd_proc_deinit", a3);',
                '  if ( !tpd_proc_dir )\n  {\n    printk(unk_3CE70, "tpd_proc_deinit");\n    return;\n  }',
                "early return",
            ),
            ("  return 0;\n", "", "void return"),
        ],
    )

    edit(
        "tpd_report_work_deinit.c",
        [
            ("__int64 __fastcall tpd_report_work_deinit(__int64 a1, __int64 a2, __int64 a3)", "void tpd_report_work_deinit(void)", "signature"),
            ('  printk(unk_322AA, "tpd_report_work_deinit", a3);', '  printk(unk_322AA, "tpd_report_work_deinit");', "printk"),
            ("  return cancel_delayed_work_sync(v3 + 2152);", "  cancel_delayed_work_sync(v3 + 2152);", "void return"),
        ],
    )

    edit(
        "tpd_reset_fw_data_pos_and_size.c",
        [("void tpd_reset_fw_data_pos_and_size()", "void tpd_reset_fw_data_pos_and_size(void)", "signature")],
    )

    edit(
        "tpd_resume_work_deinit.c",
        [
            ("__int64 __fastcall tpd_resume_work_deinit(__int64 a1, __int64 a2, __int64 a3)", "void tpd_resume_work_deinit(void)", "signature"),
            ('  printk(unk_322AA, "tpd_resume_work_deinit", a3);', '  printk(unk_322AA, "tpd_resume_work_deinit");', "printk"),
            ("  return cancel_delayed_work_sync(v3 + 2528);", "  cancel_delayed_work_sync(v3 + 2528);", "void return"),
        ],
    )

    edit(
        "tpd_resume_work_init.c",
        [
            ("__int64 __fastcall tpd_resume_work_init(__int64 a1, __int64 a2, __int64 a3)", "void tpd_resume_work_init(void)", "signature"),
            ('  printk(unk_322AA, "tpd_resume_work_init", a3);', '  printk(unk_322AA, "tpd_resume_work_init");', "printk"),
            ("  return 0;\n", "", "void return"),
        ],
    )

    edit(
        "tpd_workqueue_deinit.c",
        [
            ("__int64 __fastcall tpd_workqueue_deinit(__int64 a1, __int64 a2, __int64 a3)", "void tpd_workqueue_deinit(void)", "signature"),
            ("  __int64 v4; // x0\n  __int64 v5; // x0\n", "", "spurious return locals"),
            ("  __int64 v7; // x2\n", "", "spurious printk local"),
            (
                '  v4 = printk(unk_322AA, "tpd_workqueue_deinit", a3);\n  v5 = tpd_report_work_deinit(v4);\n  tpd_resume_work_deinit(v5);',
                '  printk(unk_322AA, "tpd_workqueue_deinit");\n  tpd_report_work_deinit();\n  tpd_resume_work_deinit();',
                "deinit calls",
            ),
            ('  printk(unk_322AA, "tpd_probe_work_deinit", v7);', '  printk(unk_322AA, "tpd_probe_work_deinit");', "probe printk"),
            ("  return cancel_delayed_work_sync(v3 + 2360);", "  cancel_delayed_work_sync(v3 + 2360);", "void return"),
        ],
    )

    edit(
        "ufp_mac_exit.c",
        [
            ("__int64 ufp_mac_exit()", "void ufp_mac_exit(void)", "signature"),
            ("  return 0;\n", "", "void return"),
        ],
    )

    edit(
        "ufp_report_lcd_state.c",
        [
            ("__int64 __fastcall ufp_report_lcd_state(__int64 a1, __int64 a2, __int64 a3)", "void ufp_report_lcd_state(void)", "signature"),
            ("    printk(unk_35F05, a2, a3);", "    printk(unk_35F05);", "success printk"),
            ("  result = printk(v4, a2, a3);", "  result = printk(v4);", "error printk"),
            ("  return result;\n", "  return;\n", "void return"),
        ],
    )

    edit(
        "cleanup_module.c",
        [
            ("extern __int64 syna_dev_module_exit(void);", "extern void syna_dev_module_exit(void);", "declaration"),
            ("  __int64 v0;\n\n", "", "spurious local"),
            ("  v0 = syna_dev_module_exit();\n  zte_touch_deinit(v0, 0, 0);", "  syna_dev_module_exit();\n  zte_touch_deinit(0, 0, 0);", "void call"),
        ],
    )

    edit(
        "zte_touch_probe.c",
        [
            (
                "    v113 = tpd_clean_all_event();\n    v114 = ghost_check_reset(v113);\n    v115 = ufp_mac_init(v114);\n    if ( !(unsigned int)tpd_workqueue_init(v115, v116, v117) )",
                "    tpd_clean_all_event();\n    ghost_check_reset();\n    v115 = ufp_mac_init();\n    if ( !(unsigned int)tpd_workqueue_init() )",
                "void initialization chain",
            )
        ],
    )

    edit(
        "zte_touch_deinit.c",
        [
            ("  __int64 v5; // x0\n  __int64 v6; // x1\n  __int64 v7; // x2\n", "", "ufp/proc locals"),
            ("  __int64 v9; // x2\n  __int64 v10; // x0\n  __int64 v11; // x0\n", "", "workqueue locals"),
            ("  __int64 v13; // x2\n", "", "probe local"),
            ("  v5 = ufp_mac_exit();\n  zlog_register_work_deinit();\n  tpd_proc_deinit(v5, v6, v7);", "  ufp_mac_exit();\n  zlog_register_work_deinit();\n  tpd_proc_deinit();", "void teardown calls"),
            ('  v10 = printk(unk_322AA, "tpd_workqueue_deinit", v9);\n  v11 = tpd_report_work_deinit(v10);\n  tpd_resume_work_deinit(v11);', '  printk(unk_322AA, "tpd_workqueue_deinit");\n  tpd_report_work_deinit();\n  tpd_resume_work_deinit();', "workqueue teardown"),
            ('  printk(unk_322AA, "tpd_probe_work_deinit", v13);', '  printk(unk_322AA, "tpd_probe_work_deinit");', "probe printk"),
        ],
    )

    edit(
        "zte_touch_shutdown.c",
        [
            ("  __int64 v1; // x2\n", "", "workqueue printk local"),
            ("  __int64 v4; // x0\n  __int64 v5; // x0\n", "", "workqueue return locals"),
            ("  __int64 v7; // x2\n", "", "probe printk local"),
            ('  v4 = printk(unk_322AA, "tpd_workqueue_deinit", v1);\n  v5 = tpd_report_work_deinit(v4);\n  tpd_resume_work_deinit(v5);', '  printk(unk_322AA, "tpd_workqueue_deinit");\n  tpd_report_work_deinit();\n  tpd_resume_work_deinit();', "workqueue teardown"),
            ('  printk(unk_322AA, "tpd_probe_work_deinit", v7);', '  printk(unk_322AA, "tpd_probe_work_deinit");', "probe printk"),
        ],
    )

    edit(
        "tpd_workqueue_init.c",
        [("  tpd_resume_work_init(0, 0, 0);", "  tpd_resume_work_init();", "void init call")],
    )

    edit(
        "syna_ts_panel_notifier_callback.c",
        [("    ufp_report_lcd_state(0, 0, 0);", "    ufp_report_lcd_state();", "void report call")],
    )

    defs = root / "defs.h"
    content = defs.read_text(encoding="utf-8")
    content = replace_once(
        content,
        "extern __int64 syna_work_charger_detect_work(__int64 a1, __int64 a2, __int64 a3);",
        "extern void syna_work_charger_detect_work(struct work_struct *work);",
        "defs syna charger work",
    )
    for index in range(10):
        name = f"tpd_id{index}_report_work"
        content = replace_once(
            content,
            f"extern __int64 {name}(void);",
            f"extern void {name}(struct work_struct *work);",
            f"defs {name}",
        )
    for name, old in (
        ("ztp_probe_work", "extern __int64 ztp_probe_work(__int64 a1, __int64 a2, __int64 a3);"),
        ("tpd_resume_work", "extern void tpd_resume_work(void);"),
        ("tpd_suspend_work", "extern void tpd_suspend_work(void);"),
        ("ufp_report_lcd_state_work", "extern __int64 ufp_report_lcd_state_work(void);"),
        ("tp_ghost_check_work", "extern __int64 tp_ghost_check_work(void);"),
        ("ufp_single_tap_work", "extern void ufp_single_tap_work(void);"),
    ):
        content = replace_once(
            content,
            old,
            f"extern void {name}(struct work_struct *work);",
            f"defs {name}",
        )
    marker = "\n// Injected globals\n"
    prototypes = """

// Stock void(void) callback family recovered from KCFI.
extern void cancel_report_lcd_state_delayed_work(void);
extern void syna_dev_module_exit(void);
extern void syna_hw_interface_exit(void);
extern void tp_free_tp_firmware_data(void);
extern void tpd_clean_all_event(void);
extern void tpd_probe_work_deinit(void);
extern void tpd_probe_work_init(void);
extern void tpd_proc_deinit(void);
extern void tpd_report_work_deinit(void);
extern void tpd_reset_fw_data_pos_and_size(void);
extern void tpd_resume_work_deinit(void);
extern void tpd_resume_work_init(void);
extern void tpd_workqueue_deinit(void);
extern void ufp_mac_exit(void);
extern void ufp_report_lcd_state(void);
"""
    if prototypes.strip() not in content:
        if marker not in content:
            raise ValueError("defs.h injection marker missing")
        content = content.replace(marker, prototypes + marker, 1)
    updates[defs] = content
    return updates


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--driver-root", type=Path, required=True)
    parser.add_argument("--write", action="store_true")
    args = parser.parse_args()

    root = args.driver_root.resolve()
    updates = transform_files(root)
    changed = [path for path, content in updates.items() if path.read_text(encoding="utf-8") != content]
    if args.write:
        for path in changed:
            path.write_text(updates[path], encoding="utf-8")
    print(f"{'updated' if args.write else 'requires_update'}={len(changed)}")
    for path in changed:
        print(path)
    return 0 if args.write or not changed else 1


if __name__ == "__main__":
    raise SystemExit(main())
