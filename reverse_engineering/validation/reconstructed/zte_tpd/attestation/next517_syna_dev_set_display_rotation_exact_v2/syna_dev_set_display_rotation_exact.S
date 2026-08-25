/* SPDX-License-Identifier: GPL-2.0-only */

/* Offline lift of stock syna_dev_set_display_rotation@0x00111a30. */
.text
.align 2
.type syna_dev_set_display_rotation, %function
.word 0x1eb3b73d
.global syna_dev_set_display_rotation
syna_dev_set_display_rotation:
	.inst 0xd503233f
	.inst 0xa9bc7bfd
	.inst 0xf9000bf7
	.inst 0xa90257f6
	.inst 0xa9034ff4
	.inst 0x910003fd
	.inst 0x2a0103f3
	.inst 0x2a0203f4
	.inst 0xaa0003f5
	.inst 0xb9460c16
	adrp x0, .L_rotation_enter
	add x0, x0, :lo12:.L_rotation_enter
	adrp x1, .L_rotation_name
	add x1, x1, :lo12:.L_rotation_name
	.inst 0x2a1303e2
	bl _printk
	.inst 0xb4000555
	.inst 0x710002df
	.inst 0x52800068
	.inst 0xf94002a0
	.inst 0x1a8803f7
	.inst 0x528016c1
	.inst 0x2a1403e3
	.inst 0x2a1703e2
	bl syna_tcm_set_dynamic_config
	.inst 0x37f80440
	adrp x0, .L_rotation_edge
	add x0, x0, :lo12:.L_rotation_edge
	adrp x1, .L_rotation_name
	add x1, x1, :lo12:.L_rotation_name
	.inst 0x2a1703e2
	bl _printk
	.inst 0xf94002a0
	.inst 0x528016a1
	.inst 0x2a1603e2
	.inst 0x2a1403e3
	bl syna_tcm_set_dynamic_config
	.inst 0x37f802c0
	adrp x0, .L_rotation_game
	add x0, x0, :lo12:.L_rotation_game
	adrp x1, .L_rotation_name
	add x1, x1, :lo12:.L_rotation_name
	.inst 0x2a1603e2
	bl _printk
	.inst 0xf94002a0
	.inst 0x52801681
	.inst 0x2a1303e2
	.inst 0x2a1403e3
	bl syna_tcm_set_dynamic_config
	.inst 0x37f80140
	adrp x0, .L_rotation_mrotation
	add x0, x0, :lo12:.L_rotation_mrotation
	adrp x1, .L_rotation_name
	add x1, x1, :lo12:.L_rotation_name
	.inst 0x2a1303e2
	bl _printk
	.inst 0x2a1f03e0
	.inst 0x14000002
	.inst 0x128002a0
	.inst 0xa9434ff4
	.inst 0xf9400bf7
	.inst 0xa94257f6
	.inst 0xa8c47bfd
	.inst 0xd50323bf
	.inst 0xd65f03c0
.size syna_dev_set_display_rotation, .-syna_dev_set_display_rotation

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_rotation_enter:
	.asciz "\0016[info ] %s: set display_rotation state %d\n"
.L_rotation_name:
	.asciz "syna_dev_set_display_rotation"
.L_rotation_edge:
	.asciz "\0016[info ] %s: success set edge suppression, enable_grip is %d"
.L_rotation_game:
	.asciz "\0016[info ] %s: success set game suppression level is %d"
.L_rotation_mrotation:
	.asciz "\0016[info ] %s: success set mrotation is %d"
