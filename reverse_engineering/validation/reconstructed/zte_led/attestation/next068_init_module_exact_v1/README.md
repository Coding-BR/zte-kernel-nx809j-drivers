# zte_led `init_module` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `init_module@00106824` to the reconstructed zte_led candidate. The exact Assembly island preserves the 120-byte/30-instruction AArch64 `.init.text` lifecycle entry, KCFI preamble, version log, 500 ms delay, registration log, `i2c_register_driver` call, error branch and return value.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including `init_module` in `test_parse_probe_lifecycle`.

The module has the same valid KCFI record on both sides: type ID `0x6fbb3035`, little-endian preamble `3530bb6f` and 120-byte symbol size. The generic C implementation remains available to the host model; the kernel build selects the exact `.init.text` island and excludes only the generic init registration wrapper.

The module-level audit retains the pre-existing stock-only `mem_alloc_profiling_key` import difference seen in earlier promoted zte_led islands. Physical hardware, sanitizer, lock/lifetime, counterexample and independent runtime review remain deferred.
