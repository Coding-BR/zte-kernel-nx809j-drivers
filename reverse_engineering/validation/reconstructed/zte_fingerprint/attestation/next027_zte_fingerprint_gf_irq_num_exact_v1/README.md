# zte_fingerprint `gf_irq_num` — offline exact attestation

This attestation promotes `gf_irq_num@00102970` to `PROMOTED_OFFLINE_EXACT`.

Evidence preserved here:

- Ghidra stock decompilation/P-Code reviewed for the null-device path, `irq_gpio` offset `0x3c`, and the `gpio_to_desc` → `gpiod_to_irq` call chain.
- Stock/candidate AArch64 comparison passed with 15 instructions and 60 bytes, including matching relocations and the stock string `Input buff is NULL.\n`.
- Canonical Docker builds passed twice with identical module hash `2fed82c2edf49123729532991f598368eb440b772414828faa4830189a35a546`.
- KCFI type ID `0xbcbc33b6` matched with 60-byte symbols.
- Joern scoped and usage-slice gates passed.
- The host harness passed reproducibly and covers the valid IRQ conversion and `NULL`/`-ENODEV` error path.

The Docker engineering runner's auxiliary acquisition report remains non-promoting because its run-local stock acquisition was unavailable. Promotion is therefore limited to the canonical offline evidence above; no physical board IRQ-routing or hardware-execution claim is made.
