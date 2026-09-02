# aw22xxx_led_init exact-island attestation

Status: PROMOTED_OFFLINE_EXACT.

This attestation binds stock `aw22xxx_led_init@00106204` to the reconstructed zte_led candidate. The exact island preserves the 400-byte/100-instruction AArch64 initialization sequence, ordered I2C writes/reads, delays, imax lookup and clamping, stack-canary protection, logging, and the stock `brk #0x5512` boundary for `imax >= 13`.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed, Joern scoped/slice passed, direct-call KCFI non-applicability passed with two incoming direct calls, and the host harness passed reproducibly with 58/58 covered functions.

The candidate Ghidra export was regenerated from the exact module after extending both `aw22xxx_led_init` and its 3024-byte caller `aw22xxx_fw_loaded`. The two caller references were repaired only at relocation-proven callsites `00101384` and `00101a38`, both targeting `00105fc8`; the repair log is preserved in the external Ghidra run provenance and the raw ELF/Assembly gate remains independent.

The result is offline/static evidence only. Physical hardware behavior, lock/lifetime review, sanitizers, semantic counterexample search and independent runtime review remain deferred.
