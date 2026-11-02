# `aw8693x_creat_node` current-module revalidation — 2026-11-02

The current Docker-built candidate module has SHA-256
`d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f`.
`aw8693x_creat_node` is 104 bytes in both stock and candidate. Its relocation
aware assembly, KCFI, Docker reproducibility, Joern scope and slice, input
identity, and map identity pass in `core_v6_narrow_data_binding`.

The first current-module run exposed a Ghidra C rendering difference. Stock
prints the same named `aw8693x_vibrator_attribute_group` object without `&`;
the candidate prints `&object`. The object moved from `.data+0x190` to
`.data+0x2a0`, but remains the same 40-byte local ELF object in `.data`. The
candidate body is 104 bytes, and ordered P-Code and relocation-aware assembly
match stock. A fresh ELF audit verifies both modules have the same five
ordered sysfs attributes, 0644 modes, callback symbols, and NULL terminator.

The job permits only same-section, same-name data binding plus the specific
`object` versus `&object` syntax fallback after equal body bytes and P-Code
shape. The raw normalized C equality check remains false; the gated comparison
passes through that narrow rule. This does not establish broader semantic
equivalence. A current Docker ASan/UBSan host harness passes the sysfs group,
callback order, success normalization, and negative error/log cases. A fresh
KCFI comparison covers all ten sysfs callbacks.

The candidate remains under static validation. Promotion is unauthorized;
independent review and the remaining KMI and semantic-counterexample evidence
are still required. No function C source was changed for this revalidation.
