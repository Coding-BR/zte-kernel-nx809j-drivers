# Next55 Validation: `syna_testing_pt05_show`

Status: `PASS` for offline microtask `226_syna_testing_pt05_show`.

This status is backed by hash-bound, direct evidence for the reconstructed
source currently in this repository. It proves the offline contract below; it
does not claim a physical touch-controller test or a complete driver/hardware
attestation.

## Recovered Contract

The sysfs show callback follows `kobj->parent->parent + 0x98` to obtain the
`syna_tcm` driver data and rejects a disconnected device when bit zero at
`tcm + 0x582` is clear. It retrieves testing item `0x0500`, copies image
columns from `tcm_dev + 0x20` to item `+0x24`, and copies image rows from
`tcm_dev + 0x1c` to item `+0x20`.

The stack result buffer is `0x48` bytes: data `+0x00`, buffer size `+0x08`,
data length `+0x0c`, mutex `+0x10`, and lock depth `+0x40`. The callback
installs that buffer at item `+0xd8`, the high limit (`pt05_hi_limits`,
3200 bytes) at `+0x38`, and the low limit (`pt05_lo_limits`, 3200 bytes) at
`+0x40`. The indirect `item->run` guard remains `0x81c04a92`.

On a non-empty result it emits unsigned `u16` samples as `"%d "`. The row
stride deliberately remains `tcm_dev->num_of_image_cols`, while the number
of values printed per row comes from the testing item. A nonzero lock depth
logs the stock diagnostic and still follows the managed-device cleanup path.

## Evidence

The canonical module was built twice in independent clean containers with
different `M=` paths. Both artifacts are `24,726,808` bytes with SHA-256
`0939026fccbdb38546dcaf84c7353544cfbe62741e0ebff0331556a7d060866d`.

- [Canonical build report](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next55_testing_pt05_v4/build_next55_testing_pt05_candidate_v4.json)
  (`2f707fca51fdeba84dcdcaee46b27e1e3bb9352238923a2442a1fb1cb45922cc`)
- [Direct ASAN/UBSAN harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next55_testing_pt05_v4/next55_testing_pt05_host_report_v4.json)
  (`ab78b2d050220ab033aa504a26a49acf0b53854447ca0e4b9ecd7ff139c8448f`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next55_testing_pt05_v4/kcfi_comparison_next55_testing_pt05_v4.json)
  (`acb30053d0c05ef617d283838ad61feb52a05463cef728979f1c461ca64c4936`)
- [Assembly comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next55_testing_pt05_v4/assembly_comparison_next55_testing_pt05_canonical_v4.json)
  (`e8a5772b8c115160146e6ea11ed894512a6d7ff598d8c5b8e96ef50eb4e60d0d`)
- [Strict Ghidra comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next55_testing_pt05_v4/ghidra_strict_next55_testing_pt05_v4.json)
  (`4761189780dd30f815a478f3a283f4a177db0ddaf3857728fbc7bffe42ac167a`)
- [Bounded Ghidra validation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next55_testing_pt05_v4/ghidra_bounded_next55_testing_pt05_v4.json)
  (`1e39105861413746a992db56c3b9987544287b6607ad4b0fec61dc11206846c8`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next55_testing_pt05_v4/joern_gate_summary.json)
  (`89536f9ada6514cf1cff8636c3df9ad27bfb6234da2ec94c9f8bed338c2add1b`)
- [Microtask attestation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next55_testing_pt05_v4/microtask_attestation_v3.json)

The direct harness runs eight cases twice under Android Clang with ASAN and
UBSAN: disconnected input, missing item, unsigned matrix output with a device
stride distinct from item width, callback failure, zero result length,
zero columns, busy buffer cleanup, and a missing managed device. Both cycles
pass with identical harness binaries.

Stock and candidate use `.text`, `724` function bytes, and KCFI type ID
`0x4e31a072`. Their Ghidra exports have equal body size and `600` P-Code
records. The strict comparison remains intentionally non-identical because
basic blocks and temporary registers are ordered differently. The bounded
validator passes: it verifies equal call targets, strings, mnemonic and
control surfaces, and accepts only the documented local lock-class-key
relocation `syna_testing_pt05_show.__key` in place of the stripped stock
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
