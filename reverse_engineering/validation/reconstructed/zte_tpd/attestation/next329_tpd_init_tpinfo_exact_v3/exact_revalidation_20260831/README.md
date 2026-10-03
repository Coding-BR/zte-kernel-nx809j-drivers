# tpd_init_tpinfo — offline exact v3

- Driver: `zte_tpd`
- Microtask: `329_tpd_init_tpinfo`
- Stock entry/body: `0x0012baac` / 128 bytes
- Candidate source SHA-256: `d73498601af544b364f2e3d0dc57718d2dedb1b781b683434d13265ec0e6c79`
- Candidate module SHA-256: `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`

## Gates

- Canonical Docker build: PASS, 2 cycles, identical module hash.
- AArch64 function comparison: PASS, 32 instructions, 128 bytes, relocations equivalent.
- KCFI: PASS, stock/candidate type ID `0x73fc0d79`.
- Docker ASan/UBSan host harness: PASS, 6 checks × 2 repetitions, identical binary hash and empty sanitizer stderr.
- Joern strict: PASS, 46 calls, 0 control structures, 0 unresolved calls, 0 parser errors and no high-severity findings.

Hardware, firmware and Android runtime behavior remain deferred.
