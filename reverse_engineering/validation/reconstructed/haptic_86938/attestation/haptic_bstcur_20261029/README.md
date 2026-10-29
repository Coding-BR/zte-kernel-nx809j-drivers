# aw8693x_set_bst_peak_cur microtask

Scope: one function from the 160-function haptic_86938 stock module.

- Stock ELF: reference_modules/full_vendor_boot/haptic_86938.ko
- Candidate source: kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_000_aw8693x_set_bst_peak_cur.c
- Reconstructed declaration: void aw8693x_set_bst_peak_cur(struct aw_haptic *aw)
- Stock and candidate body: one ret, 4 bytes, no relocations
- Stock and candidate KCFI type ID: 0x847a0830
- Candidate module SHA-256: 7286ee7689b0f56424ab35f3872f99ce1e051a729c59acd9e39fcd3ff6ba8c52
- Core protocol: all eight automated gates PASS
- Promotion: not authorized; semantic/lifetime review, remaining functions, whole-module target-kernel identity and hardware validation remain open

See plan2/ for the final plan, core2/ for the final protocol run, candidate_ghidra/ for the paired Ghidra export, candidate_module/ for the reproducible module, and signature_probe/ for the ABI probe source and result.

