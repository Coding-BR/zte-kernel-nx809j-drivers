
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003a58 <aw22xxx_recover_work_routine>:
    3a58: d503233f     	paciasp
    3a5c: d10103ff     	sub	sp, sp, #0x40
    3a60: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3a64: f90013f5     	str	x21, [sp, #0x20]
    3a68: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3a6c: 910043fd     	add	x29, sp, #0x10
    3a70: d5384108     	mrs	x8, SP_EL0
    3a74: 90000015     	adrp	x21, 0x3000 <aw22xxx_play+0x84>
		0000000000003a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcff
    3a78: 910002b5     	add	x21, x21, #0x0
		0000000000003a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcff
    3a7c: f9438908     	ldr	x8, [x8, #0x710]
    3a80: aa0003f3     	mov	x19, x0
    3a84: d1094014     	sub	x20, x0, #0x250
    3a88: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    3a8c: 91000000     	add	x0, x0, #0x0
		0000000000003a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    3a90: aa1503e1     	mov	x1, x21
    3a94: f90007e8     	str	x8, [sp, #0x8]
    3a98: 390013ff     	strb	wzr, [sp, #0x4]
    3a9c: 94000000     	bl	0x3a9c <aw22xxx_recover_work_routine+0x44>
		0000000000003a9c:  R_AARCH64_CALL26	_printk
    3aa0: aa1403e0     	mov	x0, x20
    3aa4: 52801fe1     	mov	w1, #0xff               // =255
    3aa8: 2a1f03e2     	mov	w2, wzr
    3aac: 97fff16d     	bl	0x60 <aw22xxx_i2c_write>
    3ab0: 910013e2     	add	x2, sp, #0x4
    3ab4: aa1403e0     	mov	x0, x20
    3ab8: 52800081     	mov	w1, #0x4                // =4
    3abc: 97fff659     	bl	0x1420 <aw22xxx_i2c_read>
    3ac0: 394013e8     	ldrb	w8, [sp, #0x4]
    3ac4: aa1403e0     	mov	x0, x20
    3ac8: 52800081     	mov	w1, #0x4                // =4
    3acc: 121e7902     	and	w2, w8, #0xfffffffd
    3ad0: 97fff164     	bl	0x60 <aw22xxx_i2c_write>
    3ad4: 910013e2     	add	x2, sp, #0x4
    3ad8: aa1403e0     	mov	x0, x20
    3adc: 52800081     	mov	w1, #0x4                // =4
    3ae0: 97fff650     	bl	0x1420 <aw22xxx_i2c_read>
    3ae4: 394013e8     	ldrb	w8, [sp, #0x4]
    3ae8: aa1403e0     	mov	x0, x20
    3aec: 52800081     	mov	w1, #0x4                // =4
    3af0: 121f7902     	and	w2, w8, #0xfffffffe
    3af4: 97fff15b     	bl	0x60 <aw22xxx_i2c_write>
    3af8: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105b
    3afc: 91000000     	add	x0, x0, #0x0
		0000000000003afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105b
    3b00: 94000000     	bl	0x3b00 <aw22xxx_recover_work_routine+0xa8>
		0000000000003b00:  R_AARCH64_CALL26	_printk
    3b04: 910013e2     	add	x2, sp, #0x4
    3b08: aa1403e0     	mov	x0, x20
    3b0c: 52800041     	mov	w1, #0x2                // =2
    3b10: 97fff644     	bl	0x1420 <aw22xxx_i2c_read>
    3b14: 394013e8     	ldrb	w8, [sp, #0x4]
    3b18: aa1403e0     	mov	x0, x20
    3b1c: 52800041     	mov	w1, #0x2                // =2
    3b20: 121f7902     	and	w2, w8, #0xfffffffe
    3b24: 97fff14f     	bl	0x60 <aw22xxx_i2c_write>
    3b28: 5280fa00     	mov	w0, #0x7d0              // =2000
    3b2c: 52817701     	mov	w1, #0xbb8              // =3000
    3b30: 52800042     	mov	w2, #0x2                // =2
    3b34: 94000000     	bl	0x3b34 <aw22xxx_recover_work_routine+0xdc>
		0000000000003b34:  R_AARCH64_CALL26	usleep_range_state
    3b38: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe27
    3b3c: 91000000     	add	x0, x0, #0x0
		0000000000003b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe27
    3b40: aa1503e1     	mov	x1, x21
    3b44: 94000000     	bl	0x3b44 <aw22xxx_recover_work_routine+0xec>
		0000000000003b44:  R_AARCH64_CALL26	_printk
    3b48: aa1403e0     	mov	x0, x20
    3b4c: 52801fe1     	mov	w1, #0xff               // =255
    3b50: 2a1f03e2     	mov	w2, wzr
    3b54: 97fff143     	bl	0x60 <aw22xxx_i2c_write>
    3b58: aa1403e0     	mov	x0, x20
    3b5c: 52800041     	mov	w1, #0x2                // =2
    3b60: 52800022     	mov	w2, #0x1                // =1
    3b64: 97fff13f     	bl	0x60 <aw22xxx_i2c_write>
    3b68: aa1403e0     	mov	x0, x20
    3b6c: 52800181     	mov	w1, #0xc                // =12
    3b70: 2a1f03e2     	mov	w2, wzr
    3b74: 97fff13b     	bl	0x60 <aw22xxx_i2c_write>
    3b78: aa1403e0     	mov	x0, x20
    3b7c: 528000a1     	mov	w1, #0x5                // =5
    3b80: 52800022     	mov	w2, #0x1                // =1
    3b84: 97fff137     	bl	0x60 <aw22xxx_i2c_write>
    3b88: aa1403e0     	mov	x0, x20
    3b8c: 52800081     	mov	w1, #0x4                // =4
    3b90: 52800022     	mov	w2, #0x1                // =1
    3b94: 97fff133     	bl	0x60 <aw22xxx_i2c_write>
    3b98: aa1403e0     	mov	x0, x20
    3b9c: 52800121     	mov	w1, #0x9                // =9
    3ba0: 52800222     	mov	w2, #0x11               // =17
    3ba4: 97fff12f     	bl	0x60 <aw22xxx_i2c_write>
    3ba8: aa1403e0     	mov	x0, x20
    3bac: 52800081     	mov	w1, #0x4                // =4
    3bb0: 52800062     	mov	w2, #0x3                // =3
    3bb4: 97fff12b     	bl	0x60 <aw22xxx_i2c_write>
    3bb8: aa1403e0     	mov	x0, x20
    3bbc: 528000a1     	mov	w1, #0x5                // =5
    3bc0: 52800822     	mov	w2, #0x41               // =65
    3bc4: 97fff127     	bl	0x60 <aw22xxx_i2c_write>
    3bc8: 52801900     	mov	w0, #0xc8               // =200
    3bcc: 94000000     	bl	0x3bcc <aw22xxx_recover_work_routine+0x174>
		0000000000003bcc:  R_AARCH64_CALL26	msleep
    3bd0: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1955
    3bd4: 91000000     	add	x0, x0, #0x0
		0000000000003bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1955
    3bd8: aa1503e1     	mov	x1, x21
    3bdc: 94000000     	bl	0x3bdc <aw22xxx_recover_work_routine+0x184>
		0000000000003bdc:  R_AARCH64_CALL26	_printk
    3be0: 90000008     	adrp	x8, 0x3000 <aw22xxx_play+0x84>
		0000000000003be0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1873c
    3be4: aa1403e0     	mov	x0, x20
    3be8: b9400108     	ldr	w8, [x8]
		0000000000003be8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1873c
    3bec: b900b268     	str	w8, [x19, #0xb0]
    3bf0: 94000321     	bl	0x4874 <aw22xxx_cfg_recover_update_wait>
    3bf4: 52801900     	mov	w0, #0xc8               // =200
    3bf8: 94000000     	bl	0x3bf8 <aw22xxx_recover_work_routine+0x1a0>
		0000000000003bf8:  R_AARCH64_CALL26	msleep
    3bfc: 90000008     	adrp	x8, 0x3000 <aw22xxx_play+0x84>
		0000000000003bfc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18740
    3c00: aa1403e0     	mov	x0, x20
    3c04: b9400108     	ldr	w8, [x8]
		0000000000003c04:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18740
    3c08: b900b268     	str	w8, [x19, #0xb0]
    3c0c: 9400031a     	bl	0x4874 <aw22xxx_cfg_recover_update_wait>
    3c10: d5384108     	mrs	x8, SP_EL0
    3c14: f9438908     	ldr	x8, [x8, #0x710]
    3c18: f94007e9     	ldr	x9, [sp, #0x8]
    3c1c: eb09011f     	cmp	x8, x9
    3c20: 540000e1     	b.ne	0x3c3c <aw22xxx_recover_work_routine+0x1e4>
    3c24: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3c28: f94013f5     	ldr	x21, [sp, #0x20]
    3c2c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3c30: 910103ff     	add	sp, sp, #0x40
    3c34: d50323bf     	autiasp
    3c38: d65f03c0     	ret
    3c3c: 94000000     	bl	0x3c3c <aw22xxx_recover_work_routine+0x1e4>
		0000000000003c3c:  R_AARCH64_CALL26	__stack_chk_fail
