
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f34 <aw22xxx_reg_show>:
    1f34: d503233f     	paciasp
    1f38: d10183ff     	sub	sp, sp, #0x60
    1f3c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f40: a90267fa     	stp	x26, x25, [sp, #0x20]
    1f44: a9035ff8     	stp	x24, x23, [sp, #0x30]
    1f48: a90457f6     	stp	x22, x21, [sp, #0x40]
    1f4c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1f50: 910043fd     	add	x29, sp, #0x10
    1f54: d5384108     	mrs	x8, SP_EL0
    1f58: aa0203f3     	mov	x19, x2
    1f5c: 910003e2     	mov	x2, sp
    1f60: f9438908     	ldr	x8, [x8, #0x710]
    1f64: 52801fe1     	mov	w1, #0xff               // =255
    1f68: f90007e8     	str	x8, [sp, #0x8]
    1f6c: f9404c08     	ldr	x8, [x0, #0x98]
    1f70: 390013ff     	strb	wzr, [sp, #0x4]
    1f74: 390003ff     	strb	wzr, [sp]
    1f78: d1004115     	sub	x21, x8, #0x10
    1f7c: aa1503e0     	mov	x0, x21
    1f80: 97fff973     	bl	0x54c <aw22xxx_i2c_read>
    1f84: aa1f03f6     	mov	x22, xzr
    1f88: aa1f03f4     	mov	x20, xzr
    1f8c: 52820019     	mov	w25, #0x1000            // =4096
    1f90: 9000001a     	adrp	x26, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001f90:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_reg_access
    1f94: 9100035a     	add	x26, x26, #0x0
		0000000000001f94:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_reg_access
    1f98: 90000017     	adrp	x23, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe31
    1f9c: 910002f7     	add	x23, x23, #0x0
		0000000000001f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe31
    1fa0: 14000004     	b	0x1fb0 <aw22xxx_reg_show+0x7c>
    1fa4: 910006d6     	add	x22, x22, #0x1
    1fa8: f10402df     	cmp	x22, #0x100
    1fac: 540002e0     	b.eq	0x2008 <aw22xxx_reg_show+0xd4>
    1fb0: 394003e8     	ldrb	w8, [sp]
    1fb4: 35000068     	cbnz	w8, 0x1fc0 <aw22xxx_reg_show+0x8c>
    1fb8: 38766b48     	ldrb	w8, [x26, x22]
    1fbc: 3607ff48     	tbz	w8, #0x0, 0x1fa4 <aw22xxx_reg_show+0x70>
    1fc0: 910013e2     	add	x2, sp, #0x4
    1fc4: aa1503e0     	mov	x0, x21
    1fc8: 2a1603e1     	mov	w1, w22
    1fcc: 97fff960     	bl	0x54c <aw22xxx_i2c_read>
    1fd0: 394013e4     	ldrb	w4, [sp, #0x4]
    1fd4: cb140338     	sub	x24, x25, x20
    1fd8: 8b140260     	add	x0, x19, x20
    1fdc: aa1803e1     	mov	x1, x24
    1fe0: aa1703e2     	mov	x2, x23
    1fe4: 2a1603e3     	mov	w3, w22
    1fe8: 94000000     	bl	0x1fe8 <aw22xxx_reg_show+0xb4>
		0000000000001fe8:  R_AARCH64_CALL26	snprintf
    1fec: eb20c31f     	cmp	x24, w0, sxtw
    1ff0: 540000a9     	b.ls	0x2004 <aw22xxx_reg_show+0xd0>
    1ff4: 8b140260     	add	x0, x19, x20
    1ff8: 94000000     	bl	0x1ff8 <aw22xxx_reg_show+0xc4>
		0000000000001ff8:  R_AARCH64_CALL26	strlen
    1ffc: 8b140014     	add	x20, x0, x20
    2000: 17ffffe9     	b	0x1fa4 <aw22xxx_reg_show+0x70>
    2004: 928001b4     	mov	x20, #-0xe              // =-14
    2008: d5384108     	mrs	x8, SP_EL0
    200c: f9438908     	ldr	x8, [x8, #0x710]
    2010: f94007e9     	ldr	x9, [sp, #0x8]
    2014: eb09011f     	cmp	x8, x9
    2018: 54000141     	b.ne	0x2040 <aw22xxx_reg_show+0x10c>
    201c: aa1403e0     	mov	x0, x20
    2020: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2024: a94457f6     	ldp	x22, x21, [sp, #0x40]
    2028: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    202c: a94267fa     	ldp	x26, x25, [sp, #0x20]
    2030: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2034: 910183ff     	add	sp, sp, #0x60
    2038: d50323bf     	autiasp
    203c: d65f03c0     	ret
    2040: 94000000     	bl	0x2040 <aw22xxx_reg_show+0x10c>
		0000000000002040:  R_AARCH64_CALL26	__stack_chk_fail
