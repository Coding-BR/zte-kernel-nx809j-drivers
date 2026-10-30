# Exact attestation: `gf_enable_irq`

Target: `gf_enable_irq@0x00101118`, with a stock body of 84 bytes and 21 AArch64 instructions.

The promoted implementation matches the stock ABI and state source: a `void` helper operating on the global `gf_dev_static`, enabling the recorded IRQ and setting `irq_enabled`, or emitting the stock warning when it is already enabled.

Validation result: `CORE_GATES_PASS`; assembly instructions, relocations, section and symbol size matched stock; the stock extractor recorded `NO_VALID_KCFI_PREAMBLE`, so KCFI is explicitly N/A for this direct helper; Joern scoped/slice gates passed; two clean Docker builds were byte-identical; and the 30-function host harness passed reproducibly. The independent Docker evidence adapter still reports its separate acquisition-chain limitation because the stock module/Ghidra export were not copied into that run root. This is offline/static evidence and makes no hardware-execution claim.
