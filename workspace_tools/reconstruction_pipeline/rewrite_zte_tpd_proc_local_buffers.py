#!/usr/bin/env python3
"""Replace split decompiler locals with the stock 10-byte proc input buffer."""

from __future__ import annotations

import argparse
from pathlib import Path


TARGETS = (
    "set_display_rotation.c",
    "headset_state_store.c",
    "tp_pen_only_write.c",
    "tp_sensibility_level_write.c",
)


def replace_once(content: str, old: str, new: str, label: str) -> str:
    if old in content:
        return content.replace(old, new, 1)
    if new in content:
        return content
    raise ValueError(f"precondition failed: {label}")


def transform_content(content: str, label: str) -> str:
    content = replace_once(
        content,
        "  __int64 v11; // [xsp+8h] [xbp-18h] BYREF\n"
        "  __int16 v12; // [xsp+10h] [xbp-10h]\n",
        "  struct __attribute__((packed)) {\n"
        "    __int64 low;\n"
        "    __int16 high;\n"
        "  } v11 = { 0 }; // [xsp+8h] [xbp-18h] BYREF\n",
        f"{label}: contiguous local declaration",
    )
    return replace_once(
        content,
        "  v12 = 0;\n"
        "  v11 = 0;\n"
        "  _check_object_size(&v11, v5, 0);\n"
        "  if ( copy_from_user(&v11, (const void __user *)a2, v5) || "
        "(unsigned int)kstrtouint(&v11, 0, &v10) )\n",
        "  _check_object_size(&v11, v5, 0);\n"
        "  if ( zte_inline_copy_from_user(&v11, (const void __user *)a2, v5) || "
        "(unsigned int)kstrtouint((const char *)&v11, 0, &v10) )\n",
        f"{label}: contiguous local use",
    )


def transform_files(root: Path) -> dict[Path, str]:
    updates = {}
    for name in TARGETS:
        path = root / name
        updates[path] = transform_content(path.read_text(encoding="utf-8"), name)
    return updates


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver-root", type=Path, required=True)
    parser.add_argument("--write", action="store_true")
    args = parser.parse_args()

    updates = transform_files(args.driver_root.resolve())
    changed = [
        path for path, content in updates.items()
        if path.read_text(encoding="utf-8") != content
    ]
    if args.write:
        for path in changed:
            path.write_text(updates[path], encoding="utf-8")
    print(f"{'updated' if args.write else 'requires_update'}={len(changed)}")
    for path in changed:
        print(path)
    return 0 if args.write or not changed else 1


if __name__ == "__main__":
    raise SystemExit(main())
