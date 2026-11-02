# ZTE TPD Docker strict audit — 2026-11-02

The strict audit now passes against the Docker curated snapshot: `static_verified`. The snapshot carries byte-identical copies of the repository candidate module and reconstruction map.

## Root causes corrected

- The validator previously treated a stock function name as unique. This stock module has six repeated symbol names at different addresses; all 367 `(stock_function, stock_entry)` identities match Ghidra. The validator now checks the composite identity and rejects only duplicate or missing name/address pairs.
- The Docker curated source had no `reconstruction_map.json`, so its traceability gate could not run. The versioned map and candidate were synchronized into the Docker snapshot. The inventory now checks map parity separately from Kbuild inputs.
- The first canonical-build invocation used an obsolete Docker source-volume name and stopped before compilation. The successful runs use the volume pinned by `target_kernel.json`.

## Results and limits

Two clean strict-audit builds produced identical bytes. All recorded static checks passed, including target-kernel identity, 367-function traceability, module runtime content/layout, modinfo, aliases, namespace, imports, and vermagic. The candidate's full module hash differs from the fresh build in `.note.gnu.build-id` and non-loadable debug/BTF-related sections; runtime code/data content and layout match. The stock module also carries dependency metadata from a different target build.

No hardware test was run. This attestation does not claim complete semantic equivalence or a 100% reconstruction.

## Evidence files

- `docker_strict_audit.json` and `.md`: exact strict-audit result.
- `canonical_build_report.json`: separate two-cycle canonical Docker build.
- `source_reconciliation.json`: candidate, map, input, function-identity, and module-section reconciliation.
- `manifest.json`: file sizes and SHA-256 hashes, with raw and LF-normalized digests.
