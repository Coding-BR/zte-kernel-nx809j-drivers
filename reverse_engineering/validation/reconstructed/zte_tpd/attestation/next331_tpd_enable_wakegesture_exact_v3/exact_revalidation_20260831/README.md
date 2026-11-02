# tpd_enable_wakegesture — offline exact v3

- Driver: `zte_tpd`
- Microtask: `331_tpd_enable_wakegesture`
- Stock entry/body: `0x0012bb4c` / 76 bytes
- Candidate source SHA-256: `0fcd17d87914eba748768c6a925d104c89b6774f8e76b50f751c4b7238f50a01`
- Candidate module SHA-256: `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`

## Gates

- Canonical Docker build: PASS, 2 cycles, identical module hash.
- AArch64 function comparison: PASS, 19 instructions, 76 bytes, relocations equivalent.
- KCFI: PASS, stock/candidate type ID `0x6af8b499`.
- Docker ASan/UBSan host harness: PASS, 4 checks × 2 repetitions, identical binary hash and empty sanitizer stderr.
- Joern strict: PASS, 15 calls, 2 control structures, 0 unresolved calls, 0 parser errors and no high-severity findings.

Hardware, firmware and Android runtime behavior remain deferred.
