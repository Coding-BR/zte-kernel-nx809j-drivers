#!/usr/bin/env bash
set -euo pipefail

repo=/work
harness="$repo/reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_cont_store_20261030/host_harness"
driver="$repo/kernel_development/drivers/reconstructed/haptic_86938"
binary=/tmp/cont_store_harness

gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror \
  -fsanitize=address,undefined -fno-omit-frame-pointer \
  -I "$harness/include" -I "$driver" \
  "$harness/cont_store_harness.c" \
  "$driver/haptic_86938_fn_130_cont_store.c" -o "$binary"

ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 \
UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1 \
  "$binary"
