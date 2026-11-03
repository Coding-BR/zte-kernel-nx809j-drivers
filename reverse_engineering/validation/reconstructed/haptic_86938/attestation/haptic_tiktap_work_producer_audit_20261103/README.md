# HAP-TIKTAP-01: producer audit for `state + 0x628`

**Disposition:** no direct workqueue producer for `state + 0x628` was identified inside the stock module. The candidate's `cancel_work_sync(+0x628)` is conservative teardown for an initialized work item. This does not prove that runtime corruption or an undisclosed out-of-module actor cannot alter private state.

## Evidence

The audit compared the stock module SHA-256 in the JSON manifest with the preserved Ghidra output and AArch64 relocations. It enumerated all ten direct workqueue-submission callsites in the whole-module decompilation and all ten corresponding `CALL26` relocations: eight `queue_work_on` and two `queue_delayed_work_on`. The stock ELF has no other imported submission API. None of those callsites submits the item at `state + 0x628`. The two delayed-work sites use `state + 0x3c0`; the Richtap ioctl sites select `state + 0x648` or `state + 0x668`.

Stock `aw_i2c_probe` initializes the work item at `+0x628` and stores `tiktap_work_routine` at `+0x640`, the callback slot. Docker `llvm-readelf` identifies that function as a `LOCAL` ELF symbol. The stock remove assembly drains `+0x648` and contains no cancellation of `+0x628`. The reconstructed candidate explicitly drains `+0x628` before state retirement.

## Scope

This is a hash-bound static inventory of direct workqueue API calls and the callback symbol binding. It does not claim runtime reachability, a reproduced failure, or hardware behavior. No reconstruction source changed, so no kernel-module build was needed.

The machine-readable callsite list, input hashes, symbol output, and source/assembly excerpts are in this directory.
