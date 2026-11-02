# Exact attestation: `netlink_init`

Target: `netlink_init@0x0010202c`. The stock body is 152 bytes and 38 AArch64 instructions.

The reconstruction preserves the global `int netlink_init(void)` ABI, stack-canary layout, zeroed `netlink_kernel_cfg`, direct `nl_data_ready` callback, protocol `25`, `__this_module` argument, assignment to `nl_sk`, stock error literal `create netlink socket error`, and return values `0` on success / `1` on socket-creation failure.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction and semantic relocation comparison, input identity, Joern scope/slice, two clean reproducible Docker builds, and KCFI. Stock and candidate both carry type ID `0x6fbb3035`; both function symbols are 152 bytes with 38 instructions. The host harness passed reproducibly and covers the netlink initialization failure path.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. The Docker run remains static/offline evidence only: it does not prove physical hardware execution or a 100% hardware-equivalence claim.
