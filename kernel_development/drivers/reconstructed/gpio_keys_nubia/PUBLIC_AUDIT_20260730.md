# Public Audit Checkpoint: gpio_keys_nubia

This checkpoint was executed offline on 2026-07-30 using the public stock
module, canonical Ghidra export, Android clang `r536225`, and the pinned Docker
image. No smartphone command, module load, or partition operation was used.

## Confirmed

- Stock SHA-256: `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.
- Source SHA-256: `e1033861e8106873328d332db462b524c364d4c35484a96c21665ae5686e7bc9`.
- Candidate SHA-256: `0ab95b270bcafbf5095d1effb73458c55574449866dbd9ee386d0974ffdbd0c2`.
- Module decomposition check: 24/24 stock functions have hash-bound Ghidra
  pseudocode, P-Code, and AArch64 assembly evidence.
- Joern 4.0.548 strict gate for `gpio_keys_probe`: PASS; zero parser problems
  and zero unresolved calls.
- Offline harnesses: Stage 1 PASS (11/11) and Stage 2 PASS (18/18).
- Fresh public-tree builds: two equal modules,
  `1dd315b5b1da29062c467339bc79fe9dcef13d2567b6ef303f74204a077ba3e2`.

## Blocking Facts

The fresh hash does not equal the curated candidate hash. The public audit
therefore remains `incomplete_or_failed`; it must not be promoted or loaded.
The Docker image, `Module.symvers`, and `.config` match the target-kernel
manifest, so this is a real reproducibility investigation rather than an
ignored environment mismatch.

Microtask attestation is also intentionally blocked. The Stage 2 harness
directly covers only seven functions, and `gpio_keys_probe` is
`MAPPED_NOT_EXACT`: its CFG, call count, section, size, instruction count, and
relocation multiset match, but ordered relocations/opcodes do not. Neither
fact permits a 100 percent reconstruction claim.

## Required Next Evidence

1. Identify the exact section-level cause of the curated/fresh module hash
   difference without changing source merely to shape compiler output.
2. Add direct host coverage for each microtask not represented by the current
   harnesses, recording each function in `covered_functions`.
3. Obtain independent evidence for the remaining `gpio_keys_probe` ordering
   difference before promoting its microtask.
4. Keep controlled hardware validation separate and only after all offline
   gates are green.
