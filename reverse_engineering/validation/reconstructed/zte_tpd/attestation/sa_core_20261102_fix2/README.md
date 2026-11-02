# `tpd_set_screen_off_awake` C reconstruction — 2026-11-02

## Result

The target now builds from the reconstructed C source. The canonical Docker protocol finished with `CORE_GATES_PASS`; all eight automated gates passed:

`ASSEMBLY_RELOCATIONS`, `CANDIDATE_GHIDRA_PCODE`, `DOCKER_REPRODUCIBLE`, `INPUT_IDENTITY`, `JOERN_SCOPED`, `JOERN_SLICE`, `KCFI`, and `MAP_IDENTITY`.

Two clean builds produced identical `zte_tpd.ko` files (6,384,880 bytes; SHA-256 `a1d70b9f690df1b8c12962fd9e99b933496bcb5471a3919fe4e60b0bc2b95db4`). They used the NX809J Docker source volume, `nubia-sm8850-kernel-builder:latest`, and Clang `r536225`.

## Corrections

- The Makefile had selected a full-function `.inst` assembly implementation, so prior successful builds did not prove the C reconstruction. The target now compiles `tpd_set_screen_off_awake.c`.
- The callback declaration now matches the observed `int (struct ztp_device *, int)` ABI.
- The host contract harness models `printk` return values and covers 72 state/value cases with 576 checks. Its mutation run rejects a candidate that incorrectly returns the `printk` result.
- Candidate Ghidra labels imported `_printk` as non-returning and omits only the trailing `return 0`. A narrow, opt-in comparator rule records this warning and accepts only exact normalized-C equality after restoring that suffix. Equal 88-byte function extents, 64-record P-Code shape, and independent relocation-aware assembly parity remain required.
- The target itself has no indirect call. Its KCFI type ID is `0x6af8b499`; the actual callback consumer `set_screen_off_awake` separately passes the stock/candidate guarded-callsite comparison for slot `+0xfe0` and the same type ID.

## Evidence and limits

See `hard_protocol_report.json`, `docker/canonical_build_report.json`, `assembly/comparison.json`, `ghidra/semantic_comparison.json`, `joern/joern_gate_report.json`, and `kcfi/comparison.json`. The job and plan are retained alongside this report.

This is an automated-core pass, not promotion or a claim that the whole driver is complete. The runner leaves `BOUNDED_MODEL`, `CALLBACK_TABLE`, `HOST_HARNESS`, `INDEPENDENT_REVIEW`, `KMI_TYPES`, `KUNIT_LOCKDEP_KCSAN`, `LLVM_IR_DIAGNOSIS`, `LOCK_LIFETIME`, `SANITIZERS`, `SEMANTIC_COUNTEREXAMPLE`, and `STATE_EFFECT_LEDGER` for their required evidence/review steps. The reconstruction map was not promoted, and no hardware behavior was tested.
