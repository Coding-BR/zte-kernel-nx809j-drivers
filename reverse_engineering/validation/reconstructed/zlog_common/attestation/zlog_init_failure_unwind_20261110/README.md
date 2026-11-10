# zlog_common initialization failure unwind — 2026-11-10

## Finding from stock evidence

The stock Ghidra pseudocode and P-Code for `init_module` show this order: initialize the 32 client mutexes, call `zlog_comm_create_ctrl_dev`, allocate the report workqueue, initialize delayed work, then set the server's initialized flag and return success. The stock code does not check whether `alloc_workqueue` returned `NULL`. The stock helper is `void`: failure to allocate the misc-device name returns silently, and `misc_register` failure is logged but not propagated. The module initializer consequently reports success even when required resources or the device are unavailable.

The stock `zlog_client_notify` path can enqueue delayed work using the global workqueue. In the exact target kernel, `__queue_delayed_work` warns when the queue is null but still stores the null pointer in the delayed-work item and arms its timer. This is an invalid state and can break the notification path; this review does not claim a runtime crash or a reproduced failure.

Stock pseudocode, P-Code, and AArch64 hashes plus exact target kernel source evidence are recorded in `init_failure_review.json` and `kernel_api_evidence.md`.

## Correction

`zlog_common_init` now checks the workqueue allocation and returns `-ENOMEM` if it fails. It initializes the delayed work and use count before exposing the misc device. `zlog_comm_create_ctrl_dev` now returns an error if name allocation or `misc_register` fails; it frees and clears the allocated name on registration failure. The initializer destroys the newly created, not-yet-queued workqueue and clears its pointer when device creation fails. It sets the initialized flag only after both resources are ready.

This changes the behavior of stock `init_module` and `zlog_comm_create_ctrl_dev` intentionally. It does not add a normal module unload path.

## Static validation

- Canonical NX809J Docker image: `nubia-sm8850-kernel-builder:latest`, image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`.
- Two clean target-kernel builds produced the same AArch64 module: SHA-256 `633ca1d22cacf6ebe70b7520896c55d9a9df7a9ee6da30112439b36dbddb5779`, 248,368 bytes.
- Target vermagic, kernel source identity, aliases, namespaces, traceability, and candidate-to-fresh runtime sections pass.
- The module imports one additional target-exported symbol, `destroy_workqueue`; target `Module.symvers` declares CRC `0xc3325950` as `EXPORT_SYMBOL_GPL`, and target `MODPOST` accepts it. Strict stock import-set parity therefore remains false. The final validator reports `incomplete_or_failed` for this explicit import delta; it is not reported as `static_verified`.
- AArch64 comparison covers all 13 stock Ghidra identities: five functions are byte/instruction/relocation exact, and eight are declared hardening deviations. The original registration body remains exact as the internal `zlog_register_client_stock` helper (207 instructions, 828 bytes).
- All 13 KCFI identities match stock, with symbol size ignored for changed functions. The direct misc helper has no valid KCFI preamble in either build, as expected.
- The first run, `docker_validation_rebuild.json`, is the pre-promotion record: it still compared the old candidate module against the new source build. Its candidate/content mismatch is expected; `docker_validation_final.json` is authoritative after the fresh module and map hash were synchronized.
- Final comparison reports: `docker_validation_final.json`, `assembly_comparison_all.json`, `assembly_register_stock_helper.json`, and `kcfi_comparison_all.json`.

## Limits and reconstruction status

No module load, ADB action, failure injection, or phone runtime test was performed. The workqueue-allocation and misc-registration failure paths are statically reviewed, not dynamically exercised. The independent human review is pending. The wider `zlog_common` reconstruction remains incomplete; this attestation does not claim full semantic equivalence.