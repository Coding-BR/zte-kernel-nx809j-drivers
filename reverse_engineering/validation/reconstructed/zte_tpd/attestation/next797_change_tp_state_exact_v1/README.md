# `change_tp_state` offline exact attestation

This package records the current function-level reconstruction of
`change_tp_state` at stock entry `0x00110320` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `change_tp_state_exact.S`; the readable C source
and direct host contract are retained as supporting evidence. The current
offline gates all pass: two-cycle source synchronization and canonical Docker
build, strict Joern, exact AArch64 instruction/relocation comparison, KCFI,
and two-cycle ASan/UBSan host execution covering five cases.

The candidate has 94/94 instructions and 376/376 symbol bytes, with matching
KCFI type ID `0xf4d9b23e`. Hardware, Android runtime, firmware transport and
physical input behavior remain deferred.
