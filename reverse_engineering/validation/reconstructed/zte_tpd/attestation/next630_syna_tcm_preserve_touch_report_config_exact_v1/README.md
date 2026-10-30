# target320 — `syna_tcm_preserve_touch_report_config`

Status: `PROMOTED_OFFLINE_EXACT`

This attestation records the offline exact reconstruction for stock entry `0012a53c`.
The candidate is the preserved AArch64 function body materialized from the stock assembly,
with the stock KCFI type ID `0x627e4777` and the preserved `.rodata.str1.1` pool required
to resolve the original relocations. Android runtime and NX809J hardware behavior remain
outside this attestation.

The typed C transition and its host/Joern reports remain available in
`attestation/next320_syna_tcm_preserve_touch_report_config_v1` as supporting semantic
evidence; the promoted implementation is the exact `.S` object linked by the canonical
Kbuild path.
