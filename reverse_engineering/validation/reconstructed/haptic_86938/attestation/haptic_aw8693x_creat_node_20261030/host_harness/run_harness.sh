#!/bin/sh
set -eu

repo=/repo
evidence=/evidence
binary="$(mktemp /tmp/aw8693x-creat-node.XXXXXX)"
trap 'rm -f "$binary"' EXIT HUP INT TERM

gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror \
	-fsanitize=address,undefined -fno-omit-frame-pointer \
	-I"$evidence/host_harness/include" \
	-I"$repo/kernel_development/drivers/reconstructed/haptic_86938" \
	"$evidence/host_harness/aw8693x_creat_node_harness.c" \
	-o "$binary"

ASAN_OPTIONS=detect_leaks=1:strict_string_checks=1 \
UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1 \
	"$binary"
