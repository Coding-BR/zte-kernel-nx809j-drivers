# `ghost_debug_read` — offline exact revalidation v4

This package records the Docker-backed revalidation of the atomic `zte_tpd`
function `ghost_debug_read` at stock entry `0x0010d57c`.

The main source and Docker curated snapshot were SHA-256 identical before the
build. The canonical Android 16 GKI 6.12.23/vendor_dlkm build passed in two
cycles. Stock and candidate both contain 212 AArch64 instructions and 848 ELF
bytes; the relocation-aware comparator passed. KCFI is present on both sides
with matching type ID `0xf4e9d97c`. The strict Joern gate resolved one method
with no unresolved calls or call deltas. The direct source harness passed its
covered cases in two ASan/UBSan Docker cycles. Joern retains explicit lifetime
and userspace-egress findings for the allocation/readback path; these remain
runtime-review items and were not hidden by promotion.

This is `OFFLINE_EXACT` evidence only. Android runtime, procfs behavior,
vendor_dlkm loading and NX809J hardware behavior remain deferred.
