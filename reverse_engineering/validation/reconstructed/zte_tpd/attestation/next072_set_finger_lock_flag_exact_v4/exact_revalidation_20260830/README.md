# `set_finger_lock_flag` — offline exact revalidation v4

This package records the Docker-backed revalidation of the atomic `zte_tpd`
function `set_finger_lock_flag` at stock entry `0x0010ca00`.

The main source and the Docker curated snapshot were SHA-256 identical before
the build. The canonical Android 16 GKI 6.12.23/vendor_dlkm build passed in two
cycles. The stock and candidate functions both contain 57 AArch64 instructions
and 228 ELF bytes; the relocation-aware comparator passed all instruction,
section, symbol-size, call-target, string and relocation checks. KCFI is
present on both sides with matching type ID `0xc3d43b4d`. The strict Joern gate
resolved the requested Ghidra function to one source method with no unresolved
calls or call deltas. The direct source harness passed four cases in two
ASan/UBSan Docker cycles.

This is `OFFLINE_EXACT` evidence only. Runtime interaction with Android,
vendor_dlkm loading, the Synaptics controller and NX809J hardware remains
deferred.
