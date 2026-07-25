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


def test_rejects_additional_pcode_difference() -> None:
    stock = Counter({("mov", 0, "INT_ZEXT"): 1, ("bl", 0, "CALL"): 1})
    candidate = Counter({("mov", 0, "COPY"): 1, ("bl", 0, "CALLIND"): 1})

    passed, _ = MODULE.bounded_move_width_equivalence(stock, candidate)

    assert not passed


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
