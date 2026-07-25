# zte_tpd Next51 testing-directory removal contribution evidence

This bundle records the bounded reconstruction and offline validation of
`syna_testing_remove_dir` from the stock NX809J `zte_tpd.ko`.

## Result

- Microtask 222: `PASS_OFFLINE`.
- Candidate module SHA-256:
  `ea2aa81295fc799f267e726ade177b5f58d400a80d7c21b2c60f6d6edff4a785`.
- Two clean builds produced identical `24665648`-byte modules.
- Strict AArch64 comparison: `64/64` symbol bytes, `16/16` instructions and
  all resolved relocations.
- KCFI: stock and candidate type ID `0x3175607e`.
- Direct host harness: three cases, two reproducible ASAN/UBSAN cycles.
- Joern v4.0.548 strict function gate: one mapped method, zero parser
  problems, zero unresolved calls and zero mapped-call deltas.

The full `zte_tpd` reconstruction remains `INCOMPLETE`. Independent review
and controlled hardware validation remain deferred. The strict Ghidra report
discloses its only decompiler-presentation delta (`&attr_testing_group` versus
`attr_testing_group`); P-Code, call targets, relocations and the bounded
semantic gate are exact.

Joern is an additional consistency veto. It does not replace stock assembly,
relocations, Ghidra P-Code, KCFI, reproducible builds, sanitizer harnesses or
controlled hardware validation.

The reports directory contains hash-bound local evidence. Run `reproduce.ps1`
on Windows or `reproduce.sh` on Linux. Neither script uses GitHub Actions or
accesses a device.
