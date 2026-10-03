# `syna_dev_enter_normal_sensing` — direct-source host attestation

This block adds a Docker-reproducible direct-source harness for the target
whose normal path contains an inline AArch64 load/branch sequence. The
production source remains unchanged for the kernel build; only when
`ZTE_TPD_HOST_TEST` is defined does the harness select offset-equivalent host
reads so Clang can build and execute the test on the Docker host.

The 8 assertions cover default sleep-mode selection, the active gesture-power
override to mode zero, the exact low-power-gesture flag check, sleep failure
short-circuiting, gesture disable success/failure, selected-mode propagation,
and the 100 ms delay contract.

The runner compiles and executes two cycles with the pinned Docker image and
Clang `clang-r536225`, ASan/UBSan, `-Werror`, deterministic seed, build-id
disabled and path prefix mapping. The report binds the harness and driver
source SHA-256 values and requires equal binary hashes across both cycles.

This is semantic host evidence. It is not proof of AArch64 instruction or
relocation identity, KCFI compatibility, real callback/workqueue behavior,
transport behavior, or physical hardware behavior; those remain separate
gates.
