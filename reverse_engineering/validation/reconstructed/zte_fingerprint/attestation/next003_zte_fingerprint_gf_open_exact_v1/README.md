# Exact attestation: `gf_open`

Target: `gf_open@0x00100de8`, with a stock body of 508 bytes and 127 AArch64 instructions.

The promoted implementation reconstructs the stock device-list sentinel path, zlog success/failure reporting, reference-count transition, `gf_parse_dts` rollback, IRQ registration/wake sequence, reset/open state updates and cleanup path. The helper visibility is aligned with the stock ELF so the four local `CALL26` relocations remain observable.

Validation result: `CORE_GATES_PASS`; assembly instructions, relocations, section and symbol size matched stock; KCFI type `0x9829071d` matched; Joern scoped/slice gates passed; two clean Docker builds were byte-identical; and the 30-function host harness passed reproducibly. The independent Docker evidence adapter still reports its separate acquisition-chain limitation because the stock module/Ghidra export were not copied into that run root. This is offline/static evidence and makes no hardware-execution claim.
