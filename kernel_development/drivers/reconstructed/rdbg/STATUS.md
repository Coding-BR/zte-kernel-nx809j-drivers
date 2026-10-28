# rdbg — reconstruction in progress

Status: INCOMPLETE.

- Stock evidence covers 8/8 functions. Four functions now have C candidates: on_interrupt_from, cleanup_module, rdbg_release, and rdbg_open.
- All four candidates pass their configured Docker-built assembly/relocation/section/size, KCFI, Ghidra semantic/P-Code, and scoped Joern gates. The rdbg_open microtask also passes the Joern usages slice and reproducible builds from both the repository source and synchronized Docker curated snapshot; see its versioned attestation.
- Two clean Docker builds from each source route produce the same partial module SHA-256: 8803ab52b66682d967dd66eef47e7c199ceabdf342b192600cb0bca5d5404592. The Docker curated snapshot no longer contains the temporary callback test anchor. The partial candidate is not canonical.
- Four stock functions remain unmapped: rdbg_probe, rdbg_read, rdbg_write, and init_module.
- Independent review, host harness/lifetime evidence, full-module import parity, device-tree variant selection, and hardware validation remain pending. Do not promote or load the partial module.
