# tpd_sysfs_fwimage_store exact revalidation

This attestation promotes `tpd_sysfs_fwimage_store` at stock entry `0010dff0` and 224 bytes to `PROMOTED_OFFLINE_EXACT`.

The evidence combines the canonical two-cycle Docker build from `nubia-sm8850-kernel-builder:latest` with clang `clang-r536225`, strict AArch64 instruction/relocation comparison, KCFI comparison, scoped Joern analysis, Ghidra stock/candidate P-Code, and a two-cycle ASan/UBSan host contract. The Ghidra candidate C view exposes an external-label control-flow artifact; the complete 224-byte repaired body and 175 P-Code records remain present, so the fallback is explicitly documented in `decision.json` and independent assembly parity remains mandatory.

Hardware and Android runtime validation are deferred. The source snapshot, reports, comparisons and hashes in this directory are the publishable evidence for the offline claim.
