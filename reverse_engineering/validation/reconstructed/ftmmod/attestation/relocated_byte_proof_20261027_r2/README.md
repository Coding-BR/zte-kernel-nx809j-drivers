# FTMMOD proof of relocated byte addresses, 2026-10-27 r2

This package validates two P-Code address expressions against the exact ELF
bytes and relocations in the stock and candidate modules. It does not change
the candidate, shared comparator, hard-driver job or canonical gate result.
Both recorded proof runs explicitly leave `canonical_gate_overridden=false`.

The stock and candidate function bodies are byte-identical. For each affected
access, the validator decodes ADRP plus unsigned-immediate LDRB/STRB, verifies
the AArch64 relocations (`R_AARCH64_ADR_PREL_PG_HI21` and
`R_AARCH64_LDST8_ABS_LO12_NC`), and binds both to the same local, one-byte,
zero-initialized writable `.bss` object. It checks that the page-address
producer still reaches the access, then checks the P-Code load/store width and
register def-use chain.

At the stock Ghidra image base `0x100000`, the stock object lands at low-12-bit
offset `0xfe0`; the candidate's layout places the same flag at offset `0` in a
page-aligned `.bss`. Ghidra therefore writes `INT_ADD(base, 0xfe0)` for stock
and `COPY(base)` for the candidate. The helper's narrowly supported identity
is `page(S+A) + low12(S+A) = S+A`; this is separately derived from each ELF
relocation and address expression. The proof covers only these two operations.

As an independent diagnostic, both unchanged ELF files were imported again
with the *same* Ghidra image base, `0x100100`. The stock and candidate
`.bss` flag offsets then become `0xe0` and `0x100`; both lifters emit
`INT_ADD`, and the existing strict comparison passes all nine functions.
No P-Code fallback is enabled. This shows the raw `COPY` versus `INT_ADD`
difference is sensitive to the arbitrary import placement. It does not by
itself update the canonical runner verdict: the paired-base comparison must be
reproduced by the hard-driver pipeline, with both module identities and all
other gates bound to the same run, before this becomes the selected gate input.

`ghidra_lifter_evidence.json` records the relevant rules from the pinned local
Ghidra AArch64 specification. `proof.json` is the host result;
`docker_proof.json` is the independent result in the pinned builder image.
Their proof facts are byte-for-byte equivalent. Both host and Docker ran 30
checks, including malformed widths, changed registers, wrong/missing
relocations, altered objects, memory space and def-use, branches that bypass
the page producer, indirect flow, and page arithmetic boundaries.
`pyelftools_dependency.json` hashes the read-only Python files mounted into
Docker because that pinned image does not contain pyelftools.

The first Docker attempt without that read-only dependency failed with
`ModuleNotFoundError`; it is preserved in `docker_command.json`. The successful
replay and its tests are recorded separately.

Reproduce from the repository root:

```powershell
python workspace_tools/reconstruction_pipeline/prove_ftmmod_relocated_state_access.py --stock-module reference_modules/full_vendor_boot/ftmmod.ko --candidate-module reverse_engineering/validation/reconstructed/ftmmod/attestation/hard_protocol_core_20261027_r3/docker/work/ftmmod/cycle_2/ftmmod.ko --stock-export reverse_engineering/validation/reconstructed/ftmmod/offline_static/ghidra_stock/ftmmod.ko --candidate-export reverse_engineering/validation/reconstructed/ftmmod/attestation/candidate_ghidra_export_20261027_r1/ftmmod.ko --output <new-output.json>
python -m unittest discover -s workspace_tools/reconstruction_pipeline/tests -p test_prove_ftmmod_relocated_state_access.py -v
```

The candidate remains **INCOMPLETE**, the hard-driver core gate remains
**FAIL** until the paired-base import is run through that pipeline, promotion
is **NOT_AUTHORIZED**, and hardware is **DEFERRED**.
