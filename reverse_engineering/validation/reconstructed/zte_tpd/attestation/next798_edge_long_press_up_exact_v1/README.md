# `edge_long_press_up` offline exact attestation

This package records the current function-level reconstruction of
`edge_long_press_up` at stock entry `0x001100ac` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `edge_long_press_up_exact.S`; the readable C
source and direct host contract are retained as supporting evidence. The
offline gates all pass: source synchronization and a reproducible two-cycle
canonical Docker build, strict Joern, exact AArch64 instruction/relocation
comparison, KCFI surface comparison, and two-cycle ASan/UBSan host execution
covering three cases.

The candidate has 156/156 instructions and 624/624 symbol bytes, with 48
normalized relocation pairs. Stock and candidate both correctly have no
valid KCFI preamble. Hardware and Android runtime behavior remain deferred.
