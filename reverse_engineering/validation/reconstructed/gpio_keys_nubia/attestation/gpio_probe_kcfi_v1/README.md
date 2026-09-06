# Fresh exact revalidation: `gpio_keys_probe`

- Driver: `gpio_keys_nubia`; microtask: `001_gpio_keys_probe`; stock entry: `0010071c`
- Effective implementation: `gpio_keys_probe_exact.S`
- Result: `REVALIDATED_OFFLINE_EXACT`; central promotion deferred because the repository `.ko` is stale

The fresh candidate was built twice in the pinned Docker toolchain (`clang-r536225`) and reproduced SHA-256 `5ee86000bf0c396e5b74750d6220db7c2d1ce6f73d0394eee70adbdc0bafaaa8` at 231,432 bytes. The current `.ko` stored in the source directory is a different historical artifact (`95e2b7d8352c3039e154f56f32da8f45e3a513b3706d3ebcb2269886424f14cc`); it was not overwritten.

The fresh candidate matched the stock 3,600-byte `.text` symbol, 900 AArch64 instructions, relocations, KCFI type ID `0xc7f8c87c`, Ghidra normalized C and 3,208-operation P-Code shape. Strict Joern passed with zero parser problems and zero unresolved calls; because the implementation is an exact `.S` island, the selected CPG reports zero source calls/controls and does not replace the independent binary gates.

The Docker host contract passed 6 scenarios in two repeated executions with empty sanitizer stderr. Hardware GPIO/IRQ/DT/input registration and module loading remain outside this offline revalidation.

Detailed reports are under `exact_revalidation_20260901/`; the fresh candidate module is `candidate_gpio_keys_nubia.ko`.
