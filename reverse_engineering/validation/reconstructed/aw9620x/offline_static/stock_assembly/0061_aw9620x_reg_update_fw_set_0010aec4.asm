
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009644 <aw9620x_reg_update_fw_set>:
    9644: d503233f     	paciasp
    9648: d10103ff     	sub	sp, sp, #0x40
    964c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9650: a90257f6     	stp	x22, x21, [sp, #0x20]
    9654: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9658: 910043fd     	add	x29, sp, #0x10
    965c: d5384109     	mrs	x9, SP_EL0
    9660: aa0203e8     	mov	x8, x2
    9664: 910013e2     	add	x2, sp, #0x4
    9668: f9438929     	ldr	x9, [x9, #0x710]
    966c: 2a1f03e1     	mov	w1, wzr
    9670: aa0303f3     	mov	x19, x3
    9674: f90007e9     	str	x9, [sp, #0x8]
    9678: f9404c15     	ldr	x21, [x0, #0x98]
    967c: aa0803e0     	mov	x0, x8
    9680: b90007ff     	str	wzr, [sp, #0x4]
    9684: 94000000     	bl	0x9684 <aw9620x_reg_update_fw_set+0x40>
		0000000000009684:  R_AARCH64_CALL26	kstrtoint
    9688: 35000340     	cbnz	w0, 0x96f0 <aw9620x_reg_update_fw_set+0xac>
    968c: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		000000000000968c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    9690: 91000000     	add	x0, x0, #0x0
		0000000000009690:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x40
    9694: 94000000     	bl	0x9694 <aw9620x_reg_update_fw_set+0x50>
		0000000000009694:  R_AARCH64_CALL26	mutex_lock
    9698: b94007e8     	ldr	w8, [sp, #0x4]
    969c: 7100051f     	cmp	w8, #0x1
    96a0: 54000221     	b.ne	0x96e4 <aw9620x_reg_update_fw_set+0xa0>
    96a4: 385cd2a8     	ldurb	w8, [x21, #-0x33]
    96a8: 52800036     	mov	w22, #0x1               // =1
    96ac: d100e2b4     	sub	x20, x21, #0x38
    96b0: 381cb2b6     	sturb	w22, [x21, #-0x35]
    96b4: 35000088     	cbnz	w8, 0x96c4 <aw9620x_reg_update_fw_set+0x80>
    96b8: b85e42a0     	ldur	w0, [x21, #-0x1c]
    96bc: 94000000     	bl	0x96bc <aw9620x_reg_update_fw_set+0x78>
		00000000000096bc:  R_AARCH64_CALL26	disable_irq
    96c0: 381cd2b6     	sturb	w22, [x21, #-0x33]
    96c4: aa1403e0     	mov	x0, x20
    96c8: 94000000     	bl	0x96c8 <aw9620x_reg_update_fw_set+0x84>
		00000000000096c8:  R_AARCH64_CALL26	aw9620x_load_frimware_work
    96cc: 385cd2a8     	ldurb	w8, [x21, #-0x33]
    96d0: 7100051f     	cmp	w8, #0x1
    96d4: 54000081     	b.ne	0x96e4 <aw9620x_reg_update_fw_set+0xa0>
    96d8: b85e42a0     	ldur	w0, [x21, #-0x1c]
    96dc: 94000000     	bl	0x96dc <aw9620x_reg_update_fw_set+0x98>
		00000000000096dc:  R_AARCH64_CALL26	enable_irq
    96e0: 381cd2bf     	sturb	wzr, [x21, #-0x33]
    96e4: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000096e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    96e8: 91000000     	add	x0, x0, #0x0
		00000000000096e8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x40
    96ec: 94000000     	bl	0x96ec <aw9620x_reg_update_fw_set+0xa8>
		00000000000096ec:  R_AARCH64_CALL26	mutex_unlock
    96f0: d5384108     	mrs	x8, SP_EL0
    96f4: f9438908     	ldr	x8, [x8, #0x710]
    96f8: f94007e9     	ldr	x9, [sp, #0x8]
    96fc: eb09011f     	cmp	x8, x9
    9700: 54000101     	b.ne	0x9720 <aw9620x_reg_update_fw_set+0xdc>
    9704: aa1303e0     	mov	x0, x19
    9708: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    970c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    9710: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9714: 910103ff     	add	sp, sp, #0x40
    9718: d50323bf     	autiasp
    971c: d65f03c0     	ret
    9720: 94000000     	bl	0x9720 <aw9620x_reg_update_fw_set+0xdc>
		0000000000009720:  R_AARCH64_CALL26	__stack_chk_fail
