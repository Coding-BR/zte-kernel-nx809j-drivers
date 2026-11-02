# zte_fingerprint `zte_fp_exit` — offline exact attestation

This attestation promotes source `zte_fp_exit` against the stock ELF alias `cleanup_module@00102ac8` as `PROMOTED_OFFLINE_EXACT`.

Evidence preserved here:

- Ghidra stock decompilation/P-Code reviewed for the teardown order: netlink exit, platform-driver unregister, class destruction, and character-device unregister through `gf_driver.driver.name`.
- Stock/candidate AArch64 comparison passed with 22 instructions and 88 bytes, including matching relocations.
- Canonical Docker builds passed twice with identical module hash `8fbc779e8238738398d80e24902c88fbdbd9b1552c935f4d3f010f029ac34247`.
- KCFI type ID `0xe5c47d60` matched with 88-byte `.exit.text` symbols.
- Joern scoped and usage-slice gates passed.
- The host harness passed reproducibly and covers module teardown.

The Docker engineering runner's auxiliary acquisition report remains non-promoting because its run-local stock acquisition was unavailable. Promotion is therefore limited to the canonical offline evidence above; no hardware teardown claim is made.
