# Panel phandle reference review — `fp_goodix`

Review date: 2026-11-10  
Scope: `goodixfp_drm_get_pannel()` and the pinned NX809J kernel configuration.

## Result

No runtime device-tree reference leak is present in the pinned NX809J build. The kernel API documents that `of_parse_phandle()` returns a node with an incremented reference and asks callers to use `of_node_put()`. However, `CONFIG_OF_DYNAMIC` is unset in the effective Docker build configuration. Under that configuration, `include/linux/of.h` implements `of_node_put()` as an empty inline function, so there is no reference counter to accumulate.

`of_drm_find_panel()` only checks the supplied node and searches the panel list; it does not release the node reference. This confirms the ownership rule, but does not change the target-specific result above.

## Decision

No code change was made. The reconstructed function remains aligned with its current stock AArch64 body (336 bytes). If a future build enables `CONFIG_OF_DYNAMIC`, the source should call `of_node_put(panel_np)` immediately after `of_drm_find_panel(panel_np)`, followed by a fresh Docker build and parity review.

The phone was not available to ADB during this review (`adb devices -l` returned an empty device list), so no dynamic validation was performed.

## Evidence

- Reconstructed source: `kernel_development/drivers/reconstructed/fp_goodix/fp_goodix_core.c`, SHA-256 `ab516de7ada60a4d6798b4aeb9677615dc63ce07c817c633b9d4aa2ff936ee67`.
- Function map: `kernel_development/drivers/reconstructed/fp_goodix/reconstruction_map.json`, SHA-256 `a05e173658533934cddd6413dbe6d202283a4978c5e6ecc7b9449bb0c2594ed1`.
- Effective target config: `/work/src/kernel/.codex-kbuild/identity/.config`, SHA-256 `b3ca00186d0849f409e760297023cd3b198202656f216f5726704c05fa944288`; `CONFIG_OF_DYNAMIC` is unset.
- Kernel API header: `/work/src/kernel/kernel_platform/common/include/linux/of.h`, SHA-256 `0327bce1706869299f93cde91fe48573c694de9db41548a8360fe3952cf2abbc`.
- DRM panel implementation: `/work/src/kernel/kernel_platform/common/drivers/gpu/drm/drm_panel.c`, SHA-256 `1372b1c1fe342ead18d48ea1641373d90a30ef28405069cb7d04d3c0af810fa7`.
- Stock Ghidra output: `reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0014_00101c64_goodixfp_drm_get_pannel.c`.

