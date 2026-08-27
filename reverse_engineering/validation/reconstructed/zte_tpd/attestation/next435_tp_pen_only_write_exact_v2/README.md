# `tp_pen_only_write` attestation

Status: `OFFLINE_EXACT` / `HARDWARE_DEFERRED`

This microtask reconstructs the `tp_pen_only_write` file-operation callback from the NX809J stock `zte_tpd.ko` using the Ghidra decompilation, P-Code, and AArch64 assembly as the source of truth.

## Contract recovered

- Function: `tp_pen_only_write(struct file *, const char __user *, size_t, loff_t *)`
- Stock entry: `0x0010c818`
- Stock body: 272 bytes / 68 AArch64 instructions
- `tpd_cdev` callback: `tpd_cdev + 0xf88`
- pen-only state byte: `tpd_cdev + 0x441`
- userspace copy limit: 9 bytes
- invalid copy or parse: `-EINVAL` (`-22`)
- callback KCFI type ID: `0xc3d43b4d`

## Gates

- Joern v4.0.548 strict source gate: `PASS`, zero parse problems, no unresolved calls.
- Host harness: 5 cases, executed twice in the canonical Docker image with ASan and UBSan: `PASS`.
- Canonical Docker build: two independent cycles with `clang-r536225`: `PASS`.
- AArch64 assembly and relocation comparison: `PASS`; 68/68 instructions and 272/272 bytes match the stock function.
- KCFI presence, section, size, and type ID comparison: `PASS`.

Joern records one high-severity review item for the `kstrtouint` userspace-ingress boundary. It is intentionally preserved for reviewer attention; it does not block this gate because the source uses the required bounded buffer and strict parse/error path.

Hardware execution on the NX809J is deliberately deferred. This attestation does not claim that the reconstructed module has been loaded or exercised on a device.

## Reproduction evidence

- `ghidra_decompiled.c`, `ghidra_pcode.jsonl`
- `stock_assembly.asm`, `candidate_assembly.asm`, `assembly_comparison.json`
- `stock_kcfi.json`, `candidate_kcfi.json`, `kcfi_comparison.json`
- `joern_gate_report.json`, `joern_gate_summary.json`, `joern_input_manifest.json`
- `canonical_build_report.json`, `canonical_cycle_1_build.log`, `canonical_cycle_2_build.log`
- `tp_pen_only_write.c`, `tp_pen_only_write_host_test.c`, `zte_tpd.ko`

Artifact SHA-256: `147617a771de200175a738f9d727e3553ccd59fd1eeecb1870498512ec589694`

