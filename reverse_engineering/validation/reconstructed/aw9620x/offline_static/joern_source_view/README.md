# AW9620x Joern source view

`aw9620x_call_surface.c` is evidence scaffolding derived only from the canonical Ghidra `calls.jsonl`. It records the observed direct-call multiset for Joern's structural consistency gate. It is not linked into the driver and does not claim a recovered C implementation.

All 79 mapped runtime functions compile from exact AArch64 assembly islands; Joern has no C control-flow view for those units. Assembly, relocations, Ghidra P-Code, KCFI, and Docker-built ELF remain the authoritative implementation evidence.
