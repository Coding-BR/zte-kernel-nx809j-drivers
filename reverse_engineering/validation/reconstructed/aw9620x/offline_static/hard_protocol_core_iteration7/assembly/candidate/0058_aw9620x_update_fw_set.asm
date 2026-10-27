
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000939c <aw9620x_update_fw_set>:
    939c: d503233f     	paciasp
    93a0: d10103ff     	sub	sp, sp, #0x40
    93a4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    93a8: a90257f6     	stp	x22, x21, [sp, #0x20]
    93ac: a9034ff4     	stp	x20, x19, [sp, #0x30]
    93b0: 910043fd     	add	x29, sp, #0x10
    93b4: d5384109     	mrs	x9, SP_EL0
    93b8: aa0203e8     	mov	x8, x2
    93bc: 910013e2     	add	x2, sp, #0x4
    93c0: f9438929     	ldr	x9, [x9, #0x710]
    93c4: 2a1f03e1     	mov	w1, wzr
    93c8: aa0303f3     	mov	x19, x3
    93cc: f90007e9     	str	x9, [sp, #0x8]
    93d0: f9404c15     	ldr	x21, [x0, #0x98]
    93d4: aa0803e0     	mov	x0, x8
    93d8: b90007ff     	str	wzr, [sp, #0x4]
    93dc: 94000000     	bl	0x93dc <aw9620x_update_fw_set+0x40>
		00000000000093dc:  R_AARCH64_CALL26	kstrtouint
    93e0: 35000360     	cbnz	w0, 0x944c <aw9620x_update_fw_set+0xb0>
    93e4: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000093e4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_bss_base+0x40
    93e8: 91000000     	add	x0, x0, #0x0
		00000000000093e8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_bss_base+0x40
    93ec: 94000000     	bl	0x93ec <aw9620x_update_fw_set+0x50>
		00000000000093ec:  R_AARCH64_CALL26	mutex_lock
    93f0: b94007e8     	ldr	w8, [sp, #0x4]
    93f4: 7100051f     	cmp	w8, #0x1
    93f8: 54000241     	b.ne	0x9440 <aw9620x_update_fw_set+0xa4>
    93fc: 385cd2a8     	ldurb	w8, [x21, #-0x33]
    9400: 52800036     	mov	w22, #0x1               // =1
    9404: d100e2b4     	sub	x20, x21, #0x38
    9408: 381cb2bf     	sturb	wzr, [x21, #-0x35]
    940c: 381cf2b6     	sturb	w22, [x21, #-0x31]
    9410: 35000088     	cbnz	w8, 0x9420 <aw9620x_update_fw_set+0x84>
    9414: b85e42a0     	ldur	w0, [x21, #-0x1c]
    9418: 94000000     	bl	0x9418 <aw9620x_update_fw_set+0x7c>
		0000000000009418:  R_AARCH64_CALL26	disable_irq
    941c: 381cd2b6     	sturb	w22, [x21, #-0x33]
    9420: aa1403e0     	mov	x0, x20
    9424: 94000000     	bl	0x9424 <aw9620x_update_fw_set+0x88>
		0000000000009424:  R_AARCH64_CALL26	aw9620x_load_frimware_work
    9428: 385cd2a8     	ldurb	w8, [x21, #-0x33]
    942c: 7100051f     	cmp	w8, #0x1
    9430: 54000081     	b.ne	0x9440 <aw9620x_update_fw_set+0xa4>
    9434: b85e42a0     	ldur	w0, [x21, #-0x1c]
    9438: 94000000     	bl	0x9438 <aw9620x_update_fw_set+0x9c>
		0000000000009438:  R_AARCH64_CALL26	enable_irq
    943c: 381cd2bf     	sturb	wzr, [x21, #-0x33]
    9440: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009440:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_bss_base+0x40
    9444: 91000000     	add	x0, x0, #0x0
		0000000000009444:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_bss_base+0x40
    9448: 94000000     	bl	0x9448 <aw9620x_update_fw_set+0xac>
		0000000000009448:  R_AARCH64_CALL26	mutex_unlock
    944c: d5384108     	mrs	x8, SP_EL0
    9450: f9438908     	ldr	x8, [x8, #0x710]
    9454: f94007e9     	ldr	x9, [sp, #0x8]
    9458: eb09011f     	cmp	x8, x9
    945c: 54000101     	b.ne	0x947c <aw9620x_update_fw_set+0xe0>
    9460: aa1303e0     	mov	x0, x19
    9464: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9468: a94257f6     	ldp	x22, x21, [sp, #0x20]
    946c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9470: 910103ff     	add	sp, sp, #0x40
    9474: d50323bf     	autiasp
    9478: d65f03c0     	ret
    947c: 94000000     	bl	0x947c <aw9620x_update_fw_set+0xe0>
		000000000000947c:  R_AARCH64_CALL26	__stack_chk_fail
