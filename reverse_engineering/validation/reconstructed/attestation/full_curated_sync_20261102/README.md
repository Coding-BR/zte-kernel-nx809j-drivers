# NX809J reconstructed drivers — full Docker snapshot audit (2026-11-02)

## Scope and synchronized state

The repository inventory contains 24 stock modules, 24 reconstructed candidate modules, and 1,039 Ghidra function identities. The full tree is now synchronized to `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated`: all 24 source trees, reconstruction maps, and candidate `.ko` files match the repository. `inventory_after_sync.json` confirms 24/24 matches for build inputs, source snapshots, maps, and candidate modules, with no structural findings. Per-driver hash sync manifests are in this directory.

Every map now declares `candidate_sha256` matching its current candidate module.

## Five stale module refreshes

The initial 24-driver Docker audit found five candidate modules whose executable code matched current source, but whose embedded `__FILE__` string still used `/zte_tpd/<file>` instead of the stable per-driver prefix. Relocations shifted with those strings. Each driver was rebuilt twice with the pinned Docker image/toolchain; the cycles matched, the fresh candidate passed module/ABI/KMI checks, and its repository map was bound to the fresh SHA-256. The same sources, maps, and binaries were then synced to `engenharia\curated` and rebuilt there. Both audits report `static_verified` for all five.

| Driver | Previous candidate SHA-256 | Refreshed SHA-256 |
|---|---|---|
| `zlog_exception` | `a38b3fccb92c47ab8203821ae7f9f67d5d1529577512cbafe61d2e6fa75038f5` | `13362b3bf56c500de39cc26615323c0b55e55c31ed4cc3c3c2c9d0817af22c5c` |
| `zte_charger_policy` | `a4cafab57294e8497599b03ace4a6ba6bdd557ddaf0e7311bb7ae4c2c922128e` | `1dc77ef1d5755fb218d9fcffefd6b078ca0ffcca679cffa6aff4029c184442c4` |
| `zte_power_supply` | `07b2c6c8e4f770e7e3e15762fb280db0b3bfd67a1656579368426b2ff32d355f` | `31d11d8b944d2a2492291173b7bbb3c525e4ffdd868dca30c6d75d5535a6abca` |
| `zte_sensor_sensitivity` | `5eb72ceeb4093627b3f3a720f90e1f71e2d3357c08e4daca8641576ae8efbffa` | `0a026041dc5dbff0d0ef21881398cdb2bd943b51b683d797a7c8b6eb80566d45` |
| `zte_stats_info` | `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54` | `62e8d2607d53dd8079bff1340aac4381450599ddc7ed46ab9e2a12794f4f22c1` |

The before/after audits and curated sync reports are under `../module_refresh_20261102/`. The pre-refresh all-driver audit is `repository_source_audit_before_refresh.json`.

## Full external Docker rebuild result

`docker_audit_24_drivers.json` is the final audit of all 24 drivers from the Docker engineering snapshot. Each module had two clean builds with the pinned image, kernel source, toolchain, bindgen, and Clang revision. The result is **19 `static_verified`**, four with only independent mapping review pending (`ftmmod`, `haptic_86938`, `rdbg`, `soc_fan`), and one candidate content mismatch (`zte_tpd`). No hardware validation was performed. The audit intentionally leaves those five drivers incomplete.

For `zte_tpd`, the old candidate hash still matches its map, but does not match the fresh Docker output. The `.text` section has the same length but different bytes; `.init.eh_frame` changes from 6,168 to 6,232 bytes, and two allocated string sections also change. Do not promote that build until the changed function bodies and source-to-symbol mapping are reviewed. The full report contains section and build details.
