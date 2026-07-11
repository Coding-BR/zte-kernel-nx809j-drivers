#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/kernel_env.sh"

mkdir -p /work/src "$TOOLCHAIN_ROOT" "$ARTIFACTS_DIR" "$CACHE_DIR/ccache"

if [ ! -d "$KERNEL_ROOT/.git" ]; then
  echo "[bootstrap] Cloning kernel into Linux Docker volume: $KERNEL_ROOT"
  git clone --single-branch --branch "$KERNEL_BRANCH" "$KERNEL_REPO" "$KERNEL_ROOT"
else
  echo "[bootstrap] Kernel already exists. Updating branch $KERNEL_BRANCH"
  git -C "$KERNEL_ROOT" fetch origin "$KERNEL_BRANCH"
  git -C "$KERNEL_ROOT" checkout "$KERNEL_BRANCH"
  git -C "$KERNEL_ROOT" pull --ff-only origin "$KERNEL_BRANCH"
fi

if [ ! -x "$CLANG_DIR/bin/clang" ]; then
  echo "[bootstrap] Fetching Android Clang toolchain: $CLANG_VERSION"
  TMP_CLANG="$TOOLCHAIN_ROOT/aosp-clang.git"
  if [ ! -d "$TMP_CLANG/.git" ]; then
    git clone --filter=blob:none --sparse \
      https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 \
      "$TMP_CLANG"
  fi
  git -C "$TMP_CLANG" sparse-checkout set "$CLANG_VERSION"
  git -C "$TMP_CLANG" checkout main
  rsync -a --delete "$TMP_CLANG/$CLANG_VERSION/" "$CLANG_DIR/"
else
  echo "[bootstrap] Clang already exists: $CLANG_DIR"
fi

if [ ! -x "$RUST_DIR/bin/rustc" ]; then
  echo "[bootstrap] Fetching Android Rust toolchain: $RUST_VERSION"
  TMP_RUST="$TOOLCHAIN_ROOT/aosp-rust.git"
  if [ ! -d "$TMP_RUST/.git" ]; then
    git clone --filter=blob:none --sparse \
      https://android.googlesource.com/platform/prebuilts/rust \
      "$TMP_RUST"
  fi
  git -C "$TMP_RUST" sparse-checkout set "linux-x86/$RUST_VERSION"
  git -C "$TMP_RUST" checkout main
  rsync -a --delete "$TMP_RUST/linux-x86/$RUST_VERSION/" "$RUST_DIR/"
else
  echo "[bootstrap] Rust already exists: $RUST_DIR"
fi

echo "[bootstrap] Kernel commit:"
git -C "$KERNEL_ROOT" log -1 --oneline
echo "[bootstrap] Clang:"
"$CLANG_DIR/bin/clang" --version | head -n 1
echo "[bootstrap] Rust:"
"$RUST_DIR/bin/rustc" --version
