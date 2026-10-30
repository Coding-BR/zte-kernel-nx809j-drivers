from __future__ import annotations

from collections import Counter
import importlib.util
from pathlib import Path


SCRIPT = (
    Path(__file__).resolve().parents[1]
    / "validate_ghidra_reordered_semantics.py"
)
SPEC = importlib.util.spec_from_file_location("reordered_semantics", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


def test_accepts_only_one_mov_width_lowering() -> None:
    stock = Counter({("mov", 0, "INT_ZEXT"): 2, ("ldr", 2, "LOAD"): 4})
    candidate = Counter({("mov", 0, "INT_ZEXT"): 1,
                         ("mov", 0, "COPY"): 1,
                         ("ldr", 2, "LOAD"): 4})

    passed, evidence = MODULE.bounded_move_width_equivalence(stock, candidate)

    assert passed
    assert evidence["stock_only"] == [
        {"key": ["mov", 0, "INT_ZEXT"], "count": 1}
    ]
    assert evidence["candidate_only"] == [
        {"key": ["mov", 0, "COPY"], "count": 1}
    ]
    assert evidence["mode"] == "BOUNDED_MOVE_WIDTH"


def test_accepts_exact_pcode_multiset() -> None:
    surface = Counter({("mov", 0, "COPY"): 2, ("ldr", 2, "LOAD"): 4})

    passed, evidence = MODULE.bounded_move_width_equivalence(surface, surface)

    assert passed
    assert evidence["mode"] == "EXACT"
    assert evidence["stock_only"] == []
    assert evidence["candidate_only"] == []


def test_rejects_additional_pcode_difference() -> None:
    stock = Counter({("mov", 0, "INT_ZEXT"): 1, ("bl", 0, "CALL"): 1})
    candidate = Counter({("mov", 0, "COPY"): 1, ("bl", 0, "CALLIND"): 1})

    passed, _ = MODULE.bounded_move_width_equivalence(stock, candidate)

    assert not passed


def test_strict_failure_scope_accepts_known_nonempty_subsets() -> None:
    assert MODULE.bounded_strict_failure_scope(["normalized_decompiled_c"])
    assert MODULE.bounded_strict_failure_scope(["pcode_operation_shape"])
    assert MODULE.bounded_strict_failure_scope(
        ["normalized_decompiled_c", "pcode_operation_shape"]
    )


def test_strict_failure_scope_rejects_empty_or_unknown() -> None:
    assert not MODULE.bounded_strict_failure_scope([])
    assert not MODULE.bounded_strict_failure_scope(
        ["normalized_decompiled_c", "call_targets"]
    )


def test_accepts_named_local_key_against_stripped_bss() -> None:
    stock = [
        "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x95e",
        "R_AARCH64_ADD_ABS_LO12_NC .bss+0x95e",
        "R_AARCH64_ADR_PREL_PG_HI21 .rodata:string=x",
    ]
    candidate = [
        "R_AARCH64_ADR_PREL_PG_HI21 syna_testing_pt0a_zte.__key",
        "R_AARCH64_ADD_ABS_LO12_NC syna_testing_pt0a_zte.__key",
        "R_AARCH64_ADR_PREL_PG_HI21 .rodata:string=x",
    ]

    passed, evidence = MODULE.relocation_multiset_equivalence(
        stock, candidate, "syna_testing_pt0a_zte"
    )

    assert passed
    assert len(evidence["stock_only"]) == 2
    assert len(evidence["candidate_only"]) == 2
    assert evidence["mode"] == "BOUNDED_LOCAL_LOCK_KEY"


def test_accepts_exact_relocation_multiset() -> None:
    relocations = [
        "R_AARCH64_ADR_PREL_PG_HI21 .rodata:string=x",
        "R_AARCH64_ADD_ABS_LO12_NC .rodata:string=x",
    ]

    passed, evidence = MODULE.relocation_multiset_equivalence(
        relocations, relocations, "syna_testing_create_dir"
    )

    assert passed
    assert evidence["mode"] == "EXACT"
    assert evidence["stock_only"] == []
    assert evidence["candidate_only"] == []


def test_rejects_unrelated_bss_symbol() -> None:
    stock = [
        "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x95e",
        "R_AARCH64_ADD_ABS_LO12_NC .bss+0x95e",
    ]
    candidate = [
        "R_AARCH64_ADR_PREL_PG_HI21 unrelated_key",
        "R_AARCH64_ADD_ABS_LO12_NC unrelated_key",
    ]

    passed, _ = MODULE.relocation_multiset_equivalence(
        stock, candidate, "syna_testing_pt0a_zte"
    )

    assert not passed


def test_accepts_rodata_offsets_after_strict_ghidra_resolution() -> None:
    stock = [
        "R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1+0x100",
        "R_AARCH64_ADD_ABS_LO12_NC .rodata.str1.1+0x100",
    ]
    candidate = [
        'R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1:string="value"',
        'R_AARCH64_ADD_ABS_LO12_NC .rodata.str1.1:string="value"',
    ]

    passed, evidence = MODULE.relocation_multiset_equivalence(
        stock,
        candidate,
        "suspend_store",
        allow_resolved_rodata_layout=True,
    )

    assert passed
    assert evidence["mode"] == "STRICT_GHIDRA_RESOLVED_RODATA_LAYOUT"


def test_rejects_rodata_offsets_without_strict_resolution() -> None:
    stock = ["R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1+0x100"]
    candidate = [
        'R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1:string="value"'
    ]

    passed, _ = MODULE.relocation_multiset_equivalence(
        stock, candidate, "suspend_store"
    )

    assert not passed


def test_rejects_non_rodata_difference_even_after_strict_resolution() -> None:
    stock = ["R_AARCH64_ADR_PREL_PG_HI21 global_state"]
    candidate = ["R_AARCH64_ADR_PREL_PG_HI21 other_state"]

    passed, _ = MODULE.relocation_multiset_equivalence(
        stock,
        candidate,
        "suspend_store",
        allow_resolved_rodata_layout=True,
    )

    assert not passed
