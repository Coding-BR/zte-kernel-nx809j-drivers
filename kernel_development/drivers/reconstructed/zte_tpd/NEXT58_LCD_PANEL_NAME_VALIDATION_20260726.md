# Next58 Validation: `get_lcd_panel_name`

Status: `PASS` for offline microtask `010_get_lcd_panel_name`.

The stock implementation is exactly a static-string getter: AArch64 `ADRP`,
`ADD`, `RET` return the immutable literal `"Unknown_lcd"`. There are no
hardware, firmware, lock, allocation, or error paths in this function.

The module was built twice in independent clean containers. Both artifacts are
`24,705,024` bytes with SHA-256
`c0fd487ee75e40e408db86aa7bbdcac50ab103cfeffd9edbaeb0aca232a7e53d`.

- [Build](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next58_lcd_panel_name_v1/build_next58_lcd_panel_name_candidate_v1.json)
  (`72753cff7bf430897bdda2718c1cb328f159d9171282f11926394e3474423822`)
- [ASAN/UBSAN direct harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next58_lcd_panel_name_v1/next58_lcd_panel_name_host_report_v1.json)
  (`6b41b51ebe8517ba8cd03c7870478d9909784a0ef4dd40e7c0e60e67d0be7cfc`)
- [Exact assembly comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next58_lcd_panel_name_v1/assembly_comparison_next58_lcd_panel_name_canonical_v1.json)
  (`f3183d216b4a7a797fe4d9e514247b2e3c622fb3d03a20dd7b4014f0d2f539e3`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next58_lcd_panel_name_v1/kcfi_comparison_next58_lcd_panel_name_v1.json)
  (`8afceb47f47b9d1292a2669a8c0facad7882ad6f18978271221a41ce7062c4c9`)
- [Strict Ghidra comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next58_lcd_panel_name_v1/ghidra_strict_next58_lcd_panel_name_v1.json)
  (`658c625f737709fef64210ed181b55c8f2c8a5991ab767163a648e22022733fa`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next58_lcd_panel_name_v1/joern_gate_summary.json)
  (`78f46b1722417f157f22cf3674a525e0fff4e5bc7a5c3f67448f8a97202ed1c0`)

The harness verifies the exact literal and stable static address twice under
ASAN/UBSAN. Assembly, normalized Ghidra C, P-Code, relocations, body size
(`12` bytes), and KCFI type ID are exact. Joern strict mode has zero parse
problems and unresolved calls.

No smartphone panel interaction was performed. This is a static ABI proof,
not evidence that the reported literal identifies the physical panel.
