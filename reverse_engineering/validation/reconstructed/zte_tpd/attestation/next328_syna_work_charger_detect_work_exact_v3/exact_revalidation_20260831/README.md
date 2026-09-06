# syna_work_charger_detect_work — offline exact v3

- Driver: `zte_tpd`
- Microtask: `328_syna_work_charger_detect_work`
- Stock entry/body: `0x0012b8d0` / 472 bytes
- Candidate source SHA-256: `9b3d656efd3fcd7be89daad9095c16b63682f28820f62bddcd92ea76627800ee`
- Candidate module SHA-256: `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`

## Gates

- Canonical Docker build: PASS, 2 cycles, identical module hash.
- AArch64 function comparison: PASS, 118 instructions, 472 bytes, relocations equivalent.
- KCFI: PASS, stock/candidate type ID `0xa607748c`.
- Docker ASan/UBSan host harness: PASS, 5 cases × 2 repetitions, identical binary hash and empty sanitizer stderr.
- Joern strict: PASS, 98 calls, 18 control structures, 0 unresolved calls, 0 parser errors and no high-severity findings.

Hardware, firmware and Android runtime behavior remain deferred.
