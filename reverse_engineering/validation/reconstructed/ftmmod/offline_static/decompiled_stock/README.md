# ftmmod stock decompilation evidence

These nine `.c` files were copied unchanged from the Docker source volume at pinned Git revision `e1ea0289c329945af9422e58256a37f7603fa098`, from `decompiled/boot_modules/ftmmod/`. They are decompiler pseudocode, not the original ZTE source and not a reconstruction candidate.

Use the hash-bound stock ELF and its relocations, section-aware symbols, complete assembly, and Ghidra P-Code as the evidence oracle. The separate `ghidra_stock/ftmmod.ko/` directory contains a fresh Ghidra export of the same stock module. No candidate source or candidate `.ko` exists for this driver yet. See [PROVENANCE.json](PROVENANCE.json) for per-file hashes and source revision.
