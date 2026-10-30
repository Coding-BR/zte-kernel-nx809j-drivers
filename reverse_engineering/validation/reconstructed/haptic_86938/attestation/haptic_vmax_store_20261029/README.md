# haptic_86938: vmax_store

Static reconstruction candidate for stock `vmax_store` at `0x0010a810` (236 bytes). Source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_110_vmax_store.c`.

The callback parses an unsigned value with base autodetection and returns parse errors unchanged. On success it logs the value, locks the haptic mutex, stores the 32-bit value at the stock field offset, calls the operation at table offset `0xa0` with the haptic pointer and `u8` value, unlocks, and returns `count`.

## Core validation

`core_v3/hard_protocol_report.json` reports `CORE_GATES_PASS`: all eight required gates pass. The two clean Docker builds are byte reproducible (candidate module SHA-256 `f70f656c8a06ae293ec55370d8e1cfbc3566c756a9717d708c48ff2204c20511`). Strict 236-byte Assembly and relocation comparison, normalized Ghidra C and P-Code shape, Joern scope and slice, KCFI, input identity, and map identity pass. No Ghidra semantic fallback was used. The sysfs callback KCFI type ID matches stock (`0x95c41a97`); the indirect operation call uses stock type ID `0x1d0adf6e`.

The reconstruction map remains `candidate_under_static_validation`; the runner does not authorize promotion. The full-driver audit still reports the driver as incomplete because no whole-driver `.ko` is promoted and unrelated map entries remain unfinished. This attestation establishes the core static gates for `vmax_store` only.
