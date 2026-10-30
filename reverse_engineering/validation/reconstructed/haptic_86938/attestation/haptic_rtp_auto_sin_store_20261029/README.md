# `rtp_auto_sin_store@00106ed0` reconstruction

This sysfs callback was absent from the reconstructed driver. The stock body
parses an unsigned integer with base autodetection; it returns parser errors
after logging. On success it locks the driver mutex, updates the enable/value
state, conditionally toggles bit 0x20 in register 0x2d, then unlocks before
queuing work on CPU 0x20. A positive value at or above the stored limit clears
the enable state, logs the value, skips the bus update, and still queues work.

The candidate source is
`kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_062_rtp_auto_sin_store.c`.
Its map status remains `candidate_under_static_validation`.

Fresh run `core_v3` passed all eight hard-protocol gates: assembly and
relocations, candidate Ghidra P-Code, two-cycle Docker reproducibility, input
and map identity, scoped Joern, Joern slice, and KCFI. Candidate module
SHA-256:
`2f3d5f15ee359f126d1af76be4172de2118b684cb74a3585565dbb5c59b17205`.

The generated promotion decision still requires host-harness, independent
review, bounded-model, lock/lifetime, and hardware-runtime evidence. The
meaning of register 0x2d and work-item teardown lifetime are not established.
The remaining `trig_store` callback and the complete private sysfs group are
unfinished.

`core_v1` and `core_v2` retain the first assembly mismatch and its
correction from mask literal `0xdf` to the stock-equivalent `-0x21`.
