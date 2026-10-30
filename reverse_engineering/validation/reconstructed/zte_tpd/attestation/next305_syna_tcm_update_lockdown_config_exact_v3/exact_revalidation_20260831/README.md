# `syna_tcm_update_lockdown_config` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `305_syna_tcm_update_lockdown_config`, stock entry `0x00126aec`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 225 instructions and a 900-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both expose type ID `0xb72a3c1c`, with matching section and symbol size.
- Host direct tests: PASS; 23 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 136 calls, 21 control structures, zero unresolved calls and zero parser errors.

## Review findings retained

Joern reported four high-severity review findings in the reconstructed source: two `mutex_init` calls and two `devm_kfree` calls. They are retained as review evidence because this package proves offline function parity, not independent redesign of lifetime or synchronization semantics.

## Limitations

This is offline/static evidence. The host contract stubs firmware transport and controller state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
