# aw22xxx_cfg_recover_update_wait exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_cfg_recover_update_wait@00106394` to the reconstructed zte_led candidate. The exact island preserves the 968-byte/242-instruction AArch64 firmware-recovery sequence, effect-state updates, configuration bounds/name checks, request/release-firmware flow, RGB substitution loop, delays, stack-canary protection, and the stock `brk #0x5512` boundary for `imax > 12`.

Validation used the Docker snapshot/toolchain from `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia` for two clean reproducible cycles. Assembly/relocation, fresh Ghidra C/P-Code, Joern scope/slice, direct-call KCFI, input identity and map identity all passed; the host harness passed reproducibly with 58/58 covered functions.

The Ghidra export preserves the auditable body extension and caller-reference repairs `00105ca4 -> 00105d84` and `00105cc0 -> 00105d84`. A narrow function-specific normalization records only Ghidra's synthetic call labels and three prefixed global labels; it requires ordered call-position equality and whole-function equality after rewriting, while exact body bytes, P-Code and relocation-aware Assembly remain independent gates.

The result is offline/static evidence only. Physical hardware behavior, direct execution of this firmware-recovery loop, lock/lifetime review, sanitizers, semantic counterexample search and independent runtime review remain deferred.
