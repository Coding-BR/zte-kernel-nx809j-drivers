# Exact attestation: `netlink_exit`

Target: `netlink_exit@0x001021a8`. The stock body is 64 bytes and 16 AArch64 instructions.

The reconstruction preserves the global `void netlink_exit(void)` ABI, the `nl_sk` null guard, `netlink_kernel_release` call, nulling of the socket pointer, and the stock literal `self module exited`.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction and semantic relocation comparison, input identity, Joern scope/slice, two clean reproducible Docker builds, and KCFI. Stock and candidate both carry type ID `0xe5c47d60`; both function symbols are 64 bytes with 16 instructions. The host harness passed reproducibly and covers teardown behavior.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. The Docker run remains static/offline evidence only: it does not prove physical hardware execution or a 100% hardware-equivalence claim.
