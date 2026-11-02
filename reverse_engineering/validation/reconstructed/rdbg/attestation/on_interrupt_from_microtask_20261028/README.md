# Microtask attestation: rdbg on_interrupt_from

Date: 2026-10-28. Status: function-scope static gates passed; driver reconstruction remains INCOMPLETE.

## Scope and source identity

- Stock module: SHA-256 05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12, from the preserved full vendor_boot reference.
- Source function: on_interrupt_from, stock entry 00101600.
- Reconstructed source tree SHA-256: 7e5855c16100b7cbfdbff2e228f7ca95539c12d6735d25bda8c1cc63741bfefb.
- Docker curated source copy: all 8 tracked reconstruction files hash-match the repository copy; see docker_source_sync.json.
- Docker builder image: nubia-sm8850-kernel-builder, image ID sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390.
- The Docker candidate module is preserved as docker_candidate_partial/rdbg_irq_test_candidate.ko. SHA-256 a32df4435f1084075db4601d46771af1643709539127cbd90ac312f72602c189; size 107528 bytes.

## Passed function gates

- Two clean Docker builds produced the same module SHA-256: a32df4435f1084075db4601d46771af1643709539127cbd90ac312f72602c189.
- Candidate assembly comparison: PASS, 9 instructions, 36-byte function body, relocation to complete.
- KCFI comparison: PASS, type ID 0xd2f00be1, section .text, 36-byte symbol.
- Ghidra comparison: PASS, normalized decompiled C and ordered P-Code operation shape match; 26 P-Code records for each function.
- Joern 4.0.548 strict function-scope gate: PASS, one requested, resolved, mapped, and analyzed source method; no unresolved calls or parse problems.

The detailed JSON comparisons and candidate evidence are stored alongside this file. Joern is an auxiliary source-graph check and does not replace P-Code, ELF relocation, KCFI, assembly, build, review, or hardware evidence.

## Deliberate limits

- This validates one function only; it does not establish whole-driver equivalence.
- The test-only rdbg_irq_test_anchor.c holds the callback address so KCFI is emitted before rdbg_open exists. It is not part of the final driver design.
- The Docker driver audit is preserved as docker_driver_audit.json. It correctly reports INCOMPLETE: the partial module lacks the stock module imports, full function traceability, and canonical module parity.
- Seven functions remain unmapped: rdbg_probe, rdbg_read, rdbg_write, rdbg_open, rdbg_release, init_module, cleanup_module.
- Independent review has not occurred. The device-tree selection is not confirmed, and no hardware validation has been performed.
- Do not promote or load this partial test module.

## Evidence index

- assembly_comparison.json and candidate_assembly/ — exact function instruction comparison and candidate assembly.
- kcfi_comparison.json and candidate_kcfi.json — stock/candidate KCFI match.
- ghidra_comparison.json and candidate_ghidra/rdbg.ko/ — Ghidra semantic comparison and candidate export.
- joern/joern_gate_summary.json, joern_gate_report.json, and source_inventory/ — strict scoped Joern report and method/call inventory.
- docker_driver_audit.json — full Docker audit with explicit incomplete result.
- docker_source_sync.json — repository-to-Docker source hashes.
- reconstruction_map.json — function mapping and remaining unmapped stock functions.
