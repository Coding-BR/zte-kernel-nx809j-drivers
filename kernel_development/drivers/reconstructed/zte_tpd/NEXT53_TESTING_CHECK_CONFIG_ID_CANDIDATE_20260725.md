# Next53 Candidate: `syna_testing_check_config_id_show`

Status: `HOLD_NO_PROMOTION` for microtask
`224_syna_testing_check_config_id_show`.

## Recovered Contract

The sysfs callback resolves driver data through
`kobj->parent->parent + 0x98`, checks `tcm + 0x582`, obtains testing item
`0x0002`, and supplies one stack `tcm_buffer` through item `+0xd8`.
It sets only the primary limit at `+0x38` to `"Default"`, with stock size
`16`; it does not write the secondary limit or result auxiliary pointer.

The callback retains KCFI type `0x81c04a92`, formats an optional
`Config ID`, logs a nonzero `lock_depth`, requests one managed device, and
frees the result only when both the device and data pointer are non-null.
Unlike the build-ID path, stock does not clear the result buffer after free.

## Passing Evidence

- Two independent canonical container builds are byte-identical:
  `24,711,720` bytes, SHA-256
  `4a6f1131c7c3bb8db141bef58f5f11aa756ac9d289f6d8b87174eba7ac5cfa44`.
- KCFI is exact: `.text`, `536` bytes, type ID `0x4e31a072`.
- Stock and candidate both have `536` symbol bytes, `134` instructions,
  twelve direct calls, one `syna_request_managed_device` call, and matching
  recovered connection branch topology.
- The direct Android Clang 19.0.1 ASAN+UBSAN harness passes six scenarios in
  two reproducible cycles: disconnected, missing item, populated pass,
  callback failure, false callback result with busy buffer, and absent managed
  device. It asserts all recovered offsets and the primary `Default` limit.
- Joern v4.0.548 passes with zero parser problems, unresolved calls or mapped
  call deltas. The only review marker is the stock-observed `devm_kfree` site.

## Blocking Evidence

The strict and bounded Ghidra gates remain `FAIL`: the body size is equal, but
the candidate has `429` P-Code records versus `423` stock records. The
remaining mismatch is stack-frame addressing/sign-extension shape, plus the
anonymous stock lock key (`.bss + 0x95e`) versus the reconstructed named key.

Do not add evidence to `MICROTASKS.json` or mark the microtask `PASS` until a
new source-level explanation closes this bounded P-Code delta. No smartphone
test was performed.
