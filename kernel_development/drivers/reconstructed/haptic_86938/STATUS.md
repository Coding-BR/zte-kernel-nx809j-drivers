# haptic_86938 status

The reconstruction is incomplete and is not a replacement module. Offline stock evidence covers all 160 functions. As of 2026-10-30, 124 current source revisions have source-hash-bound passing function-scoped core reports; three mapped candidates need fresh gates for their current hashes, and 33 functions remain `NOT_STARTED` without source files. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest source-bound core process refreshed `ram_work_init`; all applicable static gates pass, including exact assembly, relocation, Ghidra C/P-Code, and two reproducible Docker builds. KCFI is not required for this helper. `ram_work_routine`, `aw8693x_set_wav_loop`, `seq_show`, and `seq_store` also pass their current-source gates. `aw8693x_ram_get_f0` passes using the documented assembly-only comparison because normalized Ghidra C differs. Three other source files need fresh gates against their current hashes. No candidate module has been promoted, and the whole-driver audit remains incomplete.

The stock module reports vermagic `6.12.23-maybe-dirty-4k`; the shared Docker kernel source reports `6.12.23-4k`. This difference and the remaining function reconstruction prevent a whole-driver readiness claim. See [README.md](README.md) and the per-function attestations for evidence.
