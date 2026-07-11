#!/usr/bin/env bash
set -euo pipefail

export KERNEL_REPO="${KERNEL_REPO:-https://github.com/Coding-BR/android_kernel_nubia_sm8850_qwjujube.git}"
export KERNEL_BRANCH="${KERNEL_BRANCH:-main}"
export KERNEL_ROOT="${KERNEL_ROOT:-/work/src/kernel}"
export TOOLCHAIN_ROOT="${TOOLCHAIN_ROOT:-/work/toolchains}"
export CLANG_VERSION="${CLANG_VERSION:-clang-r536225}"
export CLANG_DIR="${CLANG_DIR:-$TOOLCHAIN_ROOT/$CLANG_VERSION}"
export RUST_VERSION="${RUST_VERSION:-1.82.0}"
export RUST_DIR="${RUST_DIR:-$TOOLCHAIN_ROOT/rust-$RUST_VERSION}"
export ARTIFACTS_DIR="${ARTIFACTS_DIR:-/work/artifacts}"
export CACHE_DIR="${CACHE_DIR:-/work/cache}"

export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-
export CLANG_TRIPLE=aarch64-linux-gnu-
export CC=clang
export ZTE_BOARD_NAME=qwjujube

export PATH="$RUST_DIR/bin:$CLANG_DIR/bin:/work/prebuilts/kernel-build-tools/linux-x86/bin:$PATH"
