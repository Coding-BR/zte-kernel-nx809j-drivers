# Target 316: `syna_tcm_parse_touch_report`

This attestation records the offline analysis of stock entry `0x0012860c`
from the NX809J ZTE TPD module.

## Scope

- Correlates the Ghidra decompilation, P-Code and 106 KB AArch64 Assembly
  listing.
- Exercises the raw candidate through an explicit decompiler-compatibility
  harness covering invalid handles, parser disablement, format termination,
  selected scalar fields and invalid field widths.
- Keeps the raw candidate classified as an intermediate reverse-engineering
  artifact rather than silently treating it as canonical GKI C.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   graph contains 1,596 calls and 324 control structures.
2. Compatibility host harness: **PASS** in two identical ASan/UBSan cycles;
   both binaries have SHA-256
   `88302b446dd130e2fc30a22bec2dd89681dd8b373267b6720adec9487ad6fa57`.
3. AArch64 ABI probe syntax check and Assembly emission: **PASS** using
   Android clang 19.0.1 and `aarch64-linux-android34`.
4. Full project suite: **PASS** (`272 passed`).

## Reconstruction blocker

The candidate remains a raw decompiler export with IDA-style types, magic
offsets and compatibility symbols. The next required engineering step is a
typed translation onto the proven `tcm_dev` and touch-report layouts, followed
by exhaustive opcode/callback harness coverage. Therefore this target is
**not promoted** as hardware-equivalent or canonical GKI source.

No smartphone test was run in this cycle.
