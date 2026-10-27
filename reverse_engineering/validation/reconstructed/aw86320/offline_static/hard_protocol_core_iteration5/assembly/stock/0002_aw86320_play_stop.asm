
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002d4 <aw86320_play_stop>:
     2d4: d503233f     	paciasp
     2d8: d100c3ff     	sub	sp, sp, #0x30
     2dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
     2e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     2e4: 910043fd     	add	x29, sp, #0x10
     2e8: d5384108     	mrs	x8, SP_EL0
     2ec: 2a1f03e1     	mov	w1, wzr
     2f0: aa0003f3     	mov	x19, x0
     2f4: f9438908     	ldr	x8, [x8, #0x710]
     2f8: f90007e8     	str	x8, [sp, #0x8]
     2fc: 97ffffc6     	bl	0x214 <aw86320_play_mode>
     300: 12800c74     	mov	w20, #-0x64             // =-100
     304: 910013e2     	add	x2, sp, #0x4
     308: aa1303e0     	mov	x0, x19
     30c: 52800281     	mov	w1, #0x14               // =20
     310: 79000bff     	strh	wzr, [sp, #0x4]
     314: 940000b8     	bl	0x5f4 <haptic_i2c_read>
     318: 79400be8     	ldrh	w8, [sp, #0x4]
     31c: 72180d1f     	tst	w8, #0xf00
     320: 540001e0     	b.eq	0x35c <aw86320_play_stop+0x88>
     324: 5280fa00     	mov	w0, #0x7d0              // =2000
     328: 52813881     	mov	w1, #0x9c4              // =2500
     32c: 52800042     	mov	w2, #0x2                // =2
     330: 94000000     	bl	0x330 <aw86320_play_stop+0x5c>
		0000000000000330:  R_AARCH64_CALL26	usleep_range_state
     334: 31000694     	adds	w20, w20, #0x1
     338: 54fffe63     	b.lo	0x304 <aw86320_play_stop+0x30>
     33c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000033c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     340: 91000000     	add	x0, x0, #0x0
		0000000000000340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     344: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     348: 91000021     	add	x1, x1, #0x0
		0000000000000348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     34c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000034c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x102d
     350: 91000063     	add	x3, x3, #0x0
		0000000000000350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x102d
     354: 528044c2     	mov	w2, #0x226              // =550
     358: 14000008     	b	0x378 <aw86320_play_stop+0xa4>
     35c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000035c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd88
     360: 91000000     	add	x0, x0, #0x0
		0000000000000360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd88
     364: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     368: 91000021     	add	x1, x1, #0x0
		0000000000000368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     36c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000036c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x102d
     370: 91000063     	add	x3, x3, #0x0
		0000000000000370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x102d
     374: 52804402     	mov	w2, #0x220              // =544
     378: 94000000     	bl	0x378 <aw86320_play_stop+0xa4>
		0000000000000378:  R_AARCH64_CALL26	_printk
     37c: d5384108     	mrs	x8, SP_EL0
     380: f9438908     	ldr	x8, [x8, #0x710]
     384: f94007e9     	ldr	x9, [sp, #0x8]
     388: eb09011f     	cmp	x8, x9
     38c: 540000c1     	b.ne	0x3a4 <aw86320_play_stop+0xd0>
     390: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     394: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     398: 9100c3ff     	add	sp, sp, #0x30
     39c: d50323bf     	autiasp
     3a0: d65f03c0     	ret
     3a4: 94000000     	bl	0x3a4 <aw86320_play_stop+0xd0>
		00000000000003a4:  R_AARCH64_CALL26	__stack_chk_fail
