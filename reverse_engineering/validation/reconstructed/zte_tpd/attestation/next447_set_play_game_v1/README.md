# `set_play_game` Offline Attestation

This package records the offline reconstruction of stock `set_play_game` at
entry `0x0010bd08` for the local NX809J `zte_tpd.ko` reference.

## Result

- Status: `OFFLINE_EXACT`
- AArch64 body: 49 instructions, 196 bytes
- Opcode, branch, relocation, `.rodata` string, section, and symbol-size comparison: `PASS`
- KCFI: `PASS`, entry type ID `0xc3d43b4d`
- Callback guard reproduced: `0x6af8b499`
- Joern strict gate: `PASS`, with zero parse problems, blockers, and unresolved calls
- Host contract harness: `PASS`, four cases, ASan/UBSan, two executions
- Canonical Docker build: `PASS`, two independent cycles with the same artifact hash

The exact `.S` file is the mechanically lifted stock body. The C file remains
the readable semantic reconstruction used by Joern and review. The host
harness models decimal parsing, raw value forwarding, callback dispatch, and
strict `-EINVAL` handling without claiming hardware execution.

Hardware validation remains `DEFERRED`; this package does not flash or load
the smartphone.
