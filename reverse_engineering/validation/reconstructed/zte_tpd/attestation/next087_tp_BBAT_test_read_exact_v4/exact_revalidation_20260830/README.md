# `tp_BBAT_test_read` — offline exact revalidation v4

This package records the Docker-backed revalidation of the atomic `zte_tpd`
function `tp_BBAT_test_read` at stock entry `0x0010da90`.

The main source and Docker curated snapshot were synchronized byte-for-byte
before the build; the synchronization corrected only the two unused lifted
`printk` vararg initializers. The canonical Android 16 GKI 6.12.23/vendor_dlkm
build passed in two cycles. Stock and candidate both contain 65 AArch64
instructions and 260 ELF bytes; the relocation-aware comparator passed. KCFI
is present on both sides with matching type ID `0xf4e9d97c`. The strict Joern
gate resolved one method with no unresolved calls or call deltas. The direct
source harness passed four cases in two ASan/UBSan Docker cycles. Joern records
the expected userspace egress through the read callback as a runtime-review
item.

This is `OFFLINE_EXACT` evidence only. Android runtime, procfs behavior,
vendor_dlkm loading and NX809J hardware behavior remain deferred.
