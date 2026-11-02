
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002048 <aw22xxx_reg_store>:
    2048: d503233f     	paciasp
    204c: d100c3ff     	sub	sp, sp, #0x30
    2050: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2054: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2058: 910043fd     	add	x29, sp, #0x10
    205c: d5384109     	mrs	x9, SP_EL0
    2060: aa0203e8     	mov	x8, x2
    2064: aa0303f3     	mov	x19, x3
    2068: f9438929     	ldr	x9, [x9, #0x710]
    206c: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000206c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f0
    2070: 91000021     	add	x1, x1, #0x0
		0000000000002070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f0
    2074: 910003e2     	mov	x2, sp
    2078: f90007e9     	str	x9, [sp, #0x8]
    207c: 910003e9     	mov	x9, sp
    2080: f9404c14     	ldr	x20, [x0, #0x98]
    2084: b27e0123     	orr	x3, x9, #0x4
    2088: aa0803e0     	mov	x0, x8
    208c: f90003ff     	str	xzr, [sp]
    2090: 94000000     	bl	0x2090 <aw22xxx_reg_store+0x48>
		0000000000002090:  R_AARCH64_CALL26	sscanf
    2094: 7100081f     	cmp	w0, #0x2
    2098: 54000241     	b.ne	0x20e0 <aw22xxx_reg_store+0x98>
    209c: b94003e1     	ldr	w1, [sp]
    20a0: 7104003f     	cmp	w1, #0x100
    20a4: 540001e2     	b.hs	0x20e0 <aw22xxx_reg_store+0x98>
    20a8: b94007e2     	ldr	w2, [sp, #0x4]
    20ac: d1004280     	sub	x0, x20, #0x10
    20b0: 97fff8db     	bl	0x41c <aw22xxx_i2c_write>
    20b4: d5384108     	mrs	x8, SP_EL0
    20b8: f9438908     	ldr	x8, [x8, #0x710]
    20bc: f94007e9     	ldr	x9, [sp, #0x8]
    20c0: eb09011f     	cmp	x8, x9
    20c4: 540001e1     	b.ne	0x2100 <aw22xxx_reg_store+0xb8>
    20c8: aa1303e0     	mov	x0, x19
    20cc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    20d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    20d4: 9100c3ff     	add	sp, sp, #0x30
    20d8: d50323bf     	autiasp
    20dc: d65f03c0     	ret
    20e0: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000020e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x508
    20e4: 91000000     	add	x0, x0, #0x0
		00000000000020e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x508
    20e8: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000020e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c
    20ec: 91000021     	add	x1, x1, #0x0
		00000000000020ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c
    20f0: 5280f162     	mov	w2, #0x78b              // =1931
    20f4: 94000000     	bl	0x20f4 <aw22xxx_reg_store+0xac>
		00000000000020f4:  R_AARCH64_CALL26	_printk
    20f8: 928002b3     	mov	x19, #-0x16             // =-22
    20fc: 17ffffee     	b	0x20b4 <aw22xxx_reg_store+0x6c>
    2100: 94000000     	bl	0x2100 <aw22xxx_reg_store+0xb8>
		0000000000002100:  R_AARCH64_CALL26	__stack_chk_fail
