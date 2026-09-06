# cleanup_module — exact offline revalidation v3

The 2026-08-31 canonical Docker/Ghidra/KCFI/Joern revalidation passes for stock entry `001315e0`: 44 bytes, 11 instructions, exact normalized Ghidra C/P-Code shape, matching assembly and KCFI. Joern required the explicit parser define `__exit` for the kernel section annotation; with that documented define, the source method and both teardown calls resolve. The host contract also passes under ASan/UBSan.

This is offline function-level evidence only. Android runtime, unload ordering under a live kernel, and NX809J hardware behavior remain unverified.
