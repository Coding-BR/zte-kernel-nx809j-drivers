# `soc_fan` lifecycle hardening — 2026-11-02

## Result

The current source is an intentional lifecycle-hardening deviation from the stock reconstruction. Docker compiled it twice from clean outputs with identical bytes. The resulting module was synchronized to the canonical curated snapshot at `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\soc_fan\soc_fan.ko`.

- Source SHA-256: `4ea8a7b3b09786454460405f3bcaac8c51342ae9c92ec6d31de2571634a408b1`
- `soc_fan.ko` SHA-256: `5554b8d8c1fb1183a5ea8807f97563690254a1ed1c3811affb1c470c2de7f54b` (289760 bytes)
- Docker cycle 1 and 2: `5554b8d8c1fb1183a5ea8807f97563690254a1ed1c3811affb1c470c2de7f54b` / `5554b8d8c1fb1183a5ea8807f97563690254a1ed1c3811affb1c470c2de7f54b`
- Kernel: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`; source volume revision `3356b35306d35d5a480e3b63df1a9f065b5d9f55`
- Compiler: `clang-r536225`; Docker image `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`

## Changes

- `nb_fan_probe`: `devm_regulator_get`, failure rollback of initialized timer, kobject, driver data and global chip pointer.
- `nb_fan_gpio_proc`: managed GPIO and threaded IRQ requests.
- `nb_fan_remove`: remove/drain sysfs, cancel the high-resolution timer, request fan shutdown, drain owned regulator enable references, clear driver data and global state, then let devres release IRQ/GPIO/regulator/memory.
- `fan_level_set` and `fan_speed_show`: route regulator enable/disable calls through stable `used`/`noinline` wrappers that track owned enable references.

## Audit interpretation

`driver_audit.json` reports `build.passed=true` and `reproducible=true`. Its overall status is `incomplete_or_failed` because the stock-parity checks correctly detect the intended changes to imported symbols and executable sections, and the five modified mappings have no independent review yet. The stock-parity auto-promoter therefore refused promotion. `candidate_sync.json` records the explicit synchronization of the reproducible hardened artifact; this is not a claim of stock-exact reconstruction or runtime equivalence.

The first two build attempts and their corrections are recorded in `lifecycle_hardening_review.json`.

## Remaining limits

- Independent review of this hardening branch is pending.
- No NX809J hardware validation or runtime equivalence proof was performed.
- If `regulator_disable` fails during teardown, the failure is logged and shutdown cannot be guaranteed.
- The pinned NX809J config has `CONFIG_OF_DYNAMIC=undef`, so OF get/put reference counting is compiled out for `nb_fan_parse_dt`; this conclusion does not apply to kernels built with `CONFIG_OF_DYNAMIC=y`. See `of_dynamic_config.json`.

## Evidence

- `driver_audit.json` and `driver_audit.md`: pinned-source identity, two build cycles, artifact and parity checks.
- `candidate_sync.json`: proof that the curated module hash equals the reproducible Docker artifact.
- `lifecycle_hardening_review.json`: Ghidra-backed change rationale, deviations and open questions.

## OF child reference check

The immutable NX809J build config reports `CONFIG_OF=y`, `CONFIG_OF_DYNAMIC=undef`, and `CONFIG_OF_OVERLAY=n`. In the matching kernel headers, `of_node_get()` returns the pointer unchanged and `of_node_put()` is empty when `CONFIG_OF_DYNAMIC` is not defined. The stock loop in `nb_fan_parse_dt` therefore does not leak dynamic node references in this target build. Hashes and scope are recorded in `of_dynamic_config.json`.
