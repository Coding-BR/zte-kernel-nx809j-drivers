# AW9620x reconstruction status

Status: `STATIC_CANDIDATE_PENDING_GATES`.

- 79 stock functions are mapped to byte-exact assembly extracted from the identified stock module.
- KCFI preambles come from the stock ELF inventory; non-code allocatable sections and their relocations are preserved in `aw9620x_sections.S`.
- This is an offline exact assembly reconstruction candidate. It does not claim a recovered C implementation or hardware validation.
- Docker reproducibility, Ghidra candidate comparison, Joern, KCFI, assembly relocation audit, and independent review are pending.
