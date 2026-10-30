# Exact attestation: `gf_release`

Target: `gf_release@0x00100fe8`, with a stock body of 240 bytes and 60 AArch64 instructions.

The promoted implementation preserves the stock release ordering: capture and clear `file->private_data`, decrement the device reference count, disable IRQ wake, conditionally disable/free the IRQ, run `gf_cleanup`, clear the opened state, unregister the zlog client and unlock the device-list mutex.

Validation result: `CORE_GATES_PASS`; assembly instructions, relocations, section and symbol size matched stock; KCFI type `0x9829071d` matched; Joern scoped/slice gates passed; two clean Docker builds were byte-identical; and the 30-function host harness passed reproducibly. The independent Docker evidence adapter still reports its separate acquisition-chain limitation because the stock module/Ghidra export were not copied into that run root. This is offline/static evidence and makes no hardware-execution claim.
