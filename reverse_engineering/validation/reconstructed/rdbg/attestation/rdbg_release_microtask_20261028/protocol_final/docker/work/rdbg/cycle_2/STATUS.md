# rdbg — reconstruction in progress

Status: INCOMPLETE.

- Stock evidence covers 8/8 functions. Three functions now have C candidates: on_interrupt_from, cleanup_module, and rdbg_release.
- All three candidates pass exact Docker-built assembly/relocation/section/size comparison, KCFI type-ID comparison, Ghidra semantic/P-Code comparison, and strict scoped Joern analysis. The rdbg_release microtask also passes the configured Joern usages slice and two reproducible Docker builds; its evidence is versioned under the rdbg_release microtask attestation.
- Two clean Docker builds of the partial test module are byte-identical. Its test-only callback pointer occupies the stock rdbg_driver data slot at .data+0xa0; replace it with the real driver definition during full reconstruction. The candidate is not canonical.
- Five stock functions remain unmapped: rdbg_probe, rdbg_read, rdbg_write, rdbg_open, and init_module.
- Independent review, host harness/lifetime evidence, full-module import parity, device-tree variant selection, and hardware validation remain pending. Do not promote or load the partial module.
