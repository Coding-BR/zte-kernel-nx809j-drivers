/* SPDX-License-Identifier: GPL-2.0-only */
/* Compile-only probe: all validation is performed by header static_asserts. */

#include "zte_ir_abi.h"
#include "zte_ir_driver_state.h"
#include "zte_ir_layout.h"
#include "zte_ir_runtime.h"

static zte_ir_write_signature *const checked_write_signature __maybe_unused;
static zte_ir_ioctl_signature *const checked_ioctl_signature __maybe_unused;
static zte_ir_open_signature *const checked_open_signature __maybe_unused;
static zte_ir_release_signature *const checked_release_signature __maybe_unused;
static zte_ir_probe_signature *const checked_probe_signature __maybe_unused;
static zte_ir_remove_signature *const checked_remove_signature __maybe_unused;
static zte_ir_init_signature *const checked_init_signature __maybe_unused;
static zte_ir_exit_signature *const checked_exit_signature __maybe_unused;
