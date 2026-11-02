/* SPDX-License-Identifier: GPL-2.0-only */

/* Offline lift of stock syna_ts_check_dt@0x00111dc4. */
.text
.align 2
.type syna_ts_check_dt, %function
.word 0x2a703c0b
.global syna_ts_check_dt
syna_ts_check_dt:
	.inst 0xd503233f
	.inst 0xd10303ff
	.inst 0xa9067bfd
	.inst 0xa9076ffc
	.inst 0xa90867fa
	.inst 0xa9095ff8
	.inst 0xa90a57f6
	.inst 0xa90b4ff4
	.inst 0x910183fd
	.inst 0xd5384108
	.inst 0xaa0003f3
	adrp x1, .L_dt_panel
	add x1, x1, :lo12:.L_dt_panel
	.inst 0xf9438908
	.inst 0xaa1f03e2
	.inst 0xf81f83a8
	.inst 0xf9417400
	bl of_count_phandle_with_args
	.inst 0x7100041f
	.inst 0x5400070b
	.inst 0x2a0003f5
	.inst 0x2a1f03f6
	adrp x23, .L_dt_panel
	add x23, x23, :lo12:.L_dt_panel
	adrp x27, .L_dt_no_device
	add x27, x27, :lo12:.L_dt_no_device
	adrp x24, .L_dt_name
	add x24, x24, :lo12:.L_dt_name
	adrp x28, .L_dt_not_probed
	add x28, x28, :lo12:.L_dt_not_probed
	.inst 0x12800014
	adrp x25, .L_dt_device_node
	add x25, x25, :lo12:.L_dt_device_node
	.inst 0x14000009
	.inst 0x12800254
	.inst 0xaa1b03e0
	.inst 0xaa1803e1
	.inst 0xaa1803e2
	bl _printk
	.inst 0x110006d6
	.inst 0x6b1602bf
	.inst 0x540005c0
	.inst 0xf9417660
	.inst 0x910023e5
	.inst 0xaa1703e1
	.inst 0xaa1f03e2
	.inst 0x2a1f03e3
	.inst 0x2a1603e4
	.inst 0xa904ffff
	.inst 0xa903ffff
	.inst 0xa902ffff
	.inst 0xa901ffff
	.inst 0xa900ffff
	bl __of_parse_phandle_with_args
	.inst 0xf94007e8
	.inst 0x7100001f
	.inst 0x9a9f011a
	.inst 0xb500019a
	.inst 0xaa1a03e0
	bl of_drm_find_panel
	.inst 0xb140041f
	.inst 0x54000209
	.inst 0xb1004c1f
	.inst 0x54fffc60
	.inst 0xb108141f
	.inst 0x54fffcc1
	.inst 0x12804094
	.inst 0xaa1c03e0
	.inst 0x17ffffe0
	.inst 0xf9400343
	.inst 0xaa1903e0
	.inst 0xaa1803e1
	.inst 0xaa1803e2
	bl _printk
	.inst 0x17fffff0
	.inst 0x12800254
	.inst 0x1400000b
	.inst 0xf9400341
	adrp x8, DEVICE_NODE_NAME
	add x8, x8, :lo12:DEVICE_NODE_NAME
	.inst 0xaa0003f3
	.inst 0xaa0803e0
	.inst 0x52800c82
	bl strncpy
	adrp x8, active_panel
	.inst 0x2a1f03f4
	str x19, [x8, :lo12:active_panel]
	.inst 0xd5384108
	.inst 0xf9438908
	.inst 0xf85f83a9
	.inst 0xeb09011f
	.inst 0x54000161
	.inst 0x2a1403e0
	.inst 0xa94b4ff4
	.inst 0xa94a57f6
	.inst 0xa9495ff8
	.inst 0xa94867fa
	.inst 0xa9476ffc
	.inst 0xa9467bfd
	.inst 0x910303ff
	.inst 0xd50323bf
	.inst 0xd65f03c0
	bl __stack_chk_fail
.size syna_ts_check_dt, .-syna_ts_check_dt

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_dt_panel:
	.asciz "panel"
.L_dt_no_device:
	.asciz "\0016[info ] %s: %s: no device!"
.L_dt_name:
	.asciz "syna_ts_check_dt"
.L_dt_not_probed:
	.asciz "\0016[info ] %s: %s: device has not been probed yet"
.L_dt_device_node:
	.asciz "\0016[info ] %s: %s: node = %s"
