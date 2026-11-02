# ftmmod independent mapping review — 2026-11-02

All nine stock-to-source mappings were rechecked against the current candidate. I freshly extracted the candidate assembly with the pinned Docker LLVM toolchain and compared each same-named stock/candidate function. All nine pass exact instruction, relocation, section, and symbol-size checks; no relocation normalization was needed. Candidate extraction is complete for all nine functions. The comparison and per-function evidence are in `assembly_comparison.json` and `mapping_review.json`.

The map now records `PROMOTED_OFFLINE_EXACT` and `OFFLINE_EXACT` for each function. `init_module` and `cleanup_module` map to the source callbacks registered through the kernel module init/exit macros; the candidate symbol comparison confirms the resulting entries.

The earlier all-driver Docker audit found the candidate SHA differs from a fresh build only in `.note.gnu.build-id`; runtime section content, section layout, and modinfo match. The final single-driver rebuild audit below rechecks these gates after the map update. Hardware validation and a second human peer review were not performed.
