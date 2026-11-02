# Exact attestation: `nl_data_ready`

Target: `nl_data_ready@0x001020c8`. The stock body is 220 bytes and 55 AArch64 instructions.

The reconstruction preserves the stock inline skb refcount increment, saturation warning paths, length threshold, netlink `portid` load chain, `pid` stores, conditional `sk_skb_reason_drop`, and the two `gf_kernel` log strings (`update pid` and `current pid`). The Docker build uses the stock AArch64 skb layout; the host-only test stub retains its simplified safe layout through an explicit test conditional.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction and semantic relocation comparison, input identity, Joern scope/slice, two clean reproducible Docker builds, and map gates. Stock and candidate both contain 55 instructions and 220-byte symbols. The host harness passed reproducibly and covers netlink receive behavior.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. The Docker run remains static/offline evidence only: it does not prove physical hardware execution or a 100% hardware-equivalence claim.
