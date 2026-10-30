# Target 320: `syna_tcm_preserve_touch_report_config`

This attestation records the offline reconstruction of stock entry `0x0012a53c`
from the NX809J ZTE TPD module.

## Scope

- Correlates the Ghidra decompilation, P-Code and AArch64 Assembly listing.
- Adds a typed `tcm_touch_report_config` overlay for offsets `0x190..0x1e4`
  and names the parser-state word at `0x38c`, with compile-time offset checks.
- Reconstructs response preservation, managed reallocation, dual-buffer locks,
  command dispatch and the stock format-state machine.
- Exercises the transition through 16 host assertions under ASan/UBSan in two
  reproducible container cycles.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped identity, zero mapped call
   deltas, zero unresolved calls and zero parser problems. The target graph
   contains 123 calls and 14 control structures. Joern reports two high-severity
   lifetime findings, both retained for review.
2. Typed-transition host harness: **PASS** in two identical ASan/UBSan cycles;
   both binaries have SHA-256
   `d023933ee55e226dcf1422256f82294d4e8172d26d60bc5b9ce2379f6e8a6280`.
3. AArch64 syntax and complete target-body Assembly emission: **PASS** using
   Android clang 19.0.1 and `aarch64-linux-android34`.
4. The repository-wide suite must pass again after this target's header change
   before publication; no hardware test was run.

## Remaining review gates

Review managed-buffer ownership, compare lock cleanup against every stock error
edge, add a differential test for repeated calls without entity `3`, and decide
whether malformed truncated format records should receive a safety guard. A
canonical `vendor_dlkm` build, KCFI/relocation evidence, independent review and
controlled smartphone validation remain required. Promotion is not allowed by
this attestation.
