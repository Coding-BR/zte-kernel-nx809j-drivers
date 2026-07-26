# Next56 Validation: `syna_testing_pt0a_show`

Status: `PASS` for offline microtask `227_syna_testing_pt0a_show`.

This status is backed by hash-bound, direct evidence for the reconstructed
source currently in this repository. It proves the offline contract below; it
does not claim a physical touch-controller test or a complete driver/hardware
attestation.

## Recovered Contract

The sysfs show callback follows `kobj->parent->parent + 0x98` to obtain the
`syna_tcm` driver data and rejects a disconnected device when bit zero at
`tcm + 0x582` is clear. It retrieves testing item `0xA00`, copies image
columns from `tcm_dev + 0x20` to item `+0x24`, and copies image rows from
`tcm_dev + 0x1c` to item `+0x20`.

The stack result buffer is `0x48` bytes: data `+0x00`, buffer size `+0x08`,
data length `+0x0c`, mutex `+0x10`, and lock depth `+0x40`. The callback
installs that buffer at item `+0xd8`, the high limit (`pt0a_hi_limits`,
3200 bytes) at `+0x38`, and the low limit (`pt0a_lo_limits`, 3200 bytes) at
`+0x40`. The indirect `item->run` guard remains `0x81c04a92`.

Unlike PT05, matrix samples are signed `s16` values and are loaded with
`ldrsh` before formatting as `"%d "`. The row stride deliberately remains
`tcm_dev->num_of_image_cols`, while the number of values printed per row
comes from the testing item. A nonzero lock depth logs the stock diagnostic
and still follows the managed-device cleanup path.

## Evidence

The canonical module was built twice in independent clean containers with
different `M=` paths. Both artifacts are `24,705,024` bytes with SHA-256
`c0fd487ee75e40e408db86aa7bbdcac50ab103cfeffd9edbaeb0aca232a7e53d`.

- [Canonical build report](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next56_testing_pt0a_v1/build_next56_testing_pt0a_candidate_v1.json)
  (`b770ccbf38dfafc2fb637dd977805877db4f5e2a02841bc60d6430d9fa42445b`)
- [Direct ASAN/UBSAN harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next56_testing_pt0a_v1/next56_testing_pt0a_host_report_v1.json)
  (`a6105d16e590cb7d7183183fca17769c58ce8e2320a1d65259cb642a5bf238e0`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next56_testing_pt0a_v1/kcfi_comparison_next56_testing_pt0a_v1.json)
  (`7e34094c0414879ee9e3f67826589aab05b839a00249f5aad6208f4308a1e6e0`)
- [Assembly comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next56_testing_pt0a_v1/assembly_comparison_next56_testing_pt0a_canonical_v1.json)
  (`53c8581892b8dfd6cea7b08efec4951fc75a7ae8d101e04c29fb8a1cf2b758bb`)
- [Strict Ghidra comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next56_testing_pt0a_v1/ghidra_strict_next56_testing_pt0a_v1.json)
  (`0f394f5f0c782d0ae77bae1a4fcbd864d9fd5c3feae00f49816b9db2bf1e18e9`)
- [Bounded Ghidra validation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next56_testing_pt0a_v1/ghidra_bounded_next56_testing_pt0a_v1.json)
  (`c95c13c09bd7f223542622d5c47f7b8079b7d7d6547719cdf32a71c822d27a31`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next56_testing_pt0a_v1/joern_gate_summary.json)
  (`52a27f7c216d14b8258a007c6dc6427e70b47f0bc1b6e5a080cf21c5acda85c7`)
- [Microtask attestation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next56_testing_pt0a_v1/microtask_attestation_v1.json)
  (`f8309269d55f23be8af389b16326eed616b2c68e6fcc9f2f94300b655e193a96`)

The direct harness runs eight cases twice under Android Clang with ASAN and
UBSAN: disconnected input, missing item, signed matrix output with a device
stride distinct from item width, callback failure, zero result length, zero
columns, busy buffer cleanup, and a missing managed device. Both cycles pass
with identical harness binaries.

Stock and candidate use `.text`, `724` function bytes, and KCFI type ID
`0x4e31a072`. Their Ghidra exports have equal body size and `600` P-Code
records. The strict comparison remains intentionally non-identical because
basic blocks and temporary registers are ordered differently. The bounded
validator passes: it verifies equal call targets, strings, mnemonic and
control surfaces, and accepts only the documented local lock-class-key
relocation `syna_testing_pt0a_show.__key` in place of the stripped stock
`.bss` object.

Joern v4.0.548 ran in strict mode with zero parse problems, zero unresolved
calls, and zero mapped-call deltas. Its `devm_kfree` lifetime finding is
stock-observed and remains a review marker, not a hidden exception.

## Remaining Boundary

No smartphone test was performed for this function. Before relying on this
sysfs node with a real controller, run the controlled device procedure with a
known-good boot path and collect kernel logs around the testing callback. Do
not reinterpret this offline `PASS` as proof of electrical behavior, panel
firmware compatibility, or whole-driver completion.
