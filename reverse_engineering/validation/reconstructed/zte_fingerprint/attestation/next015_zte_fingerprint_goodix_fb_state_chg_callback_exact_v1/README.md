# Exact attestation: `goodix_fb_state_chg_callback`

Target: `goodix_fb_state_chg_callback@0x00101db8`. The stock body is 336 bytes and 84 AArch64 instructions.

The reconstruction preserves the stock stack-canary path, null-notification and unopened-device branches, primary-panel tag gate, notification values `1` and `2`, `screen_state` offsets `0x70`/`0x71`, byte messages `2`/`3`, `sendnlmsg(&msg)`, the unknown-notifier path, and all observed `_printk` relocations. The stock ELF has an unusual literal/log association: the `LCD ON`/`UNBLACK` strings occur in the `notif_type == 2` block while the state/message writes remain those shown by the stock P-Code; this is preserved exactly.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction and relocation comparison, input identity, Joern scope/slice, two clean reproducible Docker builds, and KCFI. Stock and candidate both carry type ID `0x40116f97`; both function symbols are 336 bytes. The host harness passed reproducibly and directly covers this callback through `test_full_lifecycle/panel_events`.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. The Docker run remains static/offline evidence only: it does not prove physical hardware execution or a 100% hardware-equivalence claim.
