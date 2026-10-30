# state_store microtask

Scope: the stock haptic_86938 sysfs state_store callback.

- Stock entry: 0010a2dc
- Stock body: mov x0, x3; ret (8 bytes, no relocations)
- Reconstructed signature: ssize_t state_store(struct device *, struct device_attribute *, const char *, size_t)
- Behavior: return the supplied write count unchanged; the stock body does not parse the buffer or update state
- Stock/candidate KCFI ID: 0x95c41a97
- Candidate module SHA-256: de2c719d096a338ba9160986ef53d3a62ecae4d0910f998edbe5caafa555d278
- Core protocol: all eight automated gates PASS
- Promotion: not authorized; whole-driver review, remaining functions, target-kernel identity and hardware validation remain open

The module also includes the previously attested aw8693x_set_bst_peak_cur function. See plan2/ for the final plan, core2/ for the final protocol run, candidate_ghidra/ for the paired Ghidra export, candidate_module/ for the reproducible module, and signature_probe/ for the ABI derivation.
