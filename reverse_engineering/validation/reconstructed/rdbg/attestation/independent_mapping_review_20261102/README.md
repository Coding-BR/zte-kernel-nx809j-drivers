# RDBG independent mapping review — 2026-11-02

The eight function mappings were reviewed against the acquired stock module and the current candidate. The candidate assembly was freshly extracted from the candidate `.ko` with the pinned Docker LLVM toolchain, then compared against the versioned stock assembly using `compare_function_assembly.py --all-function-identities`. All eight passed instruction, relocation, section, and symbol-size checks. The fresh boundary audit also reports eight exact function boundaries, with no mismatches, truncation, or missing names.

Relocation normalization is limited to same-site references: stock `.data` offsets map to `g_rdbg_instance` fields at the same offsets, backed by layout `static_assert`s in `rdbg_reconstruction_layout.h`. Allocation-tag references are normalized only at identical ADRP/ADD sites. The comparison JSON records each equivalence.

I also checked the short IRQ callback against stock P-Code and decompilation: it completes the object at `dev_id + 8` and returns `IRQ_HANDLED`. The teardown callback checks each device byte at offset `0x58` with a `0x1c8` stride, then tears down devices, class, cdev, character-device region, and client memory in stock order. The exact assembly comparison covers both complete function bodies.

`init_module` maps to source function `rdbg_init` through the kernel `module_init(rdbg_init)` macro; the extracted candidate symbol and stock function body compare exactly.

The map promotes all eight functions to `PROMOTED_OFFLINE_EXACT` and references `mapping_review.json`, `assembly_comparison.json`, and the current candidate assembly manifest. This is offline static verification only; no hardware run or second human peer review was performed.
