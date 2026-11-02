# `cont_drv_time_store` reconstruction

## Current state

The function is a statically validated candidate. Its Docker build is reproducible, and all eight core protocol gates pass in `core_v43/hard_protocol_report.json`. The reconstruction map intentionally remains `candidate_under_static_validation`; this report does not certify the complete driver or authorize promotion.

## Diagnosis and correction

The original mismatch came from modeling the parser output and the two-byte I²C transfer buffer as overlapping members of one union. In the stock function, `sscanf` writes a zero-initialized `u64` at `sp+0x10`, with the second output address formed by OR-ing the address with `4`. The I²C bytes are separate local storage at `sp+0x0c` and `sp+0x0d`.

The reconstructed function now models the `u64` parser result and a separate two-byte transfer structure. Declaring the transfer structure after the parser local gives the pinned Docker Clang the stock stack layout and exact function body.

## Core verification

Using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`, the protocol reports `PASS` for:

- Two reproducible Docker builds and input/module identity.
- Joern scope and usage slice.
- KCFI type ID.
- AArch64 instructions, relocations, section and symbol size (204 bytes, 51 instructions).
- Candidate Ghidra normalized C and P-Code shape.

The candidate module SHA-256 is `ad5cd6ab75b7560a50d207c741c506231693a0ab07ada59392ff1e83ebbbb25c`; its MD5 matches the refreshed candidate Ghidra export.

## Remaining qualification

The Docker function-level build passes, but the driver's strict full-module audit is not verified: the canonical reconstructed `.ko` is absent, and module parity currently fails for vermagic, aliases, undefined symbols, and fresh-candidate identity. The protocol also lists remaining semantic, model, harness, sanitizer, independent-review, and hardware evidence gates in `core_v43/promotion_decision.json`. No runtime or hardware behavior is claimed.
