# string_change — offline exact v3

- Driver: `zte_tpd`
- Microtask: `325_string_change`
- Stock entry/body recorded by ELF and manifest: `0x0012aecc` / 1552 bytes
- Candidate source SHA-256: `409d350e2a78ab01f39197cfc634649339770db132d083470e40e9a4ab32d2cf`
- Candidate module SHA-256: `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`

The legacy implementation prompt says 1404 bytes; the manifest, stock ELF symbol and exact AArch64 comparison consistently report 1552 bytes. The discrepancy is preserved as a documentation note and does not alter the candidate.

## Gates

- Canonical Docker build: PASS, 2 cycles, identical module hash.
- AArch64 function comparison: PASS, 388 instructions, 1552 bytes, relocations equivalent.
- KCFI: PASS, stock/candidate type ID `0xdac58b52`.
- Docker ASan/UBSan host harness: PASS, 7 cases × 2 repetitions, empty sanitizer stderr.
- Joern strict: PASS, 266 calls, 34 control structures, 0 unresolved calls, 0 parser errors.

Joern retained seven high-severity lifetime findings for review (allocation/free operations in the stock-equivalent path); they are recorded in `joern_gate_report.json` and do not block this offline exact promotion. Hardware, firmware and Android runtime behavior remain deferred.
