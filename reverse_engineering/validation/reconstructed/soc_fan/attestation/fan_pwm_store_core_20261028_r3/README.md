# `soc_fan::fan_pwm_store` core attestation

The candidate is in `kernel_development/drivers/reconstructed/soc_fan/soc_fan.c`. Stock identity is `fan_pwm_store@00101654`, `.text` offset `0x116c`, size 412 bytes, with method KCFI type `0x9ce291cd`.

## Result

The automated core gates pass. The two Docker builds are byte-identical: SHA-256 `19eea9f885df975cdbd783d5fe782cea61aa7e7eb48a33f5b5139eeffe06f12a` (221,384 bytes). Joern, KCFI, function body size, section, relocations, normalized decompiled C, and fresh candidate Ghidra module identity pass.

Strict Assembly and strict Ghidra P-Code shape comparisons remain false for one compiler predicate change: stock uses unsigned `x >= 101`, while the candidate uses the equivalent unsigned `x > 100`. `classify_aarch64_predicate_equivalence.py` proves the adjacent-boundary identity, binds the proof to the compared function hashes, reports no unresolved differences, and confirms the structural checks. The hard protocol records both gates as `PASS_WITH_PROVEN_PREDICATE_EQUIVALENCE`; it does not claim byte identity.

## Scope remaining

This is a method-level core result. Promotion is not authorized. The driver still has unreconstructed functions and pending callback/data-table, KMI, host-harness, independent-review, and semantic-counterexample evidence. The generic Docker audit also reports that the curated `soc_fan` source directory lacks its driver-level `reconstruction_map.json`; its two reproducible builds nevertheless pass the hard protocol's Docker gate.