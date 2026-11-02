# zlog_test AArch64 assembly status

Current canonical candidate SHA-256: `c779578131ef0131fd4ceb9e77d10332a3ae063bc29adc96a477dd3e7238251a` (Docker snapshot, audit 2026-11-02).

**PASS:** all 11 mapped functions match stock in instruction bytes, relocations, section, and symbol size. Stock and candidate were freshly extracted with the same `extract_module_assembly.py`, container image, and clang revision. The machine-readable comparison and extraction manifests are under `attestation/independent_mapping_review_20261102/`; they bind the result to the current candidate and stock hashes.

The earlier `candidate_assembly/manifest.json` and top-level `assembly_comparison.json` refer to candidate `d1a19d632dd9039fa1b6c63e1d453d552a8dca95cec2143735e5f98ebe3e6fb9`. They are retained as historical evidence and do not attest the current canonical candidate.

This is a second-pass static check by Codex, not a distinct human peer review.
