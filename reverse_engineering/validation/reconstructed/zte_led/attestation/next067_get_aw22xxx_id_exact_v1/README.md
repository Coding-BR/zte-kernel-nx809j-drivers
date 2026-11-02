# get_aw22xxx_id exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `get_aw22xxx_id@00106760` to the reconstructed zte_led candidate. The exact Assembly island preserves the 192-byte/48-instruction AArch64 procfs callback, the early `*ppos` return, `g_chip_id` data binding, printk/strnlen path, fortified length boundaries, `simple_read_from_buffer` call and both `__fortify_panic` branches.

Validation used the Docker snapshot and toolchain from `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia` with image `nubia-sm8850-kernel-builder:latest`, clang `clang-r536225`, and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including `get_aw22xxx_id` in `test_sysfs_and_proc`.

The callback has a valid KCFI record in both modules: type ID `0xf4e9d97c`, 192-byte symbol size and little-endian preamble `7cd9e9f4`. Ghidra initially inferred `_printk` as non-returning and stopped at 100 bytes; the preserved candidate export records the bounded repair (clear no-return, extend to 192 bytes), while exact Assembly and P-Code remain the authoritative independent checks for this Assembly-only island.

The module-level audit retains the pre-existing stock-only `mem_alloc_profiling_key` import difference seen in the earlier promoted zte_led islands; it is documented and no new unexpected import was introduced by this target. Physical hardware, sanitizer, lock/lifetime, counterexample and independent runtime review remain deferred.
