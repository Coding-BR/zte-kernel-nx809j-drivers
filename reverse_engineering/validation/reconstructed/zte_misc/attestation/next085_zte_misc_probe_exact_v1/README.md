# zte_misc — zte_misc_probe

This attestation promotes `zte_misc_probe` at stock entry `0x00101598` as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed, including chosen-node parsing, boot-mode handling, labeled GPIO child traversal, and the two stock overflow guards.
- The stock AArch64 body was lifted into `zte_misc_probe_exact.inc`: 164 instructions / 656 bytes, with exact relocations.
- Stock and candidate KCFI type ID: `0xc7f8c87c`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The Docker-backed host harness is reproducible and covers chosen-node parsing, GPIO child mapping, missing-label skipping, and the missing-node error path.
- The host harness uses the reconstructed C semantic fallback on x86; the arm64 kernel build uses the exact assembly island.

This is an offline/static equivalence claim. Live device-tree state, peer-driver integration, and physical hardware behavior remain unverified.
