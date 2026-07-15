#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/kernel_env.sh"

mkdir -p /work/src "$TOOLCHAIN_ROOT" "$ARTIFACTS_DIR" "$CACHE_DIR/ccache"

if [ ! -d "$KERNEL_ROOT/.git" ]; then
  git clone --filter=blob:none --no-checkout "$KERNEL_REPO" "$KERNEL_ROOT"
fi
git -C "$KERNEL_ROOT" fetch --no-tags origin "$KERNEL_COMMIT"
git -C "$KERNEL_ROOT" checkout --detach "$KERNEL_COMMIT"
test "$(git -C "$KERNEL_ROOT" rev-parse HEAD)" = "$KERNEL_COMMIT"

CLANG_MIRROR="$TOOLCHAIN_ROOT/aosp-clang.git"
if [ ! -d "$CLANG_MIRROR/.git" ]; then
  git clone --filter=blob:none --sparse \
    https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 \
    "$CLANG_MIRROR"
fi
git -C "$CLANG_MIRROR" sparse-checkout set "$CLANG_VERSION"
git -C "$CLANG_MIRROR" fetch --no-tags origin "$CLANG_REPO_COMMIT"
git -C "$CLANG_MIRROR" checkout --detach "$CLANG_REPO_COMMIT"
rsync -a --delete "$CLANG_MIRROR/$CLANG_VERSION/" "$CLANG_DIR/"

RUST_MIRROR="$TOOLCHAIN_ROOT/aosp-rust.git"
if [ ! -d "$RUST_MIRROR/.git" ]; then
  git clone --filter=blob:none --sparse \
    https://android.googlesource.com/platform/prebuilts/rust \
    "$RUST_MIRROR"
fi
git -C "$RUST_MIRROR" sparse-checkout set "linux-x86/$RUST_VERSION"
git -C "$RUST_MIRROR" fetch --no-tags origin "$RUST_REPO_COMMIT"
git -C "$RUST_MIRROR" checkout --detach "$RUST_REPO_COMMIT"
rsync -a --delete "$RUST_MIRROR/linux-x86/$RUST_VERSION/" "$RUST_DIR/"

echo "kernel=$(git -C "$KERNEL_ROOT" rev-parse HEAD)"
echo "clang_mirror=$(git -C "$CLANG_MIRROR" rev-parse HEAD)"
echo "rust_mirror=$(git -C "$RUST_MIRROR" rev-parse HEAD)"
"$CLANG_DIR/bin/clang" --version | head -n 1
"$RUST_DIR/bin/rustc" --version
