# zlog_test second-pass offline mapping review

Date: 2026-11-02. Verdict: **PASS for the scoped static review**.

This review caught a provenance defect in the older assembly status: its passing comparison was tied to candidate `d1a19d…`, while the canonical Docker candidate is `c779578…`. Mixing the old stock disassembly export with a new extraction also produced relocation-only comparison failures because the old export stored string relocations as offsets.

Both stock (`reference_modules/full_vendor_boot/zlog_test.ko`) and the current Docker candidate were freshly extracted with the same `extract_module_assembly.py`, container image, and clang revision. The fresh comparison passes all 11 mapped stock/Ghidra identities across instruction bytes, relocations, section, and symbol size. The map, candidate, stock and two-build Docker audit hashes are recorded in `mapping_review.json`. Repository and Docker source inputs match by SHA-256.

This is a Codex second-pass check, **not** a distinct human peer review. Independent human review remains pending, and controlled hardware validation remains deferred; the driver status therefore stays `INCOMPLETE`.
