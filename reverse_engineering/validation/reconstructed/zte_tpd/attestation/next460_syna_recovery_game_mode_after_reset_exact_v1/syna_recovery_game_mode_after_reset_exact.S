/* SPDX-License-Identifier: GPL-2.0-only */

/* Offline lift of stock syna_recovery_game_mode_after_reset@0x00111bac. */
.text
.align 2
.type syna_recovery_game_mode_after_reset, %function
.word 0xae20471c
.global syna_recovery_game_mode_after_reset
syna_recovery_game_mode_after_reset:
	.inst 0xb5000060
	.inst 0x128002a0
	.inst 0xd65f03c0
	.inst 0xd503233f
	.inst 0xa9bd7bfd
	.inst 0xf9000bf5
	.inst 0xa9024ff4
	.inst 0x910003fd
	.inst 0xf9413809
	.inst 0xf9400008
	.inst 0xb102a13f
	.inst 0x540000e0
	.inst 0xb940b92a
	.inst 0x340000aa
	.inst 0x3942f129
	.inst 0x36000069
	.inst 0x2a1f03f3
	.inst 0x14000002
	.inst 0xb9420d13
	.inst 0xb945dc08
	.inst 0x35000148
	.inst 0xb945f801
	.inst 0x2a1303e2
	bl syna_dev_set_tp_report_rate
	adrp x19, .L_recovery_no_need
	add x19, x19, :lo12:.L_recovery_no_need
	.inst 0x36f80840
	adrp x0, .L_recovery_rate_error
	add x0, x0, :lo12:.L_recovery_rate_error
	.inst 0x1400003c
	adrp x8, .L_recovery_enter
	add x8, x8, :lo12:.L_recovery_enter
	adrp x1, .L_play_game_name
	add x1, x1, :lo12:.L_play_game_name
	.inst 0xaa0003f5
	.inst 0xaa0803e0
	.inst 0x52800022
	bl _printk
	.inst 0xf94002a0
	.inst 0x52801aa1
	.inst 0x52800062
	.inst 0x2a1303e3
	.inst 0xaa1503f4
	bl syna_tcm_set_dynamic_config
	.inst 0x36f800c0
	adrp x0, .L_recovery_game_error
	add x0, x0, :lo12:.L_recovery_game_error
	adrp x1, .L_recovery_name
	add x1, x1, :lo12:.L_recovery_name
	bl _printk
	.inst 0xb945fa81
	.inst 0xaa1403e0
	.inst 0x2a1303e2
	bl syna_dev_set_tp_report_rate
	.inst 0x36f800c0
	adrp x0, .L_recovery_rate_error
	add x0, x0, :lo12:.L_recovery_rate_error
	adrp x1, .L_recovery_name
	add x1, x1, :lo12:.L_recovery_name
	bl _printk
	.inst 0xb945fe81
	.inst 0xaa1403e0
	.inst 0x2a1303e2
	bl syna_dev_set_sensibility_level
	.inst 0x36f800c0
	adrp x0, .L_recovery_game_error
	add x0, x0, :lo12:.L_recovery_game_error
	adrp x1, .L_recovery_name
	add x1, x1, :lo12:.L_recovery_name
	bl _printk
	.inst 0xb9460281
	.inst 0xaa1403e0
	.inst 0x2a1303e2
	bl syna_dev_set_follow_hand_level
	.inst 0x36f800c0
	adrp x0, .L_recovery_game_error
	add x0, x0, :lo12:.L_recovery_game_error
	adrp x1, .L_recovery_name
	add x1, x1, :lo12:.L_recovery_name
	bl _printk
	.inst 0xb9460681
	.inst 0xaa1403e0
	.inst 0x2a1303e2
	bl syna_dev_set_stability_level
	adrp x19, .L_recovery_success
	add x19, x19, :lo12:.L_recovery_success
	.inst 0x36f800c0
	adrp x0, .L_recovery_game_error
	add x0, x0, :lo12:.L_recovery_game_error
	adrp x1, .L_recovery_name
	add x1, x1, :lo12:.L_recovery_name
	bl _printk
	adrp x1, .L_recovery_name
	add x1, x1, :lo12:.L_recovery_name
	.inst 0xaa1303e0
	bl _printk
	.inst 0x2a1f03e0
	.inst 0xa9424ff4
	.inst 0xf9400bf5
	.inst 0xa8c37bfd
	.inst 0xd50323bf
	.inst 0xd65f03c0
.size syna_recovery_game_mode_after_reset, .-syna_recovery_game_mode_after_reset

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_recovery_no_need:
	.asciz "\0016[info ] %s: no need to recovery game mode"
.L_recovery_rate_error:
	.asciz "\0013[error] %s: set tp_report_rate failed!"
.L_recovery_enter:
	.asciz "\0016[info ] %s: enter,state is %d\n"
.L_play_game_name:
	.asciz "syna_dev_set_play_game"
.L_recovery_game_error:
	.asciz "\0013[error] %s: set game mode failed!"
.L_recovery_name:
	.asciz "syna_recovery_game_mode_after_reset"
.L_recovery_success:
	.asciz "\0016[info ] %s: recovery game mode success!"
