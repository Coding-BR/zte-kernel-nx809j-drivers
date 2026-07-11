#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/kernel_env.sh"

"$SCRIPT_DIR/bootstrap.sh"

cd "$KERNEL_ROOT"
chmod +x super_build.sh repack_perfect_sign.sh 2>/dev/null || true

KERNEL_DIR="$KERNEL_ROOT/kernel_platform/common"
DEVICE_CONFIG="${DEVICE_CONFIG:-}"
if [ -z "$DEVICE_CONFIG" ]; then
  DEVICE_CONFIG="$(find "$ARTIFACTS_DIR" -path '*/device-userdebug-logs-*/kernel_config.txt' -type f | sort | tail -n 1 || true)"
fi

LOG_DIR="$ARTIFACTS_DIR/logs"
mkdir -p "$LOG_DIR"
BUILD_LOG="$LOG_DIR/build-$(date +%Y%m%d-%H%M%S).log"
echo "[build] Writing log to $BUILD_LOG"

{
  echo "[build] Started at $(date -Is)"
  echo "[build] Repo: $KERNEL_REPO"
  echo "[build] Branch: $KERNEL_BRANCH"
  echo "[build] Commit: $(git rev-parse HEAD)"
  echo "[build] Clang: $("$CLANG_DIR/bin/clang" --version | head -n 1)"
  echo "[build] Rust: $("$RUST_DIR/bin/rustc" --version 2>/dev/null || true)"
  echo "[build] Device config: ${DEVICE_CONFIG:-none}"

  export RUSTC="${RUSTC:-$(command -v rustc || true)}"
  export BINDGEN="${BINDGEN:-$(command -v bindgen || true)}"
  RUST_SYSROOT="$(rustc --print sysroot 2>/dev/null || true)"
  if [ -d "$RUST_SYSROOT/lib/rustlib/src/rust/library" ]; then
    export RUST_LIB_SRC="$RUST_SYSROOT/lib/rustlib/src/rust/library"
  fi

  if [ -n "$DEVICE_CONFIG" ] && [ -f "$DEVICE_CONFIG" ]; then
    echo "[build] Applying device-extracted config"
    cp "$DEVICE_CONFIG" "$KERNEL_DIR/.config"
  else
    echo "[build] Applying nx809j_defconfig fallback"
    make -C "$KERNEL_DIR" LLVM=1 LLVM_IAS=1 nx809j_defconfig
  fi

  make -C "$KERNEL_DIR" LLVM=1 LLVM_IAS=1 olddefconfig
  "$KERNEL_DIR/scripts/config" --file "$KERNEL_DIR/.config" \
    --disable KSU \
    --disable KSU_DEBUG \
    --disable KSU_DISABLE_MANAGER \
    --disable KSU_DISABLE_POLICY
  make -C "$KERNEL_DIR" LLVM=1 LLVM_IAS=1 olddefconfig

  if grep -q '^CONFIG_UNUSED_KSYMS_WHITELIST="abi_symbollist.raw"' "$KERNEL_DIR/.config"; then
    cp "$KERNEL_ROOT/kernel/prebuilts/6.12/arm64/abi_symbollist.raw" "$KERNEL_DIR/abi_symbollist.raw"
    VENDOR_MODULE_COUNT="$(find "$ARTIFACTS_DIR" -type f -name '*.ko' \
      \( -path '*/device-userdebug-logs-*/*' -o -path '*/vendor_boot_ramdisk/extract/*' \) \
      | wc -l)"
    if [ "$VENDOR_MODULE_COUNT" -gt 0 ]; then
      echo "[build] Extending ABI symbol list from $VENDOR_MODULE_COUNT stock/vendor_boot modules"
      TMP_VENDOR_SYMS="$(mktemp)"
      find "$ARTIFACTS_DIR" -type f -name '*.ko' \
        \( -path '*/device-userdebug-logs-*/*' -o -path '*/vendor_boot_ramdisk/extract/*' \) \
        -print0 \
        | xargs -0 -r "$CLANG_DIR/bin/llvm-nm" -u 2>/dev/null \
        | awk '
            /^[[:space:]]*U[[:space:]]+/ { print $2; next }
            / U / { print $NF; next }
          ' \
        | sed -E 's/^[[:space:]]+|[[:space:]]+$//g' \
        | grep -E '^[A-Za-z_][A-Za-z0-9_]*$' \
        | grep -Ev '^(__this_module|_GLOBAL_OFFSET_TABLE_|module_layout)$' \
        | sort -u > "$TMP_VENDOR_SYMS"
      {
        echo gunyah_rm_call
        echo gunyah_rm_get
        echo gunyah_rm_notifier_register
        echo gunyah_rm_notifier_unregister
        echo gunyah_rm_put
      } >> "$TMP_VENDOR_SYMS"
      sort -u -o "$TMP_VENDOR_SYMS" "$TMP_VENDOR_SYMS"
      cat "$KERNEL_DIR/abi_symbollist.raw" "$TMP_VENDOR_SYMS" | sort -u > "$KERNEL_DIR/abi_symbollist.raw.merged"
      mv "$KERNEL_DIR/abi_symbollist.raw.merged" "$KERNEL_DIR/abi_symbollist.raw"
      echo "[build] Added $(wc -l < "$TMP_VENDOR_SYMS") vendor module symbol references to abi_symbollist.raw"
      rm -f "$TMP_VENDOR_SYMS"
    else
      echo "[build] No stock/vendor_boot module dump found; using prebuilt ABI symbol list only"
    fi
  fi
  if grep -q '^CONFIG_MODULE_SIG_PROTECT_LIST="protected_module_names_list"' "$KERNEL_DIR/.config"; then
    touch "$KERNEL_DIR/protected_module_names_list"
  fi

  export KBUILD_BUILD_USER=kleaf
  export KBUILD_BUILD_HOST=build-host
  export KBUILD_BUILD_VERSION=1
  export KBUILD_BUILD_TIMESTAMP="Wed Jul  9 10:22:53 UTC 2025"

  make -C "$KERNEL_DIR" -j"$(nproc)" LLVM=1 LLVM_IAS=1 KBUILD_MODPOST_WARN=1 KERNELRELEASE="6.12.23-android16-5-gf1bdb13583da-ab13761046-4k" Image vmlinux modules dtbs
} 2>&1 | tee "$BUILD_LOG"

OUT_DIR="$ARTIFACTS_DIR/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$OUT_DIR"

copy_if_exists() {
  local src="$1"
  local dest="$2"
  if [ -e "$src" ]; then
    mkdir -p "$(dirname "$dest")"
    cp -a "$src" "$dest"
    echo "[artifact] $dest"
  fi
}

copy_if_exists "$KERNEL_ROOT/kernel_platform/common/arch/arm64/boot/Image" "$OUT_DIR/Image"
copy_if_exists "$KERNEL_ROOT/kernel_platform/common/vmlinux" "$OUT_DIR/vmlinux"
copy_if_exists "$KERNEL_ROOT/kernel_platform/common/.config" "$OUT_DIR/kernel.config"
copy_if_exists "$KERNEL_ROOT/kernel_platform/common/drivers/soc/qcom/zte/zte_tpd/zte_tpd.ko" "$OUT_DIR/zte_tpd.ko"
copy_if_exists "$KERNEL_ROOT/vendor/qcom/opensource/zte-drivers/zte_stats_info/zte_stats_info_custom.ko" "$OUT_DIR/zte_stats_info_custom.ko"
copy_if_exists "$KERNEL_ROOT/vendor/qcom/opensource/zte-drivers/zte_imem_info/zte_imem_info.ko" "$OUT_DIR/zte_imem_info.ko"
copy_if_exists "$KERNEL_ROOT/vendor/qcom/opensource/zte-drivers/zte_ir/zte_ir.ko" "$OUT_DIR/zte_ir.ko"


DTS_DIR="$KERNEL_ROOT/kernel_platform/common/arch/arm64/boot/dts"
if [ -d "$DTS_DIR" ]; then
  mkdir -p "$OUT_DIR/dtbs"
  (
    cd "$DTS_DIR"
    find . -type f \( -name '*.dtb' -o -name '*.dtbo' \) -exec cp --parents -t "$OUT_DIR/dtbs" {} +
  ) 2>/dev/null || true
fi

if [ -f "$KERNEL_ROOT/dtb.img" ]; then
  echo "[build] dtb.img found. Running repack_perfect_sign.sh"
  ./repack_perfect_sign.sh 2>&1 | tee -a "$BUILD_LOG"
  copy_if_exists "$KERNEL_ROOT/dev_reverse_perfect.img" "$OUT_DIR/dev_reverse_perfect.img"
  copy_if_exists "$KERNEL_ROOT/zte_custom_drivers.zip" "$OUT_DIR/zte_custom_drivers.zip"
else
  echo "[build] dtb.img not found in repo root. Skipping boot image repack."
fi

STOCK_BOOT="${STOCK_BOOT_IMG:-}"
if [ -z "$STOCK_BOOT" ]; then
  for candidate in "$ARTIFACTS_DIR/stock_boot_current.img" "$ARTIFACTS_DIR/stock_boot_a.img" "$ARTIFACTS_DIR/stock_boot_b.img"; do
    if [ -f "$candidate" ]; then
      STOCK_BOOT="$candidate"
      break
    fi
  done
fi
if [ -f "$STOCK_BOOT" ] && [ -f "/work/scripts/make_boot_variants.py" ]; then
  echo "[build] Stock boot image found: $STOCK_BOOT"
  echo "[build] Generating no-DTB stock-cmdline boot variants."
  STOCK_BOOT_IMG="$STOCK_BOOT" BOOT_VARIANT_OUT_DIR="$OUT_DIR" python3 /work/scripts/make_boot_variants.py 2>&1 | tee -a "$BUILD_LOG"
fi

if [ "${PUBLISH_GITHUB_RELEASE:-0}" = "1" ]; then
  if [ -z "${GITHUB_TOKEN:-${GH_TOKEN:-}}" ]; then
    echo "[release] GITHUB_TOKEN/GH_TOKEN is required when PUBLISH_GITHUB_RELEASE=1" >&2
    exit 2
  fi
  if [ ! -f "$KERNEL_ROOT/scripts/publish_local_release.py" ]; then
    echo "[release] Missing $KERNEL_ROOT/scripts/publish_local_release.py. Pull the latest kernel repo first." >&2
    exit 2
  fi
  echo "[release] Publishing successful local build to GitHub Releases"
  python3 "$KERNEL_ROOT/scripts/publish_local_release.py" "$OUT_DIR" --build-log "$BUILD_LOG"
fi

echo "[build] Done. Artifacts: $OUT_DIR"
