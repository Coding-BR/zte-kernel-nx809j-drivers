# Exact attestation: `sendnlmsg`

Target: `sendnlmsg@0x00101f1c`. The stock body is 268 bytes and 67 AArch64 instructions.

The reconstruction preserves the `-ENODEV` pre-check, atomic 48-byte skb allocation, skb headroom/length guards, `__nlmsg_put` arguments, skb control-field zeroing, one-byte netlink payload, the two stock `gf_dev-gf_kernel` log strings, `MSG_DONTWAIT` unicast, and the stock negative-result clamp (`ret & (ret >> 31)`). The function is globally visible, matching the stock ELF symbol and enabling the same KCFI record.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction and semantic relocation comparison, input identity, Joern scope/slice, two clean reproducible Docker builds, and KCFI. Stock and candidate both carry type ID `0x7bff871d`; both function symbols are 268 bytes with 67 instructions. The host harness passed reproducibly and covers the netlink send and failure paths.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. The Docker run remains static/offline evidence only: it does not prove physical hardware execution or a 100% hardware-equivalence claim.
