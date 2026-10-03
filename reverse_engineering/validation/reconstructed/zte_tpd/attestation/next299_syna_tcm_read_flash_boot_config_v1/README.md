# Target 299: syna_tcm_read_flash_boot_config

This attestation records the isolated offline reconstruction of stock entry
0x00125290 from the NX809J ZTE TPD module.

## Scope

- Preserves boot-info version dispatch for versions 1 and 3, little-endian
  geometry decoding, write-block scaling, context writes at +0x34 and +0x38,
  destination resize, zeroing, flash-read delegation, and observed error
  codes.
- Uses the existing typed layout and accesses the two not-yet-named context
  words through the already proven reserved_0034 byte region, avoiding a
  header change that would invalidate targets 295 and 296.
- Adds explicit null checks for the TCM, context, boot-info pointer, and
  destination buffer so the out-of-tree candidate cannot dereference an
  unproven pointer during host or kernel testing.

## Evidence

1. Joern v4.0.548 strict gate: PASS; one mapped function, 109 calls, 15
   control structures, zero unresolved calls, zero mapped-call deltas, and no
   review findings.
2. Host contract harness: two identical ASan/UBSan runs: PASS.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   PASS.
4. Repository regression suite remains a separate required gate.

## Promotion status

This target is NOT promoted as hardware-equivalent. Canonical module build,
KCFI/relocation comparison, independent review, and controlled smartphone
validation remain required. No smartphone test was run in this cycle.
