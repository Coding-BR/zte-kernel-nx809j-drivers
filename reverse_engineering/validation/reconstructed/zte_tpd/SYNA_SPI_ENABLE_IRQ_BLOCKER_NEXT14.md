# `syna_spi_enable_irq` KCFI Blocker - Next14

## Decision

`syna_spi_enable_irq` is **not eligible for promotion**. Its control flow is understood, but the stock KCFI type ID `0x342e61b1` has not been reproduced from the available local type evidence. A cast, a manual KCFI override, or a fabricated nominal type would hide an unresolved ABI contract and is prohibited by the reconstruction protocol.

This blocker does not invalidate the separately completed `syna_tcm_get_touch_data` Next14 checkpoint.

## Source Of Truth

- Stock module SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Recovered OEM source path embedded in the stock ELF: `../soc-repo/drivers/vendor/common/touchscreen_v2/synaptics_tcm2_S3910V/syna_tcm2_platform_spi.c`.
- The stock `.ko`, its local disassembly, relocations, strings, Ghidra decompilation and P-Code are authoritative.
- No internet source or device observation is accepted as a substitute for the missing nominal type identity.

## Exhausted Signature Searches

| Search family | Candidates checked | Match for `0x342e61b1` |
|---|---:|---:|
| Return and two-argument combinations | 1,980 | 0 |
| Third-argument combinations | 3,640 | 0 |
| Variadic forms | 7 | 0 |
| Named `struct` tags | 11,744 | 0 |
| Named `union` tags | 11,686 | 0 |
| Anonymous `struct` typedefs | 11,686 | 0 |
| Anonymous `union` typedefs | 11,686 | 0 |
| GKI module corpus | 115 modules / 6,195 functions | 0 |

Machine-readable inputs and reports are stored under `signature_oracles/` with the prefix `syna_spi_enable_irq_next14_`. The GKI scan result is `signature_oracles/syna_spi_enable_irq_next14_gki_corpus_scan.json`.

## Allowed Next Steps

1. Recover the exact prototype from another locally extracted OEM object that references or defines the same callback.
2. Recover the missing declaration from local DWARF/BTF, CTF, symbol-version metadata, compiler intermediates, or headers if any are later found in the ROM/build artifacts.
3. Correlate indirect-call KCFI checks at all local call sites and reconstruct the nominal first-argument declaration without changing the stock call graph.
4. Expand the deterministic type dictionary only with types observed in local NX809J/GKI artifacts, recording every candidate and hash.
5. Rebuild twice, require exact scoped KCFI, strict assembly/relocation comparison, Ghidra/P-Code comparison, harness coverage and microtask attestation before promotion.

## Forbidden Shortcuts

- Do not use `__attribute__((no_sanitize("kcfi")))` to suppress the mismatch.
- Do not patch `__kcfi_typeid_*`, edit ELF notes, or post-process the module.
- Do not cast the function pointer merely to satisfy compilation.
- Do not declare the task PASS from behavioral similarity alone.
- Do not replace the unknown nominal type with `void *` unless local evidence proves that exact declaration and KCFI ID.

## Exit Criterion

The blocker may be removed only when a reproducible source declaration compiled with the locked Clang toolchain emits KCFI `0x342e61b1`, preserves the stock function body and call sites, and passes the complete offline reconstruction protocol. Until then, the function remains open and clearly identified rather than falsely certified.
