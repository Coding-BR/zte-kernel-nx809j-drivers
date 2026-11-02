# aw8693x_play_go reconstruction candidate

- Stock entry: `0x00104404`; function body: 152 bytes / 38 AArch64 instructions.
- Behavior: logs the stock message at line 471; writes `1` to register `0x09` when bit 0 is set, otherwise writes `2`.
- ABI: second parameter is `u8`; stock and candidate KCFI type ID is `0x1d0adf6e`. Ghidra's untyped prototype was too wide, so KCFI evidence determined the corrected declaration.
- Assembly, relocations, Ghidra normalized C/P-Code, Joern scoped/slice analysis, KCFI, input/map identity, and Docker reproducibility all passed.
- The two clean Docker builds and protocol build produced SHA-256 `e4b375ced0a91fa312b22ea9c8398efcbb79c27e670494e739bdb6f863d7e274` (4753184 bytes).
- Status remains `candidate_under_static_validation`, semantic equivalence `NOT_ESTABLISHED`, promotion unauthorized.

## Root cause corrected

The first draft had one extra `%s` in the printk format and failed the kernel's `-Werror=format` check. After correcting the format, an `unsigned int` argument produced KCFI ID `0xd37b6e95`, while stock requires `0x1d0adf6e`. Changing the argument to `u8` retained the exact stock assembly and made KCFI pass. The intermediate format failure is preserved as `docker_audit_attempt1_format_mismatch.json`; the successful two-build evidence is `docker_audit_attempt4.json`.

## Driver-wide limitation

This attestation validates one function. The haptic module is still incomplete: 60 stock functions remain unmapped, no full reconstructed module has been promoted, and module-wide vermagic, alias, and undefined-symbol parity remain unresolved. No hardware behavior or full-driver equivalence is claimed.

## Evidence

`hard_protocol_report.json` records the eight gates; the sibling `haptic_play_go_20261029` directory contains the job, Ghidra exports and their hashes, and Docker build records. `hard_protocol_plan.json` is in `haptic_play_go_plan_u8_20261029`.
