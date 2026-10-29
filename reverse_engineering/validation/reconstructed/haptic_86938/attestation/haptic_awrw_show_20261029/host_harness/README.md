# `awrw_show` host harness

This harness includes the reconstructed function and compares it against a
separate transcription of the stock Ghidra control/effect flow. It runs only
in the pinned Docker builder image and never touches a device.

The `snprintf` shim models the target kernel implementation from
`kernel_vsnprintf_source_excerpt.txt`: when `size > INT_MAX`, kernel
`vsnprintf` emits `WARN_ON_ONCE` and returns `0` before writing. This matters
for `count=820`; glibc's host `snprintf` does not have the same behavior.

The guarded suite compares all counts 0 through 1024 using two data patterns,
checks all 256 byte formatting values, exercises mode/null/error paths, and
confirms the 819/820 page-boundary returns. A seeded `-EINVAL` mutant is
checked against the observed `-ERANGE` result. Two identical guarded runs are
required.

The ASan/UBSan run probes the conditional state `count=0` with a non-NULL data
pointer, where the function writes the newline at `buf[-1]`; ASan must catch
that underwrite. The stock `awrw_store` rejects count zero before updating
state, so this probe does not establish that the state is normally reachable.
A separate `count=820` run uses exactly 4096 bytes and must return 4100 without
an ASan report because the target formatter's `INT_MAX` guard returns before
dereferencing the final out-of-range destination pointer.

Run from the repository root:

```powershell
python .\reverse_engineering\validation\reconstructed\haptic_86938\attestation\haptic_awrw_show_20261029\host_harness\run_harness.py `
  --repo-root . `
  --candidate-module .\reverse_engineering\validation\reconstructed\haptic_86938\attestation\haptic_awrw_show_20261029\candidate_module_v3\haptic_86938_awrw_show_20261029_v3.ko `
  --stock-module .\reference_modules\full_vendor_boot\haptic_86938.ko
```

`output/harness_result.json` binds the source and module hashes to the
repeatable run. This host harness does not establish concurrent
`awrw_show`/`awrw_store` lifetime safety; that remains a separate kernel-level
review and test requirement.
