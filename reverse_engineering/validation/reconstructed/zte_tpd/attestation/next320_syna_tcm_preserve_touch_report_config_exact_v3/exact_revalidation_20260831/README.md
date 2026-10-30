# syna_tcm_preserve_touch_report_config — offline exact v3

- Driver: `zte_tpd`
- Microtask: `320_syna_tcm_preserve_touch_report_config`
- Stock entry/body: `0x0012a53c` / 1384 bytes
- Candidate source SHA-256: `19473799e9b5879c16fcfaa829d8775ff004183d3802365fa625954f129c434e`
- Candidate module SHA-256: `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`

## Gates

- Canonical Docker build: PASS, 2 cycles, identical module hash.
- AArch64 function comparison: PASS, 346 instructions, 1384 bytes, relocations equivalent.
- KCFI: PASS, stock/candidate type ID `0x627e4777`.
- Docker ASan/UBSan host harness: PASS, 16 cases × 2 repetitions, empty sanitizer stderr.
- Joern strict: PASS, 123 calls, 14 control structures, 0 unresolved calls, 0 parser errors.

Joern retained two high-severity lifetime findings for review (`devm_kfree` and `devm_kmalloc`) because they are explicit stock-path allocation operations; they are recorded in `joern_gate_report.json` and do not block this offline exact promotion. Hardware, firmware and Android runtime behavior remain deferred.
