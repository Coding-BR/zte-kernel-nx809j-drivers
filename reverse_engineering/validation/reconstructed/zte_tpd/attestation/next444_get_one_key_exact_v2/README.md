# `get_one_key` Offline Attestation

This package records the offline reconstruction of stock `get_one_key` at
entry `0x0010ba4c` for the local NX809J `zte_tpd.ko` reference.

## Result

- Status: `OFFLINE_EXACT`
- AArch64 body: 60 instructions, 240 bytes
- Opcode, branch, relocation, `.rodata` string, section, and symbol-size comparison: `PASS`
- KCFI: `PASS`, type ID `0xf4e9d97c`
- Joern strict gate: `PASS`, with zero parse problems, blockers, and unresolved calls
- Host contract harness: `PASS`, four cases, ASan/UBSan, two executions
- Canonical Docker build: `PASS`, two independent cycles with the same artifact hash

The exact `.S` file is the mechanically lifted stock body. The C file remains
the readable semantic reconstruction used by Joern and review. The host
harness models the sysfs read contract, callback path, offset/EOF behavior,
short userspace buffers, and unsigned formatting without claiming hardware
execution.

Joern reports one reviewed `userspace-egress` finding at
`simple_read_from_buffer`, which is expected for a read handler and is not a
gate blocker. Hardware validation remains `DEFERRED`; this package does not
flash or load the smartphone.
