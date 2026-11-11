
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f88 <goodix_fb_state_chg_callback>:
    1f88: d503233f     	paciasp
    1f8c: d10103ff     	sub	sp, sp, #0x40
    1f90: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f94: f90013f5     	str	x21, [sp, #0x20]
    1f98: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1f9c: 910043fd     	add	x29, sp, #0x10
    1fa0: d5384108     	mrs	x8, SP_EL0
    1fa4: f9438908     	ldr	x8, [x8, #0x710]
    1fa8: f90007e8     	str	x8, [sp, #0x8]
    1fac: 390013ff     	strb	wzr, [sp, #0x4]
    1fb0: b4000121     	cbz	x1, 0x1fd4 <goodix_fb_state_chg_callback+0x4c>
    1fb4: b4000102     	cbz	x2, 0x1fd4 <goodix_fb_state_chg_callback+0x4c>
    1fb8: 3941cc48     	ldrb	w8, [x2, #0x73]
    1fbc: 35000068     	cbnz	w8, 0x1fc8 <goodix_fb_state_chg_callback+0x40>
    1fc0: 3941c048     	ldrb	w8, [x2, #0x70]
    1fc4: 35000288     	cbnz	w8, 0x2014 <goodix_fb_state_chg_callback+0x8c>
    1fc8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a
    1fcc: 91000000     	add	x0, x0, #0x0
		0000000000001fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a
    1fd0: 14000003     	b	0x1fdc <goodix_fb_state_chg_callback+0x54>
    1fd4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1155
    1fd8: 91000000     	add	x0, x0, #0x0
		0000000000001fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1155
    1fdc: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    1fe0: 91000021     	add	x1, x1, #0x0
		0000000000001fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    1fe4: 94000000     	bl	0x1fe4 <goodix_fb_state_chg_callback+0x5c>
		0000000000001fe4:  R_AARCH64_CALL26	_printk
    1fe8: d5384108     	mrs	x8, SP_EL0
    1fec: f9438908     	ldr	x8, [x8, #0x710]
    1ff0: f94007e9     	ldr	x9, [sp, #0x8]
    1ff4: eb09011f     	cmp	x8, x9
    1ff8: 54000701     	b.ne	0x20d8 <goodix_fb_state_chg_callback+0x150>
    1ffc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2000: f94013f5     	ldr	x21, [sp, #0x20]
    2004: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2008: 910103ff     	add	sp, sp, #0x40
    200c: d50323bf     	autiasp
    2010: d65f03c0     	ret
    2014: 90000008     	adrp	x8, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1671
    2018: 91000108     	add	x8, x8, #0x0
		0000000000002018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1671
    201c: aa0103f3     	mov	x19, x1
    2020: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    2024: 91000021     	add	x1, x1, #0x0
		0000000000002024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    2028: 2a0003f5     	mov	w21, w0
    202c: aa0803e0     	mov	x0, x8
    2030: aa0203f4     	mov	x20, x2
    2034: 94000000     	bl	0x2034 <goodix_fb_state_chg_callback+0xac>
		0000000000002034:  R_AARCH64_CALL26	_printk
    2038: 710006bf     	cmp	w21, #0x1
    203c: 54fffd61     	b.ne	0x1fe8 <goodix_fb_state_chg_callback+0x60>
    2040: b9400268     	ldr	w8, [x19]
    2044: 7100051f     	cmp	w8, #0x1
    2048: 54000200     	b.eq	0x2088 <goodix_fb_state_chg_callback+0x100>
    204c: 7100091f     	cmp	w8, #0x2
    2050: 540003e1     	b.ne	0x20cc <goodix_fb_state_chg_callback+0x144>
    2054: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    2058: 91000273     	add	x19, x19, #0x0
		0000000000002058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    205c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		000000000000205c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf77
    2060: 91000000     	add	x0, x0, #0x0
		0000000000002060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf77
    2064: aa1303e1     	mov	x1, x19
    2068: 94000000     	bl	0x2068 <goodix_fb_state_chg_callback+0xe0>
		0000000000002068:  R_AARCH64_CALL26	_printk
    206c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		000000000000206c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e
    2070: 91000000     	add	x0, x0, #0x0
		0000000000002070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e
    2074: aa1303e1     	mov	x1, x19
    2078: 3901c69f     	strb	wzr, [x20, #0x71]
    207c: 94000000     	bl	0x207c <goodix_fb_state_chg_callback+0xf4>
		000000000000207c:  R_AARCH64_CALL26	_printk
    2080: 52800068     	mov	w8, #0x3                // =3
    2084: 1400000e     	b	0x20bc <goodix_fb_state_chg_callback+0x134>
    2088: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    208c: 91000273     	add	x19, x19, #0x0
		000000000000208c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    2090: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d0
    2094: 91000000     	add	x0, x0, #0x0
		0000000000002094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d0
    2098: aa1303e1     	mov	x1, x19
    209c: 94000000     	bl	0x209c <goodix_fb_state_chg_callback+0x114>
		000000000000209c:  R_AARCH64_CALL26	_printk
    20a0: 52800028     	mov	w8, #0x1                // =1
    20a4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000020a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd54
    20a8: 91000000     	add	x0, x0, #0x0
		00000000000020a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd54
    20ac: aa1303e1     	mov	x1, x19
    20b0: 3901c688     	strb	w8, [x20, #0x71]
    20b4: 94000000     	bl	0x20b4 <goodix_fb_state_chg_callback+0x12c>
		00000000000020b4:  R_AARCH64_CALL26	_printk
    20b8: 52800048     	mov	w8, #0x2                // =2
    20bc: 910013e0     	add	x0, sp, #0x4
    20c0: 390013e8     	strb	w8, [sp, #0x4]
    20c4: 94000000     	bl	0x20c4 <goodix_fb_state_chg_callback+0x13c>
		00000000000020c4:  R_AARCH64_CALL26	sendnlmsg
    20c8: 17ffffc8     	b	0x1fe8 <goodix_fb_state_chg_callback+0x60>
    20cc: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000020cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0
    20d0: 91000000     	add	x0, x0, #0x0
		00000000000020d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0
    20d4: 17ffffc2     	b	0x1fdc <goodix_fb_state_chg_callback+0x54>
    20d8: 94000000     	bl	0x20d8 <goodix_fb_state_chg_callback+0x150>
		00000000000020d8:  R_AARCH64_CALL26	__stack_chk_fail
