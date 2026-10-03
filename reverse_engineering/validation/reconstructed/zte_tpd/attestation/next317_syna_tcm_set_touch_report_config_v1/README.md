# Target 317: `syna_tcm_set_touch_report_config`

This attestation records the offline reconstruction of stock entry `0x0012a264`
from the NX809J ZTE TPD module.

## Scope

- Correlates the Ghidra decompilation, P-Code and AArch64 Assembly listing.
- Replaces the raw decompiler body with a typed transition using the proven
  `tcm_dev` and application-info overlays.
- Exercises validation, delay selection, allocation, copy, command dispatch,
  result propagation and cleanup through 21 host assertions.
- Runs Joern v4.0.548 as the default structural/data-flow gate.

## Gates

1. Joern strict gate: **PASS**; one mapped identity, zero mapped call deltas,
   zero unresolved calls and zero parser problems. The target graph contains
   57 calls and 11 control structures. Joern also emitted one high-severity
   lifetime review finding for the managed allocation.
2. Typed-transition host harness: **PASS** in two identical ASan/UBSan cycles;
   both binaries have SHA-256
   `95a7103aed30e8021584c247d1f236b358a9815535f9afba0d1665d9871856ff`.
3. AArch64 syntax and complete target-body Assembly emission: **PASS** using
   Android clang 19.0.1 and `aarch64-linux-android34`.
4. The existing project suite remains the repository-level gate; this isolated
   target was not promoted without a fresh full-suite run at publication time.

## Remaining review gates

Confirm the semantic names/endian interpretation of the words at offsets
`0xb0` and `0xbc`, review the Joern lifetime finding, compare callback KCFI
identity in a canonical `vendor_dlkm` build, obtain independent review, and
then perform controlled hardware validation. No smartphone test was run in
this cycle.
