# zte_led `cleanup_module` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `cleanup_module@001068a0` to the reconstructed zte_led candidate. The exact Assembly island preserves the 36-byte/9-instruction AArch64 `.exit.text` teardown entry, KCFI preamble, binding to the stock driver object, `i2c_del_driver` call and authenticated return sequence.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including `cleanup_module` in `test_parse_probe_lifecycle`.

The module has the same valid KCFI record on both sides: type ID `0xe5c47d60`, little-endian preamble `607dc4e5` and 36-byte symbol size. The generic C teardown remains available to the host model; the kernel build selects the exact `.exit.text` island and excludes only the generic exit registration wrapper.

The module-level audit retains the pre-existing stock-only `mem_alloc_profiling_key` import difference seen in earlier promoted zte_led islands. Physical hardware, sanitizer, lock/lifetime, counterexample and independent runtime review remain deferred.
