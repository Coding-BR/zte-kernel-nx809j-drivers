# `ghost_debug_write` — offline exact revalidation v4

This package records the Docker-backed revalidation of the atomic `zte_tpd`
function `ghost_debug_write` at stock entry `0x0010d8d0`.

The main source and Docker curated snapshot were SHA-256 identical before the
build. The canonical Android 16 GKI 6.12.23/vendor_dlkm build passed in two
cycles. Stock and candidate both contain 111 AArch64 instructions and 444 ELF
bytes; the relocation-aware comparator passed. KCFI is present on both sides
with matching type ID `0xc3d43b4d`. The strict Joern gate resolved one method
with no unresolved calls or call deltas. The direct source harness passed its
covered cases in two ASan/UBSan Docker cycles. Joern records the expected
userspace ingress through the write callback; the path is preserved and
remains a runtime-review item.

This is `OFFLINE_EXACT` evidence only. Android runtime, procfs behavior,
vendor_dlkm loading and NX809J hardware behavior remain deferred.
