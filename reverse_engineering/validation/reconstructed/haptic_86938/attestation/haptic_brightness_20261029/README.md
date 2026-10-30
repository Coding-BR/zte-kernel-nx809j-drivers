# brightness_get microtask

Scope: the stock haptic_86938 LED brightness callback.

- Stock entry: 00109600
- Stock body: ldur w0, [x0, #-0x50]; ret (8 bytes, no relocations)
- Reconstructed signature: enum led_brightness brightness_get(struct led_classdev *)
- Stock/candidate KCFI ID: 0x39e483e6
- Candidate module SHA-256: 99042f2c2febed1105ff65604a0f224ce59368aa7b97349bea18493d22154c64
- Core protocol: all eight automated gates PASS
- Promotion: not authorized; whole-driver review, remaining functions, target-kernel identity and hardware validation remain open

The module includes the previously attested aw8693x_set_bst_peak_cur and state_store functions. See plan2/ for the final plan, core3/ for the final protocol run, candidate_ghidra/ for the paired Ghidra export, candidate_module/ for the reproducible module, and signature_probe/ for the ABI derivation.
