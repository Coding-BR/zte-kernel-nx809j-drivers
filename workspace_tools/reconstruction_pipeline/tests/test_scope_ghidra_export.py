from __future__ import annotations

import json
from pathlib import Path

from workspace_tools.reconstruction_pipeline.scope_ghidra_export import (
    materialize_scoped_export,
)


def write(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8", newline="\n")


def test_materializes_only_requested_function(tmp_path: Path) -> None:
    source = tmp_path / "full"
    output = tmp_path / "scoped"
    manifest = {
        "program": "driver.ko",
        "executable_format": "ELF",
        "executable_md5": "abc",
        "language": "AARCH64:LE:64:v8A",
        "compiler_spec": "default",
        "image_base": "00100000",
        "pointer_size": 8,
        "function_count": 2,
    }
    rows = [
        {
            "name": name,
            "decompiled_file": f"decompiled/{name}.c",
            "pcode_file": f"pcode/{name}.jsonl",
        }
        for name in ("keep", "drop")
    ]
    write(source / "manifest.json", json.dumps(manifest))
    write(source / "functions.jsonl", "".join(json.dumps(row) + "\n" for row in rows))
    calls = [
        {"caller": "probe", "target": "keep", "reference_type": "UNCONDITIONAL_CALL"},
        {"caller": "keep", "target": "helper", "reference_type": "UNCONDITIONAL_CALL"},
        {"caller": "drop", "target": "helper", "reference_type": "UNCONDITIONAL_CALL"},
    ]
    write(source / "calls.jsonl", "".join(json.dumps(row) + "\n" for row in calls))
    write(source / "strings.jsonl", '{"address":"1","value":"x"}\n')
    write(source / "memory_blocks.jsonl", '{"name":".data","start":"1","end":"2","initialized":true}\n')
    write(source / "externals.jsonl", '{"name":"helper"}\n')
    write(source / "symbols.jsonl", '{"name":"obj","address":"1","type":"Object"}\n')
    for row in rows:
        write(source / row["decompiled_file"], row["name"] + " C\n")
        write(source / row["pcode_file"], row["name"] + " P\n")
    write(output / "decompiled/stale.c", "stale\n")
    write(output / "README.md", "preserve\n")

    result = materialize_scoped_export(source, output, ["keep"])

    assert result["function_count"] == 1
    assert (output / "README.md").read_text(encoding="utf-8") == "preserve\n"
    assert not (output / "decompiled/stale.c").exists()
    assert (output / "decompiled/keep.c").is_file()
    assert not (output / "decompiled/drop.c").exists()
    assert json.loads((output / "functions.jsonl").read_text(encoding="utf-8"))["name"] == "keep"
    scoped_calls = [
        json.loads(line)
        for line in (output / "calls.jsonl").read_text(encoding="utf-8").splitlines()
    ]
    assert scoped_calls == calls[:2]
    assert result["call_reference_count"] == 2
    assert result["source_export_calls_sha256"]
    assert (output / "memory_blocks.jsonl").is_file()
    assert (output / "externals.jsonl").is_file()
    assert (output / "symbols.jsonl").is_file()
    assert (output / "manifest.json").read_bytes()[:3] != b"\xef\xbb\xbf"


def test_materializes_exact_duplicate_function_selector(tmp_path: Path) -> None:
    source = tmp_path / "source"
    output = tmp_path / "output"
    source.mkdir()
    write(source / "manifest.json", json.dumps({"program": "x", "function_count": 2}))
    write(source / "strings.jsonl", "")
    rows = [
        {"name": "duplicate", "entry": "00100000", "decompiled_file": "decompiled/a.c", "pcode_file": "pcode/a.jsonl"},
        {"name": "duplicate", "entry": "00100020", "decompiled_file": "decompiled/b.c", "pcode_file": "pcode/b.jsonl"},
    ]
    write(source / "functions.jsonl", "".join(json.dumps(row) + "\n" for row in rows))
    for row in rows:
        write(source / row["decompiled_file"], row["entry"] + " C\n")
        write(source / row["pcode_file"], row["entry"] + " P\n")

    result = materialize_scoped_export(
        source, output, ["duplicate@0x100020"]
    )

    assert result["function_count"] == 1
    assert "00100020 C" in (output / "decompiled/b.c").read_text()


def test_rejects_ambiguous_function_name(tmp_path: Path) -> None:
    source = tmp_path / "full"
    row = {
        "name": "duplicate",
        "decompiled_file": "decompiled/a.c",
        "pcode_file": "pcode/a.jsonl",
    }
    write(source / "manifest.json", json.dumps({"function_count": 2}))
    write(source / "functions.jsonl", json.dumps(row) + "\n" + json.dumps(row) + "\n")
    write(source / "strings.jsonl", "")
    write(source / "decompiled/a.c", "C\n")
    write(source / "pcode/a.jsonl", "P\n")

    try:
        materialize_scoped_export(source, tmp_path / "scoped", ["duplicate"])
    except ValueError as error:
        assert "found 2" in str(error)
    else:
        raise AssertionError("ambiguous function name was accepted")
