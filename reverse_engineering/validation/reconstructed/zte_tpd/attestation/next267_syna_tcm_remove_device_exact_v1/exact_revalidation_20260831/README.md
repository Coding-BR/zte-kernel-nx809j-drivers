# Exact revalidation: `syna_tcm_remove_device`

- Driver: `zte_tpd`
- Microtask: `267_syna_tcm_remove_device`
- Stock entry: `001216d0`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The reconstructed teardown matches the stock function at 156 AArch64 instructions and 624 ELF-symbol bytes. The reviewed behavior covers the NULL-device branch, six buffer release sequences at the recovered offsets, managed-device lookup before each free, fallback logging when no managed device exists, clearing of reset pointers and flags, final device cleanup, and terminal logging.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x9b7e2760` with section and symbol-size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering NULL input, managed teardown of all six buffers plus the device, and the no-managed-device fallback. Joern strict resolved the target with 141 calls, 28 control structures, zero unresolved calls and zero parser errors.

Limitations: kernel `printk`, managed-device lookup and `devm_kfree` are stubbed by the host harness; allocator ownership, Android runtime, module loading and NX809J hardware behavior remain deferred.
