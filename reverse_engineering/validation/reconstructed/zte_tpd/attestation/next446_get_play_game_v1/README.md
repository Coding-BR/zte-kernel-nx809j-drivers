# `get_play_game` Offline Attestation

This package records the offline reconstruction of stock `get_play_game` at
entry `0x0010bc14` for the local NX809J `zte_tpd.ko` reference.

## Result

- Status: `OFFLINE_EXACT`
- AArch64 body: 60 instructions, 240 bytes
- Opcode, branch, relocation, `.rodata` string, section, and symbol-size comparison: `PASS`
- KCFI: `PASS`, entry type ID `0xf4e9d97c`
- Callback guard reproduced: `0x73fc0d79`
- Joern strict gate: `PASS`, with zero parse problems, blockers, and unresolved calls
- Host contract harness: `PASS`, four cases, ASan/UBSan, two executions
- Canonical Docker build: `PASS`, two independent cycles with the same artifact hash

The exact `.S` file is the mechanically lifted stock body. The C file remains
the readable semantic reconstruction used by Joern and review. The host
harness models the sysfs read contract, callback path, offset/EOF behavior,
short buffers, zero, and maximum unsigned formatting without claiming hardware
execution.

Hardware validation remains `DEFERRED`; this package does not flash or load
the smartphone.
