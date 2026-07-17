#!/usr/bin/env python3
"""Apply and verify the stock KCFI ABI for zte_tpd proc callbacks."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


READ_HANDLERS = (
    "display_rotation_show",
    "get_fake_sleep",
    "get_finger_lock_flag",
    "get_follow_hand_level",
    "get_one_key",
    "get_play_game",
    "get_rotation_limit_level",
    "get_screen_off_awake",
    "get_stability_level",
    "get_tp_noise_show",
    "get_tp_report_rate",
    "ghost_debug_read",
    "headset_state_show",
    "suspend_show",
    "syna_cdev_read",
    "tp_BBAT_test_read",
    "tp_edge_report_limit_read",
    "tp_fold_state_read",
    "tp_frame_data_read",
    "tp_game_partition_read",
    "tp_glove_read",
    "tp_module_info_read",
    "tp_palm_mode_read",
    "tp_pen_only_read",
    "tp_self_test_read",
    "tp_sensibility_level_read",
    "tp_single_aod_read",
    "tp_single_game_read",
    "tp_single_tap_read",
    "tp_smart_cover_read",
    "tp_test_read",
    "tp_wake_gesture_read",
)

WRITE_HANDLERS = (
    "get_tp_noise_store",
    "ghost_debug_write",
    "headset_state_store",
    "set_display_rotation",
    "set_fake_sleep",
    "set_finger_lock_flag",
    "set_follow_hand_level",
    "set_one_key",
    "set_play_game",
    "set_rotation_limit_level",
    "set_screen_off_awake",
    "set_stability_level",
    "set_tp_report_rate",
    "suspend_store",
    "syna_cdev_write",
    "tp_BBAT_test_write",
    "tp_edge_report_limit_write",
    "tp_fold_state_write",
    "tp_frame_data_write",
    "tp_game_partition_write",
    "tp_glove_write",
    "tp_palm_mode_write",
    "tp_pen_only_write",
    "tp_self_test_write",
    "tp_sensibility_level_write",
    "tp_single_aod_write",
    "tp_single_game_write",
    "tp_single_tap_write",
    "tp_smart_cover_write",
    "tp_test_write",
    "tp_wake_gesture_write",
    "tpfwupgrade_store",
)


def _read_signature(name: str) -> str:
    return (
        f"ssize_t {name}(struct file *file, char __user *buffer, "
        "size_t count, loff_t *offset)"
    )


def _write_signature(name: str) -> str:
    return (
        f"ssize_t {name}(struct file *file, const char __user *buffer, "
        "size_t count, loff_t *offset)"
    )


def _transform_handler(content: str, name: str, read: bool) -> str:
    target = _read_signature(name) if read else _write_signature(name)
    if re.search(rf"(?m)^{re.escape(target)}\r?$", content):
        return content

    if read:
        old = rf"(?m)^__int64 __fastcall {re.escape(name)}\(__int64 a1, __int64 a2, __int64 a3(?:, __int64 \*a4)?\)\r?\n\{{\r?\n"
        bridge = (
            f"{target}\n{{\n"
            "  __int64 a2 = (__int64)buffer;\n"
            "  __int64 a3 = (__int64)count;\n"
            "  __int64 *a4 = (__int64 *)offset;\n\n"
            "  (void)file;\n"
        )
    else:
        old = rf"(?m)^__int64 __fastcall {re.escape(name)}\(__int64 a1, __int64 a2, __int64 a3\)\r?\n\{{\r?\n"
        bridge = (
            f"{target}\n{{\n"
            "  __int64 a2 = (__int64)buffer;\n"
            "  __int64 a3 = (__int64)count;\n\n"
            "  (void)file;\n"
            "  (void)offset;\n"
        )

    updated, replacements = re.subn(old, bridge, content, count=1)
    if replacements != 1:
        raise ValueError(f"unexpected source signature for {name}")
    return updated


def _transform_globals_h(content: str) -> str:
    updated = content
    for name in READ_HANDLERS:
        if name == "syna_cdev_read":
            continue
        old = f"extern __int64 {name}(__int64 a1, __int64 a2, __int64 a3, __int64 *a4);"
        new = f"extern {_read_signature(name)};"
        if old in updated:
            updated = updated.replace(old, new, 1)
        elif new not in updated:
            raise ValueError(f"missing globals.h declaration for {name}")

    for name in WRITE_HANDLERS:
        if name == "syna_cdev_write":
            continue
        old = f"extern __int64 {name}(__int64 a1, __int64 a2, __int64 a3);"
        new = f"extern {_write_signature(name)};"
        if old in updated:
            updated = updated.replace(old, new, 1)
        elif new not in updated:
            raise ValueError(f"missing globals.h declaration for {name}")
    return updated


def _transform_globals_c(content: str) -> str:
    wrapper_block = re.compile(
        r"\n// Wrapper read functions\r?\n.*?\n// proc_ops structures definition\r?\n",
        re.DOTALL,
    )
    updated, replacements = wrapper_block.subn(
        "\n// proc_ops structures definition\n", content, count=1
    )
    if replacements == 0:
        updated = content
    elif replacements != 1:
        raise ValueError("unexpected globals.c wrapper block count")

    start = updated.find("// proc_ops structures definition")
    end = updated.find("// Declare prototypes of functions used in zte_fops", start)
    if start < 0 or end < 0:
        raise ValueError("proc_ops block not found in globals.c")
    proc_ops = updated[start:end]
    proc_ops = re.sub(r"\bwrap_([A-Za-z0-9_]+)\b", r"\1", proc_ops)
    return updated[:start] + proc_ops + updated[end:]


def _update(path: Path, transformed: str, write: bool, changed: list[str]) -> None:
    current = path.read_text(encoding="utf-8")
    if current == transformed:
        return
    changed.append(str(path))
    if write:
        path.write_text(transformed, encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--driver-root", type=Path, required=True)
    parser.add_argument("--write", action="store_true")
    args = parser.parse_args()

    root = args.driver_root.resolve()
    changed: list[str] = []
    for name in READ_HANDLERS:
        path = root / f"{name}.c"
        current = path.read_text(encoding="utf-8")
        _update(path, _transform_handler(current, name, True), args.write, changed)
    for name in WRITE_HANDLERS:
        path = root / f"{name}.c"
        current = path.read_text(encoding="utf-8")
        _update(path, _transform_handler(current, name, False), args.write, changed)

    globals_h = root / "globals.h"
    current_h = globals_h.read_text(encoding="utf-8")
    _update(globals_h, _transform_globals_h(current_h), args.write, changed)

    globals_c = root / "globals.c"
    current_c = globals_c.read_text(encoding="utf-8")
    _update(globals_c, _transform_globals_c(current_c), args.write, changed)

    action = "updated" if args.write else "requires_update"
    print(f"{action}={len(changed)}")
    for path in changed:
        print(path)
    return 0 if args.write or not changed else 1


if __name__ == "__main__":
    raise SystemExit(main())
