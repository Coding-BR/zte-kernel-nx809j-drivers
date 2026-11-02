
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000092e8 <aw9620x_update_fw_get>:
    92e8: d503233f     	paciasp
    92ec: d100c3ff     	sub	sp, sp, #0x30
    92f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    92f4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    92f8: 910043fd     	add	x29, sp, #0x10
    92fc: d5384108     	mrs	x8, SP_EL0
    9300: aa0203f3     	mov	x19, x2
    9304: 910013e2     	add	x2, sp, #0x4
    9308: f9438908     	ldr	x8, [x8, #0x710]
    930c: 52834201     	mov	w1, #0x1a10             // =6672
    9310: f90007e8     	str	x8, [sp, #0x8]
    9314: f9404c14     	ldr	x20, [x0, #0x98]
    9318: b90007ff     	str	wzr, [sp, #0x4]
    931c: d100e280     	sub	x0, x20, #0x38
    9320: 97ffe9f8     	bl	0x3b00 <aw9620x_i2c_read>
    9324: 37f80240     	tbnz	w0, #0x1f, 0x936c <aw9620x_update_fw_get+0x84>
    9328: b94007e3     	ldr	w3, [sp, #0x4]
    932c: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000932c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32cd
    9330: 91000042     	add	x2, x2, #0x0
		0000000000009330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32cd
    9334: aa1303e0     	mov	x0, x19
    9338: 52820001     	mov	w1, #0x1000             // =4096
    933c: 94000000     	bl	0x933c <aw9620x_update_fw_get+0x54>
		000000000000933c:  R_AARCH64_CALL26	snprintf
    9340: d5384108     	mrs	x8, SP_EL0
    9344: f9438908     	ldr	x8, [x8, #0x710]
    9348: f94007e9     	ldr	x9, [sp, #0x8]
    934c: eb09011f     	cmp	x8, x9
    9350: 54000221     	b.ne	0x9394 <aw9620x_update_fw_get+0xac>
    9354: 93407c00     	sxtw	x0, w0
    9358: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    935c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9360: 9100c3ff     	add	sp, sp, #0x30
    9364: d50323bf     	autiasp
    9368: d65f03c0     	ret
    936c: f85f8281     	ldur	x1, [x20, #-0x8]
    9370: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    9374: 91000000     	add	x0, x0, #0x0
		0000000000009374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    9378: 90000002     	adrp	x2, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b40
    937c: 91000042     	add	x2, x2, #0x0
		000000000000937c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b40
    9380: 90000003     	adrp	x3, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c2c
    9384: 91000063     	add	x3, x3, #0x0
		0000000000009384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c2c
    9388: 5281bea4     	mov	w4, #0xdf5              // =3573
    938c: 94000000     	bl	0x938c <aw9620x_update_fw_get+0xa4>
		000000000000938c:  R_AARCH64_CALL26	_dev_printk
    9390: 17ffffe6     	b	0x9328 <aw9620x_update_fw_get+0x40>
    9394: 94000000     	bl	0x9394 <aw9620x_update_fw_get+0xac>
		0000000000009394:  R_AARCH64_CALL26	__stack_chk_fail
