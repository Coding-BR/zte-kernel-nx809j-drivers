# Next52 Candidate: `syna_testing_check_dev_id_show`

Status: `HOLD_NO_PROMOTION` for microtask
`223_syna_testing_check_dev_id_show`. This is a reproducible candidate, not
a claim of complete reconstruction and not evidence for a `PASS` transition.

## Recovered Contract

The sysfs show path follows `kobj->parent->parent + 0x98` to the driver data,
checks the connection byte at `tcm + 0x582`, obtains testing item `0x0001`,
and uses two stack `tcm_buffer` objects. The recovered object layout is
`data + 0x00`, `buf_size + 0x08`, `data_length + 0x0c`, mutex `+ 0x10`, and
`lock_depth + 0x40`, with a total size of `0x48` bytes.

It installs the build result at item `+0xd8`, the device result at `+0xe0`,
sets the primary limit at `+0x38` to null, and passes the secondary limit
`"3908"`/length `4` at `+0x40`. The indirect test callback retains the stock
KCFI type ID `0x81c04a92`.

For successful callback execution, the output and cleanup preserve the stock
order: optional Build ID, optional Device ID, one managed-device request for
each buffer, `devm_kfree` when both device and data exist, and a combined
64-bit clear of the build buffer size/length before the second request.

## Passing Evidence

- Canonical build: two clean containers with independent `M=` paths produced
  byte-identical modules, `24,690,736` bytes, SHA-256
  `04a9c5d2dd2e12fab9af65d9334860300acfce9a4a320a4d204098985b3f5887`.
- KCFI: stock and candidate both use `.text`, `744` symbol bytes and type ID
  `0x4e31a072` for this sysfs callback.
- AArch64 extraction: stock and candidate both have `744` symbol bytes,
  `186` instructions, `18` direct external calls, two direct
  `syna_request_managed_device` calls, equal control-mnemonic counts, and
  equal resolved-string multiset.
- Direct harness: seven cases in two reproducible Android Clang 19.0.1
  ASAN+UBSAN cycles, no stderr. It covers disconnected and missing-item
  exits, populated pass output, callback failure, callback false result,
  both busy-buffer branches, invalid managed device, field offsets, callback
  arguments, limits, cleanup count, and build size/length clearing.
- Joern v4.0.548: one mapped function, zero parse problems, unresolved calls,
  or mapped call deltas. Its two lifetime findings are the stock-observed
  `devm_kfree` sites and remain review markers rather than a promotion claim.

## Blocking Evidence

The strict Ghidra comparison remains `FAIL`. The candidate has the exact body
size but `623` P-Code records versus stock `619`; stack-frame address modes
and sign-extension placement differ. The bounded semantic validator also
remains `FAIL` because it deliberately does not accept those operation
multiset differences.

The only relocation delta is the private lock-class key: stock references an
anonymous `.bss + 0x95e` object while the reconstructed module has the local
symbol `syna_pal_mutex_alloc___key_3`. This is expected for independently
compiled modules but is still disclosed by the strict comparator.

Do not weaken the bounded validator or attach this candidate to
`MICROTASKS.json` as `PASS`. The next owner must either reduce the remaining
P-Code difference with a source-level explanation and a new bounded rule, or
keep the task in `READY_FOR_IMPLEMENTATION` and collect a controlled hardware
test later. No smartphone test was performed for this checkpoint.

## Evidence Locations

All transient, hash-bound reports are kept outside the repository under
`C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\validation\zte_tpd`:

- `build_next52_testing_check_dev_id_candidate_v19_report.json`
- `kcfi_comparison_next52_testing_check_dev_id_v19.json`
- `next52_testing_check_dev_id_host_report_v20.json`
- `joern\next52_testing_check_dev_id_v19\joern_gate_report.json`
- `assembly_comparison_next52_testing_check_dev_id_v19.json`
- `ghidra_semantic_comparison_next52_testing_check_dev_id_v19.json`
- `ghidra_bounded_semantic_validation_next52_testing_check_dev_id_v19.json`
