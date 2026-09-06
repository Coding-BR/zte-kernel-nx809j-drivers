/* SPDX-License-Identifier: GPL-2.0-only */

/* Offline lift of stock syna_dev_set_follow_hand_level@0x00111718.
 * The opcode/relocation surface is checked against the stock module.
 */
.text
.align 2
.type syna_dev_set_follow_hand_level, %function
	.word 0x1eb3b73d
.global syna_dev_set_follow_hand_level
syna_dev_set_follow_hand_level:
	.inst 0xd503233f
	.inst 0xa9bd7bfd
	.inst 0xf9000bf5
	.inst 0xa9024ff4
	.inst 0x910003fd
	.inst 0x2a0103f5
	adrp x1, .L_follow_name
	add x1, x1, :lo12:.L_follow_name
	.inst 0x2a0203f3
	.inst 0xaa0003f4
	adrp x0, .L_follow_enter
	add x0, x0, :lo12:.L_follow_enter
	.inst 0xaa0103e2
	bl _printk
	.inst 0xb40002f4
	.inst 0x710006bf
	adrp x0, .L_follow_unsupported
	add x0, x0, :lo12:.L_follow_unsupported
	.inst 0x540002ad
	.inst 0x71000abf
	.inst 0x54000440
	.inst 0x71000ebf
	.inst 0x540006e0
	.inst 0x710012bf
	.inst 0x54000801
	.inst 0xb9460688
	.inst 0xb945fe89
	.inst 0x52801f21
	.inst 0xf9400280
	.inst 0x2a1303e3
	.inst 0x2a082128
	.inst 0x321a0102
	bl syna_tcm_set_dynamic_config
	.inst 0x37f80780
	adrp x0, .L_follow_success_4
	add x0, x0, :lo12:.L_follow_success_4
	.inst 0x14000034
	.inst 0x128002a0
	.inst 0x14000037
	.inst 0x34000375
	.inst 0x710006bf
	.inst 0x540005e1
	.inst 0xb9460688
	.inst 0xb945fe89
	.inst 0x52801f21
	.inst 0xf9400280
	.inst 0x2a1303e3
	.inst 0x2a082128
	.inst 0x321c0102
	bl syna_tcm_set_dynamic_config
	.inst 0x37f80560
	adrp x0, .L_follow_success_1
	add x0, x0, :lo12:.L_follow_success_1
	.inst 0x14000023
	.inst 0xb9460688
	.inst 0xb945fe89
	.inst 0x52801f21
	.inst 0xf9400280
	.inst 0x2a1303e3
	.inst 0x2a082128
	.inst 0x321b0102
	bl syna_tcm_set_dynamic_config
	.inst 0x37f803e0
	adrp x0, .L_follow_success_2
	add x0, x0, :lo12:.L_follow_success_2
	.inst 0x14000017
	.inst 0xb9460688
	.inst 0xb945fe89
	.inst 0x52801f21
	.inst 0xf9400280
	.inst 0x2a1303e3
	.inst 0x2a082122
	bl syna_tcm_set_dynamic_config
	.inst 0x37f80280
	adrp x0, .L_follow_success_0
	add x0, x0, :lo12:.L_follow_success_0
	.inst 0x1400000c
	.inst 0xb9460688
	.inst 0xb945fe89
	.inst 0x52801f21
	.inst 0xf9400280
	.inst 0x2a1303e3
	.inst 0x2a082128
	.inst 0x321c0502
	bl syna_tcm_set_dynamic_config
	.inst 0x37f80100
	adrp x0, .L_follow_success_3
	add x0, x0, :lo12:.L_follow_success_3
	adrp x1, .L_follow_name
	add x1, x1, :lo12:.L_follow_name
	.inst 0xaa0103e2
	bl _printk
	.inst 0x2a1f03e0
	.inst 0xa9424ff4
	.inst 0xf9400bf5
	.inst 0xa8c37bfd
	.inst 0xd50323bf
	.inst 0xd65f03c0
.size syna_dev_set_follow_hand_level, .-syna_dev_set_follow_hand_level

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_follow_name:
	.asciz "syna_dev_set_follow_hand_level"
.L_follow_enter:
	.asciz "\0016[info ] %s: %s: enter\n"
.L_follow_unsupported:
	.asciz "\0013[error] %s: %s: enable not support"
.L_follow_success_4:
	.asciz "\0016[info ] %s: %s success in follow_hand_level_4"
.L_follow_success_1:
	.asciz "\0016[info ] %s: %s success in follow_hand_level_1"
.L_follow_success_2:
	.asciz "\0016[info ] %s: %s success in follow_hand_level_2"
.L_follow_success_0:
	.asciz "\0016[info ] %s: %s success in follow_hand_level_0"
.L_follow_success_3:
	.asciz "\0016[info ] %s: %s success in follow_hand_level_3"
