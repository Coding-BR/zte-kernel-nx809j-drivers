# rdbg — reconstruction in progress

Status: INCOMPLETE.

- All 8 stock functions are mapped to C candidate sources. Their individual status and evidence are recorded in `reconstruction_map.json` and the versioned attestations.
- `init_module@00101638` now passes all 8 automated core gates, including exact instruction and relocation comparison, KCFI, Ghidra C/P-Code, Joern, input identity, and reproducible Docker builds.
- The full Docker audit still rejects the rebuilt module's `vermagic`. The pinned Docker source checkout and `.config` do not match the target-kernel revision/configuration recorded in `kernel_development/config/target_kernel.json`; the fresh module was therefore not promoted to `curated/rdbg/rdbg.ko`.
- Independent review, host harness and lifetime evidence, complete target KMI/config parity, and hardware validation remain pending. Do not call the driver fully reconstructed or load this candidate.
