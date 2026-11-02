# FTMMOD direct host harness

This harness compiles the unmodified candidate C with bounded host test doubles.
Its assertions implement the reviewed MP4 T01-T22 contracts derived from stock
Assembly/P-Code and the pinned platform/sysfs source contracts. It does not
execute the stock ELF and is not a binary differential emulator.

Run from the repository root, using a new evidence directory:

```powershell
python workspace_tools/reconstruction_pipeline/ftmmod_host_harness/run.py --output reverse_engineering/validation/reconstructed/ftmmod/attestation/<new-run>
```

The runner verifies the pinned Docker image identity, records the compiler hash,
builds two isolated copies at the same internal path and runs each twice with
ASan/UBSan. It then compiles and runs eleven source mutants. Only an explicit
oracle assertion counts as detection; compilation errors and sanitizer crashes
do not count as a successful mutation test.

| Contract | Executable coverage |
|---|---|
| T01-T03 | Registration errors, fixed init errno, driver-probe API error propagation and success |
| T04-T08, T20 | Full cross-product of node presence, node mapping, fuse mapping, protection flag and sysfs result; state stores and ordered calls |
| T09-T10, T21 | NULL EFS mapping; signed 32-bit output and 4096-byte formatting bound |
| T11-T13, T22 | NULL store mapping; valid/no-conversion decimal corpus; counts 0, 1 and 4096; store value/offset, guards and barrier order |
| T14, T21 | Secboot device argument, signed return boundaries, output and length |
| T15-T16, T19, T21 | QSEE command, atomic flag, zeroed descriptor, flag-selected argument, errors, low-word status and truncated diagnostic composition |
| T17 | Permission output; remove logs; driver-before-device cleanup |
| T18 | Bounded no-binding platform-core failure; driver unregister and still-registered device state |
| Supplementary | Attribute names/modes/callbacks and group membership |

Mutation controls change init/show errno, the normalized store value, the
barrier, the QSEE command, the returned high-word shift, the flag store, cleanup
order, output bound, malformed-input initialization and the MMIO word offset.

The model has explicit limits: host memory is not MMIO; a traced barrier is not
an AArch64 DSB; libc parsing covers only the declared finite corpus; the kernel
core stub is not a real lifetime/concurrency test. KCFI, ABI, Ghidra and physical
validation remain separate gates. The runner never promotes microtasks.

The implementation itself still requires independent review, even though the
MP4 test contract was previously reviewed. Do not equate a harness PASS with
complete driver reconstruction.
