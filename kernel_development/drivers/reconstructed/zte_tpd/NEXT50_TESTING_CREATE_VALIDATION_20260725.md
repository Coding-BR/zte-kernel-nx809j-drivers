# Next50: syna_testing_create_dir

Status: `PASS_OFFLINE` for microtask
`221_syna_testing_create_dir`; full driver status remains `INCOMPLETE`.

## Reconstructed Contract

`syna_testing_create_dir` creates the `testing` kobject below
`tcm->sysfs_dir` at `+0x398`, stores it in `tcm->testing_dir` at `+0x3a8`, and
creates `attr_testing_group`. A null kobject logs the stock string and returns
`-EINVAL`. A negative group result logs the stock string, calls `kobject_put`
without clearing `testing_dir`, and returns the original negative value.
Non-negative group results return zero.

The typed `testing_dir` field replaces only padding in `struct syna_tcm`; all
following offsets remain static-asserted, including `frame_wait` at `+0x448`.

## Offline Evidence

- Two clean, independent-path Linux builds: identical candidate
  `875f7ca048393aa88370467450bc39d98b8b4715e3f5b58bd7993afb28ea2854`,
  `24665784` bytes.
- Strict AArch64 comparison: pass, `.text`, `152/152` bytes, `38/38`
  instructions and resolved relocations equal.
- KCFI: type ID `0xae20471c`, `.text`, `152/152` bytes.
- Ghidra: body `152/152`, P-Code `108/108`, and operation/call/control/string
  multisets exact. The normalized C inequality is disclosed; the bounded
  semantic gate passes with P-Code and relocation modes `EXACT`.
- Direct harness: four cases, two reproducible Android Clang 19.0.1
  ASAN+UBSAN cycles, no stderr.
- Joern v4.0.548: one mapped function, zero parser problems, unresolved calls
  or mapped-call deltas. The microtask attester checks this strict summary
  against the current C/header tree before accepting its Joern evidence. It is
  a consistency veto only.

No smartphone, sysfs tree or physical touch controller was used. Hardware
validation remains `DEFERRED`.
