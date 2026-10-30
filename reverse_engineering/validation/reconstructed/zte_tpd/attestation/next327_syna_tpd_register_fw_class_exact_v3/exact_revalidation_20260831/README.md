# syna_tpd_register_fw_class — offline exact v3

- Driver: `zte_tpd`
- Microtask: `327_syna_tpd_register_fw_class`
- Stock entry/body: `0x0012b55c` / 880 bytes
- Candidate source SHA-256: `9fd76a12d46283c129ec440dc364813a8727f6ac70b6b6d2f355a262cb265ea4`
- Candidate module SHA-256: `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`

## Gates

- Canonical Docker build: PASS, 2 cycles, identical module hash.
- AArch64 function comparison: PASS, 220 instructions, 880 bytes, relocations equivalent.
- KCFI: PASS, stock/candidate type ID `0x3175607e`.
- Docker ASan/UBSan host harness: PASS, 2 cycles, identical binary hash and empty sanitizer stderr.
- Joern strict: PASS, 229 calls, 4 control structures, 0 unresolved calls, 0 parser errors and no high-severity findings.

Hardware, firmware and Android runtime behavior remain deferred.
