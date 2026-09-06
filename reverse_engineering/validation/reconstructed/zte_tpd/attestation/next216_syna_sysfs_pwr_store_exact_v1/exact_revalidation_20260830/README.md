# `syna_sysfs_pwr_store` — offline exact revalidation

This package records the independent offline revalidation of stock function
`syna_sysfs_pwr_store` at `0011b2c4` (232 bytes) for `zte_tpd`.

The versioned reconstruction and Docker-curated Kbuild snapshot were verified
byte-identical. The pinned Docker builder produced identical module bytes in
two independent container filesystems with different module paths.

Gates: Docker-backed ASan/UBSan host harness (10 cases, reproducible, PASS),
AArch64 assembly/relocation comparison (58 instructions, 232 bytes, PASS),
KCFI comparison (type ID `0x9ce291cd`, PASS), and Joern strict analysis
(PASS). Hardware, Android sysfs, and module-loading validation remain
deferred.
