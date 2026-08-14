# `get_finger_lock_flag` attestation

Status: `OFFLINE_EXACT` / `HARDWARE_DEFERRED`

This microtask reconstructs the NX809J stock `get_finger_lock_flag` callback using the local Ghidra decompilation, P-Code, and AArch64 assembly exports.

## Recovered contract

- Function: `get_finger_lock_flag(struct file *, char __user *, size_t, loff_t *)`
- Stock entry: `0x0010c92c`
- Stock body: 208 bytes / 52 AArch64 instructions
- state field: `tpd_cdev + 0x474`
- output format: `%u\n`, maximum formatting buffer passed as 10 bytes
- nonzero file position: return zero without logging or copying
- callback KCFI: not applicable; this function has no indirect callback

## Gates

- Joern v4.0.548 strict source gate: `PASS`, zero parse problems, no unresolved calls.
- Host harness: 4 cases, executed twice in the canonical Docker image with ASan and UBSan: `PASS`.
- Canonical Docker build: two independent cycles with `clang-r536225`: `PASS`.
- AArch64 assembly and relocation comparison: `PASS`; 52/52 instructions and 208/208 bytes match stock.
- KCFI presence, section, size, and type ID comparison: `PASS` (`0xf4e9d97c`).

Joern records the expected high-severity userspace-egress review item at `simple_read_from_buffer`; it remains visible in the evidence and does not block this strict gate.

Hardware execution on NX809J is deferred. This attestation does not claim device loading or runtime validation.

Artifact SHA-256: `11b21c8fe847bd87c4b712380ba6b371b6b79b7ccaa5a8be954ca5490448fe9c`

