# Next57 Validation: `syna_tcm_get_testing_0A00`

Status: `PASS` for offline microtask `228_syna_tcm_get_testing_0a00`.

This status is backed by hash-bound evidence for the current source and does
not claim a physical touch-controller test or whole-driver/hardware
attestation.

## Recovered Contract

The function is an intentionally small zero-argument getter. Stock AArch64
contains exactly `ADRP`, `ADD`, and `RET`: it materializes the address of the
single static `test_0A00` object and returns it unchanged. It performs no
allocation, locking, validation, logging, MMIO access, or firmware action.

## Evidence

The canonical module was built twice in independent clean containers with
different `M=` paths. Both artifacts are `24,705,024` bytes with SHA-256
`c0fd487ee75e40e408db86aa7bbdcac50ab103cfeffd9edbaeb0aca232a7e53d`.

- [Canonical build report](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next57_get_testing_0a00_v1/build_next57_get_testing_0a00_candidate_v1.json)
  (`39804521d4daeb78adcb702c6aefb1c772c94232d4a689db36f1815a330eb5e2`)
- [Direct ASAN/UBSAN harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next57_get_testing_0a00_v1/next57_get_testing_0a00_host_report_v1.json)
  (`243aa7db4327d68fe25ebd5667f1c171dd86bf1387cc185c5ceb5941fd42ea9e`)
- [Assembly comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next57_get_testing_0a00_v1/assembly_comparison_next57_get_testing_0a00_canonical_v1.json)
  (`580c97bdcb3e8430c2253f580d788af8fbdbee57fb34395ae45860734d988966`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next57_get_testing_0a00_v1/kcfi_comparison_next57_get_testing_0a00_v1.json)
  (`d6164bdf2943772ee94a88c788e4624d36968a0838440ebcc12a24b379ccecf9`)
- [Strict Ghidra comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next57_get_testing_0a00_v1/ghidra_strict_next57_get_testing_0a00_v1.json)
  (`fb829279b5adf1f6090f9fca5b3033a69c603b7f3bb7883ec59d930cf42c50fe`)
- [Bounded Ghidra validation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next57_get_testing_0a00_v1/ghidra_bounded_next57_get_testing_0a00_v1.json)
  (`18c4752d11e738e144893cf87992f464a8390e2df6658f0981d345fd57ee5cf7`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next57_get_testing_0a00_v1/joern_gate_summary.json)
  (`33b5919af32b91ab9c8c890b3a36197a444ea0866322ceada3551b8adffbcb66`)
- [Microtask attestation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next57_get_testing_0a00_v1/microtask_attestation_v1.json)
  (`eb28d5ea8ad4ebfe63ac2d4cd44a0467ef2889a644612d92f0b12888420ccb8c`)

The direct harness runs once per cycle under Android Clang with ASAN and
UBSAN. It verifies both pointer identity and that accesses through the
returned pointer alias `test_0A00`. Both cycles pass with identical harness
binaries.

Stock and candidate use `.text`, `12` function bytes, and KCFI type ID
`0x2b399469`. The assembly comparison is exact, including relocations. The
Ghidra strict report fails only normalized decompiled-C text because the stock
export has lost the original concrete type name. P-Code shape, instruction
surface, call surface, body size, and relocation multiset are exact; the
bounded validator therefore passes without consuming any special exception.

Joern v4.0.548 ran in strict mode with zero parse problems, zero unresolved
calls, and zero mapped-call deltas.

## Remaining Boundary

This getter proof does not validate the contents or later use of `test_0A00`.
Its run callback, limits, firmware protocol, and touch-controller behavior
remain separate microtasks and require their own evidence.
