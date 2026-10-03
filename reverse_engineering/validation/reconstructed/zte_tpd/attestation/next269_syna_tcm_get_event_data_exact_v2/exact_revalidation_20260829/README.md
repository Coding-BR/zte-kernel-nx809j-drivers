# `syna_tcm_get_event_data` exact revalidation

This package records the offline exact revalidation of microtask `269_syna_tcm_get_event_data` for `zte_tpd`. The current reconstruction keeps `syna_tcm_buf_copy` external and uses the stock call target for both report and response paths.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 79 instructions and 316 bytes at stock entry `0x00121ad4`, in `.text`, with matching relocation-resolved layout.
- KCFI comparison: PASS; type ID `0x2431fd45`, with matching 316-byte `.text` function body.
- Direct host contract tests: PASS; four contract groups in each of two Docker cycles with ASan/UBSan enabled. The contract covers null validation, read-error propagation, report/response code ranges, empty buffers, copy failures, and boundary codes.
- Strict Joern gate: PASS for `syna_tcm_get_event_data@00121ad4`, with clean parsing, no unresolved calls, and no mapped call deltas.

The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. The TCM read callback and buffer-copy transport are deterministic host stubs; there was no Android device, SPI/IRQ transport, firmware, MMIO, module insertion, or physical hardware validation.
