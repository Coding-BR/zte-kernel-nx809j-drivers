# Synaptics helper work context initialization guard

The recovered helper callback clears its pending flag on both the normal path
and the path where the pending marker is not `1`. The hardened C version
derived the owning `syna_tcm` pointer only inside the marker check, then called
the shared pending-clear helper after that check. On the false branch this
passed an uninitialized pointer.

The owner pointer is now derived from the callback's embedded `work_struct`
address before checking the marker. The shared completion helper can therefore
clear the pending state safely on either path, preserving the stock return and
clear behavior while keeping the teardown lock discipline.

Two independent canonical Docker builds produced identical modules with the
expected Android 16 / Linux 6.12.23 vermagic and no diagnostics. KCFI type ID
`0xa607748c` matches stock. No kernel runtime or NX809J hardware execution was
performed.
