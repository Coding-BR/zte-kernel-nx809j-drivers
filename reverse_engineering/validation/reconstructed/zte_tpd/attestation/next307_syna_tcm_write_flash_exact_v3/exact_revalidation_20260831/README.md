# `syna_tcm_write_flash` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `307_syna_tcm_write_flash`, stock entry `0x0012704c`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 241 instructions and a 964-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both have `NO_VALID_KCFI_PREAMBLE`; no type ID was invented.
- Host direct tests: PASS; 20 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 150 calls, 33 control structures, zero unresolved calls and zero parser errors.

## Review findings retained

Joern reported three high-severity review findings in the reconstructed source: two lifetime findings and one synchronization finding. They remain explicit review items; this package proves offline parity and does not substitute for Android runtime or hardware validation.

## Limitations

This is offline/static evidence. The host contract stubs flash transport and controller state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
