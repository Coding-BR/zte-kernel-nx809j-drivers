# tpd_get_wakegesture — offline exact v3

- Driver: `zte_tpd`
- Microtask: `330_tpd_get_wakegesture`
- Stock entry/body: `0x0012bb30` / 24 bytes
- Candidate source SHA-256: `b5dd52fc16d2bc140bf44c9f7e68d16bc966817d178b51d2c7f1ced1aa7aee07`
- Candidate module SHA-256: `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`

## Gates

- Canonical Docker build: PASS, 2 cycles, identical module hash.
- AArch64 function comparison: PASS, 6 instructions, 24 bytes, relocations equivalent.
- KCFI: PASS, stock/candidate type ID `0x73fc0d79`.
- Docker ASan/UBSan host harness: PASS, 2 checks × 2 repetitions, identical binary hash and empty sanitizer stderr.
- Joern strict: PASS, 12 calls, 0 control structures, 0 unresolved calls, 0 parser errors and no high-severity findings.

Hardware, firmware and Android runtime behavior remain deferred.
