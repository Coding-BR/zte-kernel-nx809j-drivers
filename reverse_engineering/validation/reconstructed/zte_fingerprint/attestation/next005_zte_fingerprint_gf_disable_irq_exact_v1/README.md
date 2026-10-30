# Exact attestation: `gf_disable_irq`

Target: `gf_disable_irq@0x001010d8`, with a stock body of 64 bytes and 16 AArch64 instructions.

The promoted implementation preserves the stock helper contract: when IRQ state is enabled it clears the state and calls `disable_irq`; otherwise it emits the stock warning and returns through the common epilogue. The function is `void` in the reconstructed ABI, matching the stock decompilation and call sites.

Validation result: `CORE_GATES_PASS`; assembly instructions, relocations, section and symbol size matched stock; the stock extractor recorded `NO_VALID_KCFI_PREAMBLE`, so KCFI is explicitly N/A for this direct helper; Joern scoped/slice gates passed; two clean Docker builds were byte-identical; and the 30-function host harness passed reproducibly. The independent Docker evidence adapter still reports its separate acquisition-chain limitation because the stock module/Ghidra export were not copied into that run root. This is offline/static evidence and makes no hardware-execution claim.
