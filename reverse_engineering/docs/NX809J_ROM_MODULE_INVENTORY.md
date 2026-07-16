# NX809J ROM Kernel Module Inventory

> Static inventory only. A module is not considered reconstructed or hardware-validated merely because its stock binary was found.

## Provenance

- Device: `NX809J` / `REDMAGIC 11 Pro+`
- Kernel target: `Android 16 GKI 6.12.23`
- `vendor_boot.img` SHA-256: `475a44bf727e52eaef771eec239ef50354ca50599ff063e38e1702038843c33c`
- `system_dlkm_a.img` SHA-256: `7ad0c3baf9b520b4f9b71d1de1871459dce3d97a0669929433cf8f796bae6f7c`
- `vendor_dlkm_a.img` SHA-256: `1e1b32c751335c6430b761bc3d6ba10a4866359f6953d7a6f0e98f313758c99d`
- `super.img` was parsed as raw liblp metadata; geometry, header and table checksums were verified before extraction.

## Counts

| Source | `.ko` occurrences |
|---|---:|
| `system_dlkm` | 103 |
| `vendor_boot` | 335 |
| `vendor_dlkm` | 305 |
| **Total occurrences** | **743** |

There are **517 unique module filenames** and **519 unique binary hashes**. The inventory contains 224 exact duplicate groups and 2 filenames with differing binaries across sources.

## ZTE/Nubia Target Delta

The strict name-based ZTE/Nubia set contains **17 modules**. A matching candidate `.ko` exists for **17**; **0** have no candidate binary yet. This is only a filesystem inventory, not a parity verdict.

| Module | Sources | Reconstruction | Direct dependencies |
|---|---|---|---|
| `gpio_keys_nubia.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `nubia_hw_version.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `zlog_common.ko` | `vendor_boot`, `vendor_dlkm` | `present` | `zlog_exception` |
| `zlog_exception.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `zlog_test.ko` | `vendor_boot`, `vendor_dlkm` | `present` | `zlog_common`, `zte_misc` |
| `zte_charger_policy.ko` | `vendor_boot`, `vendor_dlkm` | `present` | `zte_misc`, `zte_power_supply` |
| `zte_fingerprint.ko` | `vendor_boot`, `vendor_dlkm` | `present` | `panel_event_notifier`, `zlog_common` |
| `zte_imem_info.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `zte_ir.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `zte_led.ko` | `vendor_boot`, `vendor_dlkm` | `present` | `zlog_common` |
| `zte_misc.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `zte_power_supply.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `zte_ramdisk_reboot.ko` | `vendor_boot` | `present` | none |
| `zte_reboot_ext.ko` | `vendor_boot`, `vendor_dlkm` | `present` | `qcom_q6v5` |
| `zte_sensor_sensitivity.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `zte_stats_info.ko` | `vendor_boot`, `vendor_dlkm` | `present` | none |
| `zte_tpd.ko` | `vendor_boot`, `vendor_dlkm` | `present` | `kmparam`, `panel_event_notifier`, `zlog_common` |

## Device-Vendor Review Queue

These **12 modules** were selected only by conservative filename triage. They may provide hardware or dependency clues, but must not be labelled ZTE proprietary until assembly, strings, aliases, DT bindings and local source coverage are audited.

| Module | Sources | Reconstruction |
|---|---|---|
| `aw86320.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `aw9620x.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `awp1921.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `dmesg_dumper.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `fp_goodix.ko` | `vendor_boot`, `vendor_dlkm` | `present` |
| `ftmmod.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `haptic_86938.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `nb7vpq904m.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `rdbg.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `soc_fan.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `st54jese.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |
| `st54jnfc.ko` | `vendor_boot`, `vendor_dlkm` | `not_started` |

## Scope Rule

1. Reconstruct the strict ZTE/Nubia set first, preserving Assembly, Ghidra P-Code, pseudocode, relocations, KCFI and per-function microtasks.
2. Audit the device-vendor queue against the local kernel source and Device Tree before creating a reconstruction target.
3. Keep platform/standard modules in the dependency corpus. Do not rewrite them when the pinned local source already reproduces their behavior.
4. Treat every status as incomplete until static parity and the mandatory controlled runtime protocol both pass.
5. Use `reverse_engineering/validation/CUSTOM_DRIVER_DEPENDENCY_STATUS.md` for source-map, assembly and cross-driver blocker state; this inventory intentionally does not collapse those gates.
