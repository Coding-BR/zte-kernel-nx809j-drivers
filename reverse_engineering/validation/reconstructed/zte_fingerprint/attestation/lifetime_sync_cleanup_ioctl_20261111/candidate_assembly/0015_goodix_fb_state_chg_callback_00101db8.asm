
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f54 <goodix_fb_state_chg_callback>:
    1f54: d503233f     	paciasp
    1f58: d10103ff     	sub	sp, sp, #0x40
    1f5c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f60: f90013f5     	str	x21, [sp, #0x20]
    1f64: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1f68: 910043fd     	add	x29, sp, #0x10
    1f6c: d5384108     	mrs	x8, SP_EL0
    1f70: f9438908     	ldr	x8, [x8, #0x710]
    1f74: f90007e8     	str	x8, [sp, #0x8]
    1f78: 390013ff     	strb	wzr, [sp, #0x4]
    1f7c: b4000121     	cbz	x1, 0x1fa0 <goodix_fb_state_chg_callback+0x4c>
    1f80: b4000102     	cbz	x2, 0x1fa0 <goodix_fb_state_chg_callback+0x4c>
    1f84: 3941cc48     	ldrb	w8, [x2, #0x73]
    1f88: 35000068     	cbnz	w8, 0x1f94 <goodix_fb_state_chg_callback+0x40>
    1f8c: 3941c048     	ldrb	w8, [x2, #0x70]
    1f90: 35000288     	cbnz	w8, 0x1fe0 <goodix_fb_state_chg_callback+0x8c>
    1f94: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a
    1f98: 91000000     	add	x0, x0, #0x0
		0000000000001f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a
    1f9c: 14000003     	b	0x1fa8 <goodix_fb_state_chg_callback+0x54>
    1fa0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1155
    1fa4: 91000000     	add	x0, x0, #0x0
		0000000000001fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1155
    1fa8: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    1fac: 91000021     	add	x1, x1, #0x0
		0000000000001fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    1fb0: 94000000     	bl	0x1fb0 <goodix_fb_state_chg_callback+0x5c>
		0000000000001fb0:  R_AARCH64_CALL26	_printk
    1fb4: d5384108     	mrs	x8, SP_EL0
    1fb8: f9438908     	ldr	x8, [x8, #0x710]
    1fbc: f94007e9     	ldr	x9, [sp, #0x8]
    1fc0: eb09011f     	cmp	x8, x9
    1fc4: 54000701     	b.ne	0x20a4 <goodix_fb_state_chg_callback+0x150>
    1fc8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1fcc: f94013f5     	ldr	x21, [sp, #0x20]
    1fd0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1fd4: 910103ff     	add	sp, sp, #0x40
    1fd8: d50323bf     	autiasp
    1fdc: d65f03c0     	ret
    1fe0: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1671
    1fe4: 91000108     	add	x8, x8, #0x0
		0000000000001fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1671
    1fe8: aa0103f3     	mov	x19, x1
    1fec: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    1ff0: 91000021     	add	x1, x1, #0x0
		0000000000001ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    1ff4: 2a0003f5     	mov	w21, w0
    1ff8: aa0803e0     	mov	x0, x8
    1ffc: aa0203f4     	mov	x20, x2
    2000: 94000000     	bl	0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002000:  R_AARCH64_CALL26	_printk
    2004: 710006bf     	cmp	w21, #0x1
    2008: 54fffd61     	b.ne	0x1fb4 <goodix_fb_state_chg_callback+0x60>
    200c: b9400268     	ldr	w8, [x19]
    2010: 7100051f     	cmp	w8, #0x1
    2014: 54000200     	b.eq	0x2054 <goodix_fb_state_chg_callback+0x100>
    2018: 7100091f     	cmp	w8, #0x2
    201c: 540003e1     	b.ne	0x2098 <goodix_fb_state_chg_callback+0x144>
    2020: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    2024: 91000273     	add	x19, x19, #0x0
		0000000000002024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    2028: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf77
    202c: 91000000     	add	x0, x0, #0x0
		000000000000202c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf77
    2030: aa1303e1     	mov	x1, x19
    2034: 94000000     	bl	0x2034 <goodix_fb_state_chg_callback+0xe0>
		0000000000002034:  R_AARCH64_CALL26	_printk
    2038: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15e
    203c: 91000000     	add	x0, x0, #0x0
		000000000000203c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15e
    2040: aa1303e1     	mov	x1, x19
    2044: 3901c69f     	strb	wzr, [x20, #0x71]
    2048: 94000000     	bl	0x2048 <goodix_fb_state_chg_callback+0xf4>
		0000000000002048:  R_AARCH64_CALL26	_printk
    204c: 52800068     	mov	w8, #0x3                // =3
    2050: 1400000e     	b	0x2088 <goodix_fb_state_chg_callback+0x134>
    2054: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb
    2058: 91000273     	add	x19, x19, #0x0
		0000000000002058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb
    205c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000205c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d0
    2060: 91000000     	add	x0, x0, #0x0
		0000000000002060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d0
    2064: aa1303e1     	mov	x1, x19
    2068: 94000000     	bl	0x2068 <goodix_fb_state_chg_callback+0x114>
		0000000000002068:  R_AARCH64_CALL26	_printk
    206c: 52800028     	mov	w8, #0x1                // =1
    2070: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd54
    2074: 91000000     	add	x0, x0, #0x0
		0000000000002074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd54
    2078: aa1303e1     	mov	x1, x19
    207c: 3901c688     	strb	w8, [x20, #0x71]
    2080: 94000000     	bl	0x2080 <goodix_fb_state_chg_callback+0x12c>
		0000000000002080:  R_AARCH64_CALL26	_printk
    2084: 52800048     	mov	w8, #0x2                // =2
    2088: 910013e0     	add	x0, sp, #0x4
    208c: 390013e8     	strb	w8, [sp, #0x4]
    2090: 94000000     	bl	0x2090 <goodix_fb_state_chg_callback+0x13c>
		0000000000002090:  R_AARCH64_CALL26	sendnlmsg
    2094: 17ffffc8     	b	0x1fb4 <goodix_fb_state_chg_callback+0x60>
    2098: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0
    209c: 91000000     	add	x0, x0, #0x0
		000000000000209c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0
    20a0: 17ffffc2     	b	0x1fa8 <goodix_fb_state_chg_callback+0x54>
    20a4: 94000000     	bl	0x20a4 <goodix_fb_state_chg_callback+0x150>
		00000000000020a4:  R_AARCH64_CALL26	__stack_chk_fail
