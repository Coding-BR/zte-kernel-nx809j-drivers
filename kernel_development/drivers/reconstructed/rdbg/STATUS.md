# rdbg — reconstruction in progress

Status: INCOMPLETE.

- Stock evidence covers 8/8 functions. Two functions now have C candidates: on_interrupt_from and cleanup_module.
- Both functions pass exact Docker-built assembly/relocation/section/size comparison, KCFI type-ID comparison, Ghidra semantic/P-Code comparison, and strict scoped Joern analysis.
- Two clean Docker builds of the partial test module are byte-identical. Its test-only callback pointer occupies the stock rdbg_driver data slot at .data+0xa0; replace it with the real driver definition during full reconstruction. The candidate is not canonical.
- Six stock functions remain unmapped: rdbg_probe, rdbg_read, rdbg_write, rdbg_open, rdbg_release, init_module.
- Independent review, full-module import parity, device-tree variant selection, and hardware validation remain pending. Do not promote or load the partial module.
