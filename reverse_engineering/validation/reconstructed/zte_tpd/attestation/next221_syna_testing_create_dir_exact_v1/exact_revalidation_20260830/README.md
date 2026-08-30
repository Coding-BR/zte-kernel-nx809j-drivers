# `syna_testing_create_dir` — offline exact revalidation

This package records the independent offline revalidation of stock function
`syna_testing_create_dir` at `0011be28` (152 bytes) for `zte_tpd`.

The versioned reconstruction and Docker-curated Kbuild snapshot were verified
byte-identical. The pinned Docker builder produced identical module bytes in
two independent container filesystems with different module paths.

Gates: Docker-backed ASan/UBSan host harness (4 cases, reproducible, PASS),
AArch64 assembly/relocation comparison (38 instructions, 152 bytes, PASS),
KCFI comparison (type ID `0xae20471c`, PASS), and Joern strict analysis
(PASS). Hardware, Android sysfs, and module-loading validation remain
deferred.
