# syna_tcm_set_post_reset_callback — offline exact revalidation

Target `294_syna_tcm_set_post_reset_callback`, stock entry `0x001241bc`, body `72` bytes.

This package records an offline exact promotion built from the Docker engineering
environment and the curated candidate snapshot. The exact AArch64 materialization
preserves the null-device branch, the `post_reset_context` store at `0x23d8`, the
`post_reset_callback` store at `0x23e0`, the stock `printk` contract and return
value `-241`.

Gates passed:

- canonical Docker build: two accepted cycles, reproducible module SHA-256
  `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`;
- AArch64 opcode/relocation/ELF comparison: `18` instructions and `72` bytes;
- KCFI: stock and candidate both `.text`, `72` bytes, type ID `0xef5efc68`;
- Docker ASan/UBSan host contract: `2` cases in `2` repetitions, reproducible;
- strict Joern: `7` calls, `2` control structures, zero unresolved calls and zero parser errors.

The promotion is offline exact at function level. Android runtime, module loading,
transport, IRQ, MMIO and NX809J hardware behavior remain deferred.
