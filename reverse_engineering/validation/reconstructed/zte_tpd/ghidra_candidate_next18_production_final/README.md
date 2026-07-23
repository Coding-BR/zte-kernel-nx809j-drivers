# Ghidra candidate export: Next18

This is a portable, function-scoped copy of the fresh Ghidra 12.1.2 export
for `syna_tcm_run_production_test`. The complete 512-function export remains
in the local engineering workspace; the stock complete export remains under
`../offline_static/ghidra_stock`.

The package contains the candidate decompiled C, ordered P-Code, the complete
candidate string index needed for address resolution, and a one-function
`functions.jsonl`. It is sufficient to rerun
`compare_ghidra_function_semantics.py` for this checkpoint.

The package targets candidate SHA-256
`214eb06c1a1074b329818fb0b0a7c9d0e9ca1e6880a1454442b8355fd3f4ea97`
and Ghidra executable MD5 `121d0e7edeb75f109b435563609f03ab`.
