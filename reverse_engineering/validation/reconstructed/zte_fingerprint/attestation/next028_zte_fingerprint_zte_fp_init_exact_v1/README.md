# zte_fingerprint `zte_fp_init` — offline exact attestation

This attestation promotes source `zte_fp_init` against the stock ELF alias `init_module@001029b0` as `PROMOTED_OFFLINE_EXACT`.

Evidence preserved here:

- Ghidra stock decompilation/P-Code reviewed, including dynamic char-device registration, class failure rollback, platform-driver failure rollback, netlink initialization, and the unconditional zero return after the platform-registration path.
- Stock/candidate AArch64 comparison passed with 69 instructions and 276 bytes, including matching relocations and strings.
- Canonical Docker builds passed twice with identical module hash `b191322ad39bac661641749378c987dca50af6826e25491c2ab1a851dda6a1c9`.
- KCFI type ID `0x6fbb3035` matched with 276-byte `.init.text` symbols.
- Joern scoped and usage-slice gates passed.
- The host harness passed reproducibly and covers module initialization and teardown paths.

The Docker engineering runner's auxiliary acquisition report remains non-promoting because its run-local stock acquisition was unavailable. Promotion is therefore limited to the canonical offline evidence above; no hardware initialization claim is made.
