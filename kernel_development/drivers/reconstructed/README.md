# Reconstructed NX809J drivers

This directory is a clean export of the local engineering workspace. It contains source, Makefiles, curated AArch64 modules, microtask plans and reconstruction maps. Kernel build objects and temporary Kbuild files are intentionally excluded.

The authoritative status is `STATUS_MANIFEST.json` at repository root and the per-driver evidence under `reverse_engineering/validation/reconstructed/`. A static PASS does not mean hardware validation or 100 percent behavioral equivalence. No driver in this export is authorized for automatic `insmod`.

Build with the Android 16 GKI 6.12.23 target, the matching `Module.symvers` and the Docker toolchain used by the local workspace. For `zte_reboot_ext`, also provide `vendor.Module.symvers` for the `qcom_q6v5` dependency.
