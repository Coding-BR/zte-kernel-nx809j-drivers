# `tp_test_write` — offline exact revalidation v4

This package records the Docker-backed revalidation of the atomic `zte_tpd`
function `tp_test_write` at stock entry `0x0010dcdc`.

The main source and Docker curated snapshot were SHA-256 identical before the
build. The canonical Android 16 GKI 6.12.23/vendor_dlkm build passed in two
cycles. Stock and candidate both contain 13 AArch64 instructions and 52 ELF
bytes; the relocation-aware comparator passed. KCFI is present on both sides
with matching type ID `0xc3d43b4d`. The strict Joern gate resolved one method
with no unresolved calls or call deltas. The direct source harness passed its
covered cases in two ASan/UBSan Docker cycles.

This is `OFFLINE_EXACT` evidence only. Android runtime, procfs behavior,
vendor_dlkm loading and NX809J hardware behavior remain deferred.
