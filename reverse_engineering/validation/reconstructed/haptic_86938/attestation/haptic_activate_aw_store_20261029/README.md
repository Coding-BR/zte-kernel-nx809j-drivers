# haptic_86938: activate_aw_store

Static reconstruction candidate for stock function `activate_aw_store` at `0x0010dac4` (252 bytes). Source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_109_activate_aw_store.c`.

The callback parses an unsigned activation value. On parse failure it returns the parser error. On success it logs the value; when the stock readiness bit is set, it takes the haptic mutex, cancels the timer, stores the activation mode, releases the mutex, and queues work on CPU 32.

## Core validation

`core_v1/hard_protocol_report.json` reports `CORE_GATES_PASS`. The two clean Docker builds are reproducible; strict 252-byte Assembly and relocation comparison, Ghidra normalized C/P-Code, Joern, KCFI, map identity, and module identity all pass. Candidate module SHA-256: `0820171f329758c49cf733c2bf4f9271716ee400a2fde15a336d538ec16d3889`. KCFI type ID matches stock: `0x95c41a97`.

The status remains `candidate_under_static_validation`. Promotion is not authorized by this runner; its decision lists additional evidence gates, including independent review, host and hardware validation, fuzzing, and state/lifetime analysis. This report therefore records successful core gates only.
