# fp_goodix current candidate assembly review

Date: 2026-11-02. Current candidate SHA-256: `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595`; stock SHA-256: `534bdb87c4612ef6b7fe5663a10203179181cf3da1ce407b602b5e4fa8e67562`.

Fresh extraction of both modules with the same stock Ghidra function identities and Docker toolchain passes **30/30** functions in instruction bytes, relocations, sections and symbol sizes. The old top-level candidate manifest points to `13ce11de…`; the 27/30 and 28/30 status entries refer to intermediate candidates, not current `fc9a662…`.

The canonical Docker inventory reports `static_verified` with two clean reproducible builds. Its two warnings record build-id/debug/BTF metadata differences from the fresh build and stock dependency metadata that differs from the current target. The strict KCFI-presence comparison remains unequal; three candidate preambles are classified direct-call-only, which is not a strict KCFI pass.

The driver remains **INCOMPLETE**. Its map still records C semantic equivalence as unproven, independent human review is pending, and hardware validation is deferred.
