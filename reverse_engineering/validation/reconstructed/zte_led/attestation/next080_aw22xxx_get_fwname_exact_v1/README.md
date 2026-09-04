# zte_led `aw22xxx_get_fwname` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_get_fwname@00103ca8` to the reconstructed zte_led candidate. The exact Assembly island preserves the 508-byte/127-instruction AArch64 firmware-name encoder, including packed mode/v3/v4 extraction, the `aw_cfg`/`aw_fan`/`aw_touch` formatting branches, configuration-table selection, `strlen`/`memcpy` transfer and invalid-effect handling.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code operation shape, Joern scope/slice, KCFI presence/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_firmware_and_configuration`.

The normalized decompiled-C equality is recorded as false because this is an explicit assembly-only exact island; no Ghidra decompiler fallback was used, and the fresh candidate body, ordered instruction shape and P-Code operation shape passed. Both stock and candidate have no valid KCFI preamble, so KCFI is not applicable while size parity is retained. Offline/static evidence does not prove physical AW22xxx LED behavior. The module-level stock-only `mem_alloc_profiling_key` difference remains a pre-existing baseline.
