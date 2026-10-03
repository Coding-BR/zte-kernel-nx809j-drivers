
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002b74 <aw22xxx_reg_show>:
    2b74: d503233f     	paciasp
    2b78: d10183ff     	sub	sp, sp, #0x60
    2b7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2b80: a90267fa     	stp	x26, x25, [sp, #0x20]
    2b84: a9035ff8     	stp	x24, x23, [sp, #0x30]
    2b88: a90457f6     	stp	x22, x21, [sp, #0x40]
    2b8c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    2b90: 910043fd     	add	x29, sp, #0x10
    2b94: d5384108     	mrs	x8, SP_EL0
    2b98: aa0203f3     	mov	x19, x2
    2b9c: 910003e2     	mov	x2, sp
    2ba0: f9438908     	ldr	x8, [x8, #0x710]
    2ba4: 52801fe1     	mov	w1, #0xff               // =255
    2ba8: f90007e8     	str	x8, [sp, #0x8]
    2bac: f9404c08     	ldr	x8, [x0, #0x98]
    2bb0: 390013ff     	strb	wzr, [sp, #0x4]
    2bb4: 390003ff     	strb	wzr, [sp]
    2bb8: d1004115     	sub	x21, x8, #0x10
    2bbc: aa1503e0     	mov	x0, x21
    2bc0: 97fff973     	bl	0x118c <aw22xxx_i2c_read>
		0000000000002bc0:  R_AARCH64_CALL26	aw22xxx_i2c_read
    2bc4: aa1f03f6     	mov	x22, xzr
    2bc8: aa1f03f4     	mov	x20, xzr
    2bcc: 52820019     	mov	w25, #0x1000            // =4096
    2bd0: 9000001a     	adrp	x26, 0x2000 <aw22xxx_irq+0x20>
		0000000000002bd0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_reg_access
    2bd4: 9100035a     	add	x26, x26, #0x0
		0000000000002bd4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_reg_access
    2bd8: 90000017     	adrp	x23, 0x2000 <aw22xxx_irq+0x20>
		0000000000002bd8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe31
    2bdc: 910002f7     	add	x23, x23, #0x0
		0000000000002bdc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe31
    2be0: 14000004     	b	0x2bf0 <aw22xxx_reg_show+0x7c>
    2be4: 910006d6     	add	x22, x22, #0x1
    2be8: f10402df     	cmp	x22, #0x100
    2bec: 540002e0     	b.eq	0x2c48 <aw22xxx_reg_show+0xd4>
    2bf0: 394003e8     	ldrb	w8, [sp]
    2bf4: 35000068     	cbnz	w8, 0x2c00 <aw22xxx_reg_show+0x8c>
    2bf8: 38766b48     	ldrb	w8, [x26, x22]
    2bfc: 3607ff48     	tbz	w8, #0x0, 0x2be4 <aw22xxx_reg_show+0x70>
    2c00: 910013e2     	add	x2, sp, #0x4
    2c04: aa1503e0     	mov	x0, x21
    2c08: 2a1603e1     	mov	w1, w22
    2c0c: 97fff960     	bl	0x118c <aw22xxx_i2c_read>
		0000000000002c0c:  R_AARCH64_CALL26	aw22xxx_i2c_read
    2c10: 394013e4     	ldrb	w4, [sp, #0x4]
    2c14: cb140338     	sub	x24, x25, x20
    2c18: 8b140260     	add	x0, x19, x20
    2c1c: aa1803e1     	mov	x1, x24
    2c20: aa1703e2     	mov	x2, x23
    2c24: 2a1603e3     	mov	w3, w22
    2c28: 94000000     	bl	0x2c28 <aw22xxx_reg_show+0xb4>
		0000000000002c28:  R_AARCH64_CALL26	snprintf
    2c2c: eb20c31f     	cmp	x24, w0, sxtw
    2c30: 540000a9     	b.ls	0x2c44 <aw22xxx_reg_show+0xd0>
    2c34: 8b140260     	add	x0, x19, x20
    2c38: 94000000     	bl	0x2c38 <aw22xxx_reg_show+0xc4>
		0000000000002c38:  R_AARCH64_CALL26	strlen
    2c3c: 8b140014     	add	x20, x0, x20
    2c40: 17ffffe9     	b	0x2be4 <aw22xxx_reg_show+0x70>
    2c44: 928001b4     	mov	x20, #-0xe              // =-14
    2c48: d5384108     	mrs	x8, SP_EL0
    2c4c: f9438908     	ldr	x8, [x8, #0x710]
    2c50: f94007e9     	ldr	x9, [sp, #0x8]
    2c54: eb09011f     	cmp	x8, x9
    2c58: 54000141     	b.ne	0x2c80 <aw22xxx_reg_show+0x10c>
    2c5c: aa1403e0     	mov	x0, x20
    2c60: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2c64: a94457f6     	ldp	x22, x21, [sp, #0x40]
    2c68: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    2c6c: a94267fa     	ldp	x26, x25, [sp, #0x20]
    2c70: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2c74: 910183ff     	add	sp, sp, #0x60
    2c78: d50323bf     	autiasp
    2c7c: d65f03c0     	ret
    2c80: 94000000     	bl	0x2c80 <aw22xxx_reg_show+0x10c>
		0000000000002c80:  R_AARCH64_CALL26	__stack_chk_fail
