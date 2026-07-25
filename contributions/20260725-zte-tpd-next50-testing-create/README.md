# zte_tpd Next50 testing-directory contribution evidence

This bundle records the bounded reconstruction and offline validation of
syna_testing_create_dir from the stock NX809J zte_tpd.ko.

## Result

- Microtask 221: PASS_OFFLINE.
- Candidate module SHA-256:
  875f7ca048393aa88370467450bc39d98b8b4715e3f5b58bd7993afb28ea2854.
- Two clean builds produced identical 24665784-byte modules.
- Strict AArch64 comparison: 152/152 symbol bytes, 38/38 instructions and
  12/12 resolved relocations.
- KCFI: stock and candidate type ID 0xae20471c.
- Direct host harness: four cases, two reproducible ASAN/UBSAN cycles.
- Joern v4.0.548 strict function gate: one mapped method, zero parser
  problems, zero unresolved calls and zero mapped-call deltas.
- The microtask attester now verifies that the Joern summary matches the
  current C/header tree before accepting it as evidence.

The full zte_tpd reconstruction remains INCOMPLETE. The independent review and
controlled hardware validation are deferred. The full-driver rebuild confirmed
the identical module bytes, but its standalone run root intentionally lacked
the acquired stock module and canonical Ghidra export, so it cannot serve as a
whole-driver static-verification claim.

Joern is an additional consistency oracle. It does not replace stock assembly,
relocations, Ghidra P-Code, the KCFI dictionary, reproducible builds, sanitizer
harnesses or controlled hardware validation.

The reports directory contains all hash-bound evidence. Run reproduce.ps1 on
Windows or reproduce.sh on Linux. The optional Joern mode requires Java 21 and
the pinned Joern runtime. Neither script uses GitHub Actions or accesses a
device.
