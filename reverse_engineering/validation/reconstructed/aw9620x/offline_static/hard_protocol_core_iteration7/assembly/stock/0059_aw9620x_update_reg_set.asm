
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009484 <aw9620x_update_reg_set>:
    9484: d503233f     	paciasp
    9488: d10103ff     	sub	sp, sp, #0x40
    948c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9490: f90013f5     	str	x21, [sp, #0x20]
    9494: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9498: 910043fd     	add	x29, sp, #0x10
    949c: d5384109     	mrs	x9, SP_EL0
    94a0: aa0203e8     	mov	x8, x2
    94a4: 910013e2     	add	x2, sp, #0x4
    94a8: f9438929     	ldr	x9, [x9, #0x710]
    94ac: 2a1f03e1     	mov	w1, wzr
    94b0: aa0303f3     	mov	x19, x3
    94b4: f90007e9     	str	x9, [sp, #0x8]
    94b8: f9404c15     	ldr	x21, [x0, #0x98]
    94bc: aa0803e0     	mov	x0, x8
    94c0: b90007ff     	str	wzr, [sp, #0x4]
    94c4: 94000000     	bl	0x94c4 <aw9620x_update_reg_set+0x40>
		00000000000094c4:  R_AARCH64_CALL26	kstrtouint
    94c8: 35000320     	cbnz	w0, 0x952c <aw9620x_update_reg_set+0xa8>
    94cc: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		00000000000094cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    94d0: 91000000     	add	x0, x0, #0x0
		00000000000094d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x40
    94d4: 94000000     	bl	0x94d4 <aw9620x_update_reg_set+0x50>
		00000000000094d4:  R_AARCH64_CALL26	mutex_lock
    94d8: b94007e8     	ldr	w8, [sp, #0x4]
    94dc: 7100051f     	cmp	w8, #0x1
    94e0: 54000201     	b.ne	0x9520 <aw9620x_update_reg_set+0x9c>
    94e4: 385cd2a8     	ldurb	w8, [x21, #-0x33]
    94e8: d100e2b4     	sub	x20, x21, #0x38
    94ec: 350000a8     	cbnz	w8, 0x9500 <aw9620x_update_reg_set+0x7c>
    94f0: b85e42a0     	ldur	w0, [x21, #-0x1c]
    94f4: 94000000     	bl	0x94f4 <aw9620x_update_reg_set+0x70>
		00000000000094f4:  R_AARCH64_CALL26	disable_irq
    94f8: 52800028     	mov	w8, #0x1                // =1
    94fc: 381cd2a8     	sturb	w8, [x21, #-0x33]
    9500: aa1403e0     	mov	x0, x20
    9504: 97fff4b5     	bl	0x67d8 <aw9620x_load_def_reg_bin>
    9508: 385cd2a8     	ldurb	w8, [x21, #-0x33]
    950c: 7100051f     	cmp	w8, #0x1
    9510: 54000081     	b.ne	0x9520 <aw9620x_update_reg_set+0x9c>
    9514: b85e42a0     	ldur	w0, [x21, #-0x1c]
    9518: 94000000     	bl	0x9518 <aw9620x_update_reg_set+0x94>
		0000000000009518:  R_AARCH64_CALL26	enable_irq
    951c: 381cd2bf     	sturb	wzr, [x21, #-0x33]
    9520: 90000000     	adrp	x0, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009520:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
    9524: 91000000     	add	x0, x0, #0x0
		0000000000009524:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x40
    9528: 94000000     	bl	0x9528 <aw9620x_update_reg_set+0xa4>
		0000000000009528:  R_AARCH64_CALL26	mutex_unlock
    952c: d5384108     	mrs	x8, SP_EL0
    9530: f9438908     	ldr	x8, [x8, #0x710]
    9534: f94007e9     	ldr	x9, [sp, #0x8]
    9538: eb09011f     	cmp	x8, x9
    953c: 54000101     	b.ne	0x955c <aw9620x_update_reg_set+0xd8>
    9540: aa1303e0     	mov	x0, x19
    9544: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9548: f94013f5     	ldr	x21, [sp, #0x20]
    954c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9550: 910103ff     	add	sp, sp, #0x40
    9554: d50323bf     	autiasp
    9558: d65f03c0     	ret
    955c: 94000000     	bl	0x955c <aw9620x_update_reg_set+0xd8>
		000000000000955c:  R_AARCH64_CALL26	__stack_chk_fail
