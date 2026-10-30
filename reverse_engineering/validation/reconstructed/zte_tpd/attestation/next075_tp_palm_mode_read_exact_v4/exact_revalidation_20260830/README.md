# `tp_palm_mode_read` — offline exact revalidation v4

This package records the Docker-backed revalidation of the atomic `zte_tpd`
function `tp_palm_mode_read` at stock entry `0x0010cce8`.

The main source and Docker curated snapshot were SHA-256 identical before the
build. The canonical Android 16 GKI 6.12.23/vendor_dlkm build passed in two
cycles. Stock and candidate both contain 60 AArch64 instructions and 240 ELF
bytes; the relocation-aware comparator passed. KCFI is present on both sides
with matching type ID `0xf4e9d97c`. The strict Joern gate resolved one method
with no unresolved calls or call deltas. The direct source harness passed three
cases in two ASan/UBSan Docker cycles.

This is `OFFLINE_EXACT` evidence only. One expected userspace-egress finding is
documented by the attestation; Android runtime, vendor_dlkm loading, the
Synaptics controller and NX809J hardware behavior remain deferred.
