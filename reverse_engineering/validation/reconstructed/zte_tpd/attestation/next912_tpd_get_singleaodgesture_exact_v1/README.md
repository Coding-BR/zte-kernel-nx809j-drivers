# zte_tpd `tpd_get_singleaodgesture` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `tpd_get_singleaodgesture@0012bccc` to the reconstructed TPD candidate. The function preserves the AOD gesture query path, diagnostic logging, callback/data handling and status return behavior.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, Ghidra body bounds, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed.

Ghidra produced the narrow `ghidra_premature_return_decompiler_truncation` artifact because one import treats an imported `_printk` as no-return. The fallback is allowed only with equal body bytes/P-Code and independent relocation-aware Assembly parity; it is not a generic C waiver and does not claim hardware or runtime equivalence. Runtime, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
