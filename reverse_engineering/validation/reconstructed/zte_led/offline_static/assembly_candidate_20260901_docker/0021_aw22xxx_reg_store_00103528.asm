
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003320 <aw22xxx_reg_store>:
    3320: d503233f     	paciasp
    3324: d100c3ff     	sub	sp, sp, #0x30
    3328: a9017bfd     	stp	x29, x30, [sp, #0x10]
    332c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3330: 910043fd     	add	x29, sp, #0x10
    3334: d5384109     	mrs	x9, SP_EL0
    3338: aa0203e8     	mov	x8, x2
    333c: aa0303f3     	mov	x19, x3
    3340: f9438929     	ldr	x9, [x9, #0x710]
    3344: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x127c
    3348: 91000021     	add	x1, x1, #0x0
		0000000000003348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x127c
    334c: 910013e2     	add	x2, sp, #0x4
    3350: 910003e3     	mov	x3, sp
    3354: f90007e9     	str	x9, [sp, #0x8]
    3358: f9404c14     	ldr	x20, [x0, #0x98]
    335c: aa0803e0     	mov	x0, x8
    3360: f90003ff     	str	xzr, [sp]
    3364: 94000000     	bl	0x3364 <aw22xxx_reg_store+0x44>
		0000000000003364:  R_AARCH64_CALL26	sscanf
    3368: 7100081f     	cmp	w0, #0x2
    336c: 54000241     	b.ne	0x33b4 <aw22xxx_reg_store+0x94>
    3370: b94007e1     	ldr	w1, [sp, #0x4]
    3374: 7104003f     	cmp	w1, #0x100
    3378: 540001e2     	b.hs	0x33b4 <aw22xxx_reg_store+0x94>
    337c: b94003e2     	ldr	w2, [sp]
    3380: d1004280     	sub	x0, x20, #0x10
    3384: 97fff337     	bl	0x60 <aw22xxx_i2c_write>
    3388: d5384108     	mrs	x8, SP_EL0
    338c: f9438908     	ldr	x8, [x8, #0x710]
    3390: f94007e9     	ldr	x9, [sp, #0x8]
    3394: eb09011f     	cmp	x8, x9
    3398: 540001c1     	b.ne	0x33d0 <aw22xxx_reg_store+0xb0>
    339c: aa1303e0     	mov	x0, x19
    33a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    33a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    33a8: 9100c3ff     	add	sp, sp, #0x30
    33ac: d50323bf     	autiasp
    33b0: d65f03c0     	ret
    33b4: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		00000000000033b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1282
    33b8: 91000000     	add	x0, x0, #0x0
		00000000000033b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1282
    33bc: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		00000000000033bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e
    33c0: 91000021     	add	x1, x1, #0x0
		00000000000033c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e
    33c4: 94000000     	bl	0x33c4 <aw22xxx_reg_store+0xa4>
		00000000000033c4:  R_AARCH64_CALL26	_printk
    33c8: 928002b3     	mov	x19, #-0x16             // =-22
    33cc: 17ffffef     	b	0x3388 <aw22xxx_reg_store+0x68>
    33d0: 94000000     	bl	0x33d0 <aw22xxx_reg_store+0xb0>
		00000000000033d0:  R_AARCH64_CALL26	__stack_chk_fail
