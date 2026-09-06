# Next125 Revalidation: `get_tp_chip_id`

Microtask `009_get_tp_chip_id` is `PASS_OFFLINE_EXACT`. Ghidra and P-Code prove
the initial `0xff` write at `tpd_cdev + 0x446`, ordered 11-entry lookup and the
success-only selected-ID write. Two independent Docker builds reproduced the
candidate module. Strict AArch64 and KCFI (`0x6fbb3035`) match the stock body.

The shared ASan/UBSan harness passed 9/9 cases in two cycles, including first
match, last match and error-marker preservation. Joern strict passed with no
parser or unresolved-call findings. CFG topology and raw opcodes match, while
textual block signatures remain a non-gating diagnostic in the artifact.

No physical NX809J test was performed.
