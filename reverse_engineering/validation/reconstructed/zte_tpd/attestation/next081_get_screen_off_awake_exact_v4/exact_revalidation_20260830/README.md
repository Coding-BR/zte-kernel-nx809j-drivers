# `get_screen_off_awake` — offline exact revalidation v4

This package records the Docker-backed revalidation of the atomic `zte_tpd`
function `get_screen_off_awake` at stock entry `0x0010d240`.

The main source and Docker curated snapshot were SHA-256 identical before the
build. The canonical Android 16 GKI 6.12.23/vendor_dlkm build passed in two
cycles. Stock and candidate both contain 60 AArch64 instructions and 240 ELF
bytes; the relocation-aware comparator passed. KCFI is present on both sides
with matching type ID `0xf4e9d97c`. The strict Joern gate resolved one method
with no unresolved calls or call deltas. The direct source harness passed four
cases in two ASan/UBSan Docker cycles.

This is `OFFLINE_EXACT` evidence only. Android runtime, vendor_dlkm loading,
the Synaptics controller and NX809J hardware behavior remain deferred.
