# I²C registration revalidation — 2026-11-02

## Scope

This package revalidates the two module entry functions:

- haptic_86938_i2c_init → init_module@001119fc
- haptic_86938_i2c_exit → cleanup_module@00111a64

No C source behavior was changed for this process.

## Stale export diagnosis

The earlier protocol_core_v3 report was generated with an older set of four
pipeline scripts. The source tree and map still matched their recorded hashes,
but the current comparators and runner had changed. A fresh Docker build exposed
that the candidate Ghidra export no longer represented the current module.

Two clean Docker cycles then produced byte-identical modules with SHA-256
d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f (6,581,144
bytes). The prior candidate export had executable MD5
e568ebb3953000e6a62beeeef7748816; Ghidra 12.1.2 was rerun against the fresh
module and emitted executable MD5 fb463a0a82b6191a9e8d3903c5c28988, matching
the Docker-built module. The stock export remains tied to the stock module.

## Final evidence

protocol_core_v6_mapbound/hard_protocol_report.json passes all eight core
gates: assembly and relocations, candidate Ghidra/P-Code, Docker
reproducibility, input identity, scoped Joern and slices, KCFI, and map
identity. The report revalidates all 191 source-file hashes and all 10 runner
script hashes. Its map hash matches the current reconstruction map.

protocol_core_v6_mapbound/driver_registration_audit.json passes 31 structural
checks on the aw_i2c_driver object, its I²C registration functions, IDs,
compatible string, PM callbacks and relocations. This is evidence for the
registration structure, not a complete callback-table or whole-driver proof.

## Remaining work

The core runner correctly records promotion_authorized: false. Remaining
evidence includes the complete callback-table gate, host harness, KMI type
review, LLVM IR diagnosis, semantic counterexample and independent review.
Hardware behavior and whole-driver equivalence remain unverified.

## Reproduction

Run from the repository root:

python workspace_tools/reconstruction_pipeline/run_hard_driver_protocol.py --job workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_i2c_registration_20261102_v4.json --repo-root . --output-dir reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_i2c_registration_20261102/protocol_core_v6_mapbound --mode core

The final output directory also contains the per-gate logs, manifests,
assembly/KCFI comparisons, Joern slices, Ghidra semantic comparison, and Docker
build report.
