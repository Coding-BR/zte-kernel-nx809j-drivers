
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000888 <aw22xxx_read_chipid>:
     888: d503233f     	paciasp
     88c: d100c3ff     	sub	sp, sp, #0x30
     890: a9017bfd     	stp	x29, x30, [sp, #0x10]
     894: f90013f3     	str	x19, [sp, #0x20]
     898: 910043fd     	add	x29, sp, #0x10
     89c: d5384108     	mrs	x8, SP_EL0
     8a0: 52801fe1     	mov	w1, #0xff               // =255
     8a4: 2a1f03e2     	mov	w2, wzr
     8a8: f9438908     	ldr	x8, [x8, #0x710]
     8ac: aa0003f3     	mov	x19, x0
     8b0: f90007e8     	str	x8, [sp, #0x8]
     8b4: 390013ff     	strb	wzr, [sp, #0x4]
     8b8: 97fffdea     	bl	0x60 <aw22xxx_i2c_write>
     8bc: aa1303e0     	mov	x0, x19
     8c0: 52800021     	mov	w1, #0x1                // =1
     8c4: 52800aa2     	mov	w2, #0x55               // =85
     8c8: 97fffde6     	bl	0x60 <aw22xxx_i2c_write>
     8cc: 5280fa00     	mov	w0, #0x7d0              // =2000
     8d0: 52817701     	mov	w1, #0xbb8              // =3000
     8d4: 52800042     	mov	w2, #0x2                // =2
     8d8: 94000000     	bl	0x8d8 <aw22xxx_read_chipid+0x50>
		00000000000008d8:  R_AARCH64_CALL26	usleep_range_state
     8dc: 910013e2     	add	x2, sp, #0x4
     8e0: aa1303e0     	mov	x0, x19
     8e4: 52800021     	mov	w1, #0x1                // =1
     8e8: 940002ce     	bl	0x1420 <aw22xxx_i2c_read>
     8ec: 2a0003e2     	mov	w2, w0
     8f0: 36f800e0     	tbz	w0, #0x1f, 0x90c <aw22xxx_read_chipid+0x84>
     8f4: f9400660     	ldr	x0, [x19, #0x8]
     8f8: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000008f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5aa
     8fc: 91000021     	add	x1, x1, #0x0
		00000000000008fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5aa
     900: 94000000     	bl	0x900 <aw22xxx_read_chipid+0x78>
		0000000000000900:  R_AARCH64_CALL26	_dev_err
     904: 12800080     	mov	w0, #-0x5               // =-5
     908: 14000041     	b	0xa0c <aw22xxx_read_chipid+0x184>
     90c: 394013e8     	ldrb	w8, [sp, #0x4]
     910: 7101d91f     	cmp	w8, #0x76
     914: 54000281     	b.ne	0x964 <aw22xxx_read_chipid+0xdc>
     918: 910013e2     	add	x2, sp, #0x4
     91c: aa1303e0     	mov	x0, x19
     920: 2a1f03e1     	mov	w1, wzr
     924: 940002bf     	bl	0x1420 <aw22xxx_i2c_read>
     928: 394013e1     	ldrb	w1, [sp, #0x4]
     92c: 71009c3f     	cmp	w1, #0x27
     930: 54000420     	b.eq	0x9b4 <aw22xxx_read_chipid+0x12c>
     934: 7100603f     	cmp	w1, #0x18
     938: 54000581     	b.ne	0x9e8 <aw22xxx_read_chipid+0x160>
     93c: d28eec2a     	mov	x10, #0x7761            // =30561
     940: 52800028     	mov	w8, #0x1                // =1
     944: 90000009     	adrp	x9, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     948: f2a6464a     	movk	x10, #0x3232, lsl #16
     94c: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd47
     950: 91000000     	add	x0, x0, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd47
     954: f2c6262a     	movk	x10, #0x3131, lsl #32
     958: 390bb668     	strb	w8, [x19, #0x2ed]
     95c: f2e0070a     	movk	x10, #0x38, lsl #48
     960: 1400001e     	b	0x9d8 <aw22xxx_read_chipid+0x150>
     964: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb75
     968: 91000000     	add	x0, x0, #0x0
		0000000000000968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb75
     96c: 94000000     	bl	0x96c <aw22xxx_read_chipid+0xe4>
		000000000000096c:  R_AARCH64_CALL26	_printk
     970: 52800020     	mov	w0, #0x1                // =1
     974: 94000000     	bl	0x974 <aw22xxx_read_chipid+0xec>
		0000000000000974:  R_AARCH64_CALL26	msleep
     978: 910013e2     	add	x2, sp, #0x4
     97c: aa1303e0     	mov	x0, x19
     980: 52800021     	mov	w1, #0x1                // =1
     984: 940002a7     	bl	0x1420 <aw22xxx_i2c_read>
     988: 2a0003e2     	mov	w2, w0
     98c: 37fffb40     	tbnz	w0, #0x1f, 0x8f4 <aw22xxx_read_chipid+0x6c>
     990: 394013e8     	ldrb	w8, [sp, #0x4]
     994: 7101d91f     	cmp	w8, #0x76
     998: 54fffc00     	b.eq	0x918 <aw22xxx_read_chipid+0x90>
     99c: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		000000000000099c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10ea
     9a0: 91000000     	add	x0, x0, #0x0
		00000000000009a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10ea
     9a4: 94000000     	bl	0x9a4 <aw22xxx_read_chipid+0x11c>
		00000000000009a4:  R_AARCH64_CALL26	_printk
     9a8: 52800020     	mov	w0, #0x1                // =1
     9ac: 94000000     	bl	0x9ac <aw22xxx_read_chipid+0x124>
		00000000000009ac:  R_AARCH64_CALL26	msleep
     9b0: 14000016     	b	0xa08 <aw22xxx_read_chipid+0x180>
     9b4: d28eec2a     	mov	x10, #0x7761            // =30561
     9b8: 52800048     	mov	w8, #0x2                // =2
     9bc: 90000009     	adrp	x9, 0x0 <aw22xxx_led_imax_cfg>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     9c0: f2a6464a     	movk	x10, #0x3232, lsl #16
     9c4: 390bb668     	strb	w8, [x19, #0x2ed]
     9c8: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13ed
     9cc: 91000000     	add	x0, x0, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13ed
     9d0: f2c6462a     	movk	x10, #0x3231, lsl #32
     9d4: f2e006ea     	movk	x10, #0x37, lsl #48
     9d8: f900012a     	str	x10, [x9]
		00000000000009d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     9dc: 94000000     	bl	0x9dc <aw22xxx_read_chipid+0x154>
		00000000000009dc:  R_AARCH64_CALL26	_printk
     9e0: 2a1f03e0     	mov	w0, wzr
     9e4: 1400000a     	b	0xa0c <aw22xxx_read_chipid+0x184>
     9e8: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000009e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8fa
     9ec: 91000000     	add	x0, x0, #0x0
		00000000000009ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8fa
     9f0: 94000000     	bl	0x9f0 <aw22xxx_read_chipid+0x168>
		00000000000009f0:  R_AARCH64_CALL26	_printk
     9f4: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abe
     9f8: 91000000     	add	x0, x0, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abe
     9fc: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae2
     a00: 91000021     	add	x1, x1, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae2
     a04: 94000000     	bl	0xa04 <aw22xxx_read_chipid+0x17c>
		0000000000000a04:  R_AARCH64_CALL26	_printk
     a08: 128002a0     	mov	w0, #-0x16              // =-22
     a0c: d5384108     	mrs	x8, SP_EL0
     a10: f9438908     	ldr	x8, [x8, #0x710]
     a14: f94007e9     	ldr	x9, [sp, #0x8]
     a18: eb09011f     	cmp	x8, x9
     a1c: 540000c1     	b.ne	0xa34 <aw22xxx_read_chipid+0x1ac>
     a20: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     a24: f94013f3     	ldr	x19, [sp, #0x20]
     a28: 9100c3ff     	add	sp, sp, #0x30
     a2c: d50323bf     	autiasp
     a30: d65f03c0     	ret
     a34: 94000000     	bl	0xa34 <aw22xxx_read_chipid+0x1ac>
		0000000000000a34:  R_AARCH64_CALL26	__stack_chk_fail
