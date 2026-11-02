# aw8693x_play_mode revalidation — 2026-11-02

## Scope and stale export

The target is aw8693x_play_mode at stock entry 00104798. Its earlier candidate
Ghidra export used executable MD5 cfd8b21de24a79b2a713638a1be2a3ab. The current
Docker source build reproducibly emits module SHA-256
d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f, whose
executable MD5 is fb463a0a82b6191a9e8d3903c5c28988. The full export was scoped
again for this function; its candidate entry is 0010b380 and body size is 740
bytes. No function C source was changed for this revalidation.

## Evidence

protocol_core_v8_current passes all eight automated core gates with two
byte-identical Docker builds. The reconstruction map was updated with the fresh
candidate export and v8 report, then protocol_core_v9_mapbound passed again
with the current map hash. The final report also confirms all 191 source-file
hashes and all 10 runner-script hashes.

The assembly and relocation comparison, Ghidra normalized-C/P-Code comparison,
KCFI comparison, scoped Joern report and Joern slices all pass. The mapping
remains candidate_under_static_validation and semantic equivalence remains
NOT_ESTABLISHED.

## Remaining evidence

The runner records promotion_authorized: false. Remaining gates are bounded
model, complete callback-table evidence, host harness, KMI review,
KUnit/Lockdep/KCSAN, LLVM IR diagnosis, lock/lifetime review, sanitizers,
semantic counterexample, state/effect ledger and independent review. This
single-function result does not establish completion of haptic_86938.

## Reproduction

Run from the repository root:

python workspace_tools/reconstruction_pipeline/run_hard_driver_protocol.py --job workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_play_mode_20261102_v2.json --repo-root . --output-dir reverse_engineering/validation/reconstructed/haptic_86938/attestation/aw8693x_play_mode_20261101/protocol_core_v9_mapbound --mode core

The protocol output directories preserve the plans, build reports, source and
runner manifests, Joern slices, assembly, Ghidra/P-Code, KCFI comparisons and
command logs.
