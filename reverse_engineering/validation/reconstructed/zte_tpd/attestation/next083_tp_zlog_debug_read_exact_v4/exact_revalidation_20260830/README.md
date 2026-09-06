# `tp_zlog_debug_read` — offline exact revalidation v4

This package records the Docker-backed revalidation of the atomic `zte_tpd`
function `tp_zlog_debug_read` at stock entry `0x0010d408`.

The main source and Docker curated snapshot were SHA-256 identical before the
build. The canonical Android 16 GKI 6.12.23/vendor_dlkm build passed in two
cycles. Stock and candidate both contain 39 AArch64 instructions and 156 ELF
bytes; the relocation-aware comparator passed. KCFI is present on both sides
with matching type ID `0xf4e9d97c`. The strict Joern gate resolved one method
with no unresolved calls or call deltas. The direct source harness passed four
cases in two ASan/UBSan Docker cycles. Joern records the expected userspace
egress through `simple_read_from_buffer`; the path is preserved and remains a
runtime-review item.

This is `OFFLINE_EXACT` evidence only. Android runtime, procfs behavior,
vendor_dlkm loading and NX809J hardware behavior remain deferred.
