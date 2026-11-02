# Reconstructed NX809J drivers

This directory is a clean export of the local engineering workspace. It contains source, Makefiles, curated AArch64 modules, microtask plans and reconstruction maps. Kernel build objects and temporary Kbuild files are intentionally excluded.

The authoritative status is `STATUS_MANIFEST.json` at repository root and the per-driver evidence under `reverse_engineering/validation/reconstructed/`. A static PASS does not mean hardware validation or 100 percent behavioral equivalence. No driver in this export is authorized for automatic `insmod`.

The latest canonical Docker inventory is `reverse_engineering/validation/reconstructed/all_drivers_inventory_20261102.md`: all 24 curated drivers passed the offline static build gates with two clean builds each. Hardware remains unverified, and this result does not promote a driver to behavioral equivalence or a 100 percent reconstruction claim.

Build with the Android 16 GKI 6.12.23 target, the matching `Module.symvers` and the Docker toolchain used by the local workspace. For `zte_reboot_ext`, also provide `vendor.Module.symvers` for the `qcom_q6v5` dependency.
