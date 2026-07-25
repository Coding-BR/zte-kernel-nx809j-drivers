# Next51: syna_testing_remove_dir

Status: `PASS_OFFLINE` for microtask
`222_syna_testing_remove_dir`; the full driver remains `INCOMPLETE`.

## Reconstructed Contract

`syna_testing_remove_dir` reads `tcm->testing_dir` at offset `+0x3a8` and
returns when the pointer is null. Otherwise it calls
`sysfs_remove_group(tcm->testing_dir, &attr_testing_group)` and then reloads
`tcm->testing_dir` before calling `kobject_put`. The reload is deliberate:
it is visible in the stock AArch64 and is directly exercised by the host
harness.

The typed field already occupied padding in `struct syna_tcm`; all subsequent
layout assertions, including `frame_wait` at `+0x448`, remain in force.

## Offline Evidence

- Two clean, independent-path Linux builds produced the same candidate
  `ea2aa81295fc799f267e726ade177b5f58d400a80d7c21b2c60f6d6edff4a785`,
  `24665648` bytes.
- Strict AArch64 comparison: pass, `.text`, `64/64` bytes, `16/16`
  instructions and all resolved relocations equal.
- KCFI: type ID `0x3175607e`, `.text`, and `64/64` symbol bytes equal.
- Ghidra: body `64/64`, P-Code `39/39`, call targets and P-Code operation
  multiset are exact. The strict normalized-C comparison records the
  Ghidra-only presentation difference `&attr_testing_group` versus
  `attr_testing_group`; the bounded semantic gate passes only because
  P-Code, calls and relocations are exact.
- Direct harness: three cases, two reproducible Android Clang 19.0.1
  ASAN+UBSAN cycles, no stderr. It checks the null branch, `+0x3a8` layout,
  removal-before-put order and the post-remove pointer reload.
- Joern v4.0.548: one mapped source function, zero parser problems,
  unresolved calls or mapped-call deltas. The attester checks the strict
  summary against the current C/header tree; Joern remains a consistency veto
  only.

No smartphone, real sysfs tree or physical touch controller was used. Hardware
validation remains `DEFERRED`.
