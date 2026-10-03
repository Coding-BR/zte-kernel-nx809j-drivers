# Exact attestation: `nav_event_input`

Target: `nav_event_input@0x0010116c`, with a stock body of 464 bytes and 116 AArch64 instructions.

The promoted implementation preserves the stock navigation contract: actions 1 and 2 log and return early; actions 3–10 use the observed stock key codes and logs; unknown actions use the stock warning; and all supported keys emit the same four `input_event` calls through the stock input pointer.

Validation result: `CORE_GATES_PASS`; assembly instructions, relocations, section and symbol size matched stock; the stock extractor recorded `NO_VALID_KCFI_PREAMBLE`, so KCFI is explicitly N/A for this direct helper; Joern scoped/slice gates passed; two clean Docker builds were byte-identical; and the 30-function host harness passed reproducibly. The independent Docker evidence adapter still reports its separate acquisition-chain limitation because the stock module/Ghidra export were not copied into that run root. This is offline/static evidence and makes no hardware-execution claim.
