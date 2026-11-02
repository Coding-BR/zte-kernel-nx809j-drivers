# `tpd_zlog_record_notify` — offline exact revalidation

This package records the current offline revalidation of stock function
`tpd_zlog_record_notify` at `00106998` (3452 bytes) for `zte_tpd`.

The versioned reconstruction and Docker-curated Kbuild snapshot were verified
byte-identical. The pinned Docker builder produced identical module bytes in
two independent container filesystems with different module paths.

Gates: Docker-backed zlog ASan/UBSan contract harness (10 cases, reproducible,
PASS), AArch64 assembly/relocation comparison (863 instructions, 3452 bytes,
PASS), KCFI comparison (type ID `0xcc3d7e08`, PASS), and Joern strict analysis
(PASS). The observed stock `memset(NULL, ...)` failure-path call is preserved
and is documented as a stock defect. Hardware, Android zlog transport, IRQ,
firmware and module-loading validation remain deferred.
