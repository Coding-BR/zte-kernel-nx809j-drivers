# `syna_testing_remove_dir` — offline exact revalidation

This package records the independent offline revalidation of stock function
`syna_testing_remove_dir` at `0011bec4` (64 bytes) for `zte_tpd`.

The versioned reconstruction and Docker-curated Kbuild snapshot were verified
byte-identical. The pinned Docker builder produced identical module bytes in
two independent container filesystems with different module paths.

Gates: Docker-backed ASan/UBSan host harness (3 cases, reproducible, PASS),
AArch64 assembly/relocation comparison (16 instructions, 64 bytes, PASS),
KCFI comparison (type ID `0x3175607e`, PASS), and Joern strict analysis
(PASS). Hardware, Android sysfs, and module-loading validation remain
deferred.
