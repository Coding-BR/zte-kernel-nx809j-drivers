# Exact attestation: `list_del`

Target: stock `list_del@0x00101bf8`, mapped to source helper `gf_probe_list_del`, with a stock body of 108 bytes.

The promoted implementation preserves the 27-instruction AArch64 list unlink and poison sequence. The source alias `gf_probe_list_del` is intentionally bound to the ELF symbol `list_del`, and the candidate/stock assembly manifests record that identity explicitly.

KCFI exception: the stock extractor reported `NO_VALID_KCFI_PREAMBLE` because the candidate preamble overlaps the function body. This direct helper therefore has no fabricated type ID; the exception is recorded in `kcfi/stock.json` and the job sets `kcfi_required: false`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI exception handling, Joern, Docker reproducibility and the 30-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
