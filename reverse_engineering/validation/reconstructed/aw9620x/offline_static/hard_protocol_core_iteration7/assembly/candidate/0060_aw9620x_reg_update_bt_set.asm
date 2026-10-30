
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009564 <aw9620x_reg_update_bt_set>:
    9564: d503233f     	paciasp
    9568: d10103ff     	sub	sp, sp, #0x40
    956c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9570: f90013f5     	str	x21, [sp, #0x20]
    9574: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9578: 910043fd     	add	x29, sp, #0x10
    957c: d5384109     	mrs	x9, SP_EL0
    9580: aa0203e8     	mov	x8, x2
    9584: 910013e2     	add	x2, sp, #0x4
    9588: f9438929     	ldr	x9, [x9, #0x710]
    958c: 2a1f03e1     	mov	w1, wzr
    9590: aa0303f3     	mov	x19, x3
    9594: f90007e9     	str	x9, [sp, #0x8]
    9598: f9404c15     	ldr	x21, [x0, #0x98]
    959c: aa0803e0     	mov	x0, x8
    95a0: b90007ff     	str	wzr, [sp, #0x4]
    95a4: 94000000     	bl	0x95a4 <aw9620x_reg_update_bt_set+0x40>
		00000000000095a4:  R_AARCH64_CALL26	kstrtouint
    95a8: 35000320     	cbnz	w0, 0x960c <aw9620x_reg_update_bt_set+0xa8>
    95ac: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000095ac:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_bss_base+0x40
    95b0: 91000000     	add	x0, x0, #0x0
		00000000000095b0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_bss_base+0x40
    95b4: 94000000     	bl	0x95b4 <aw9620x_reg_update_bt_set+0x50>
		00000000000095b4:  R_AARCH64_CALL26	mutex_lock
    95b8: b94007e8     	ldr	w8, [sp, #0x4]
    95bc: 7100051f     	cmp	w8, #0x1
    95c0: 54000201     	b.ne	0x9600 <aw9620x_reg_update_bt_set+0x9c>
    95c4: 385cd2a8     	ldurb	w8, [x21, #-0x33]
    95c8: d100e2b4     	sub	x20, x21, #0x38
    95cc: 350000a8     	cbnz	w8, 0x95e0 <aw9620x_reg_update_bt_set+0x7c>
    95d0: b85e42a0     	ldur	w0, [x21, #-0x1c]
    95d4: 94000000     	bl	0x95d4 <aw9620x_reg_update_bt_set+0x70>
		00000000000095d4:  R_AARCH64_CALL26	disable_irq
    95d8: 52800028     	mov	w8, #0x1                // =1
    95dc: 381cd2a8     	sturb	w8, [x21, #-0x33]
    95e0: aa1403e0     	mov	x0, x20
    95e4: 97fff1ad     	bl	0x5c98 <aw9620x_reg_update_boot_work>
		00000000000095e4:  R_AARCH64_CALL26	aw9620x_reg_update_boot_work
    95e8: 385cd2a8     	ldurb	w8, [x21, #-0x33]
    95ec: 7100051f     	cmp	w8, #0x1
    95f0: 54000081     	b.ne	0x9600 <aw9620x_reg_update_bt_set+0x9c>
    95f4: b85e42a0     	ldur	w0, [x21, #-0x1c]
    95f8: 94000000     	bl	0x95f8 <aw9620x_reg_update_bt_set+0x94>
		00000000000095f8:  R_AARCH64_CALL26	enable_irq
    95fc: 381cd2bf     	sturb	wzr, [x21, #-0x33]
    9600: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009600:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_bss_base+0x40
    9604: 91000000     	add	x0, x0, #0x0
		0000000000009604:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_bss_base+0x40
    9608: 94000000     	bl	0x9608 <aw9620x_reg_update_bt_set+0xa4>
		0000000000009608:  R_AARCH64_CALL26	mutex_unlock
    960c: d5384108     	mrs	x8, SP_EL0
    9610: f9438908     	ldr	x8, [x8, #0x710]
    9614: f94007e9     	ldr	x9, [sp, #0x8]
    9618: eb09011f     	cmp	x8, x9
    961c: 54000101     	b.ne	0x963c <aw9620x_reg_update_bt_set+0xd8>
    9620: aa1303e0     	mov	x0, x19
    9624: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9628: f94013f5     	ldr	x21, [sp, #0x20]
    962c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9630: 910103ff     	add	sp, sp, #0x40
    9634: d50323bf     	autiasp
    9638: d65f03c0     	ret
    963c: 94000000     	bl	0x963c <aw9620x_reg_update_bt_set+0xd8>
		000000000000963c:  R_AARCH64_CALL26	__stack_chk_fail
