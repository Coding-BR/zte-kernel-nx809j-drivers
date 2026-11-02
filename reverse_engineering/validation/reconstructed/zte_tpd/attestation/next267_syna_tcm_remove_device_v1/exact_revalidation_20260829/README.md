# `syna_tcm_remove_device` exact revalidation — 2026-08-29

This revalidation promotes the previously host/Joern-only candidate after a
clean Kbuild integration in the Docker workspace.

## Gates

- Canonical Docker build: passed in two independent cycles; module SHA-256
  `60248020578510ddc4779396a75018c03813c2a579dbfdc93f84e551cdb8fcc3` and
  size `11929424` bytes.
- AArch64 function comparison: passed for stock
  `syna_tcm_remove_device@001216d0` against the emitted candidate. The opcode
  and relocation comparison is recorded in `assembly_comparison.json`.
- KCFI comparison: passed; both functions are 624 bytes in `.text` with type
  ID `0x9b7e2760`, recorded in `kcfi_comparison.json`.
- Existing direct host harness and strict Joern gate remain passing for the
  same reconstructed C source. They do not claim smartphone hardware
  behavior.

## Promoted source integration

The versioned source now contains `syna_tcm_remove_device_exact.S`, and the
Kbuild input selects it in place of the reconstructed C object. The clean
snapshot used for the build contained the already committed
`syna_dev_enter_normal_sensing` exact integration plus this target only.

The module is not a hardware-validation claim: no device, SPI transport, IRQ,
MMIO or `insmod` test was available.
