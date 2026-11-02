# fp_goodix::gf_ioctl exact revalidation

This attestation records the offline static revalidation of `gf_ioctl` at stock entry `0x00100824`.

## Result

The function is promoted as `PROMOTED_OFFLINE_EXACT` within the static/offline scope. It is not a hardware-runtime claim.

- AArch64 body: 359 instructions / 1436 bytes; opcode and relocation comparison: `PASS`.
- Docker build: two clean cycles with identical `fp_goodix.ko` SHA-256 `7c2772bf16112e80b4311ec686696156f46adf985d67fac9ae257ef7cc70241d`.
- KCFI: type ID `0x2af6cdbb`, size 1436, `PASS`.
- Ghidra 12.1.2 candidate P-Code and operation shape: `PASS`.
- Joern scoped gate and usages slice: `PASS`.

## Ghidra representation artifact

Ghidra emitted seven candidate calls as synthetic `FUN_<address>` names and represented shared strings with `GHIDRA_STRING[literal]`. The protocol accepts this only after ordered-call canonicalization, whole-function normalized-C equality, equal body size, equal P-Code shape, and independent relocation-aware assembly parity. The raw normalized-C check remains recorded as false in `ghidra/semantic_comparison.json`; the explicit P-Code-authoritative fallback is the decision evidence.

The old `gf_ioctl_parse_exact_v1` material is preserved and was not overwritten. This version is the revalidated unit.
