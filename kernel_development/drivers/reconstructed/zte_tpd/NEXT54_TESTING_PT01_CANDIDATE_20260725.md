# Next54 Candidate: `syna_testing_pt01_show`

Status: `HOLD_NO_PROMOTION` for microtask
`225_syna_testing_pt01_show`.

## Recovered Contract

The sysfs callback resolves the TCM driver object through
`kobj->parent->parent + 0x98`, gates the operation on `tcm + 0x582`, and
obtains testing item `0x0100`. It places one zeroed `tcm_buffer` at item
offset `+0xd8`, initializes its mutex, and supplies only the primary test
limit at item offset `+0x38`.

The primary limit is the stock `pt01_limits` array with size `16` and zero
data length. The secondary limit and result auxiliary pointer are not
written. The recovered callback invocation retains the stock KCFI guard
`0x81c04a92` and invokes the test with `false` for the third argument.

The callback prints `Pass` or `Fail`, emits each result byte as `x%02X `,
adds a newline only for a non-empty result, diagnoses a nonzero buffer lock
depth, requests one managed device, and frees result data only when both the
device and data pointer are non-null. The disconnected and missing-item
strings are retained verbatim.

## Passing Evidence

- Two independent canonical Linux-container builds passed without diagnostics
  and are byte-identical: `24,705,008` bytes, SHA-256
  `fd7f1be6b69f8b1c7163c86fcde6efb38d33c582f1534340f94a07861771c88a`.
  The build used Android Clang `r536225` 19.0.1, `ARCH=arm64`,
  `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`, and distinct `M=` paths.
- The direct Android Clang 19.0.1 ASAN+UBSAN harness passed six cases twice
  with an identical host binary SHA-256
  `2a5a9df98c0f27c1524f79169e6bdf523b1d6ff1d35e1c8bc55100a154288b99`.
  It covers disconnected, missing item, populated pass bytes, callback
  failure with empty output, false result with a busy buffer, and a missing
  managed device. It also asserts every recovered offset and the PT01 limit
  placement.
- The function KCFI type is exact: stock and candidate are both in `.text`
  with type ID `0x4e31a072`.
- Joern v4.0.548 strict mode passed with one resolved source function, one
  resolved Ghidra function, zero parser problems, zero unresolved calls, and
  zero mapped-call deltas. Its only review finding is the stock-observed
  guarded `devm_kfree` lifetime site.
- The candidate and stock have the same direct-call count (`13`), relocation
  count (`47`), direct-call target multiset, control mnemonic multiset, and
  resolved string multiset.

## Blocking Evidence

The canonical assembly parity gate remains `FAIL`: candidate symbol size is
`604` bytes with `151` instructions, while stock is `600` bytes with `150`
instructions. The remaining local lock-key relocation is named
`dummy_lock_key` in the candidate and stripped as `.bss+0x95e` in stock; this
is disclosed but not sufficient to accept the complete relocation multiset.

Both Ghidra gates remain `FAIL`. Stock has `600` body bytes and `483` P-Code
records; the candidate has `604` body bytes and `486` P-Code records. The
bounded gate also rejects the instruction mnemonic and P-Code operation
multisets, so the four-byte delta is not yet proven to be only harmless block
layout.

Do not add evidence to `MICROTASKS.json` or mark microtask 225 `PASS` until a
source-level explanation closes the assembly and bounded Ghidra deltas. No
smartphone, live sysfs, or touch-controller test was performed for this
candidate.
