
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f74 <goodix_fb_state_chg_callback>:
    1f74: d503233f     	paciasp
    1f78: d10103ff     	sub	sp, sp, #0x40
    1f7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f80: f90013f5     	str	x21, [sp, #0x20]
    1f84: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1f88: 910043fd     	add	x29, sp, #0x10
    1f8c: d5384108     	mrs	x8, SP_EL0
    1f90: f9438908     	ldr	x8, [x8, #0x710]
    1f94: f90007e8     	str	x8, [sp, #0x8]
    1f98: 390013ff     	strb	wzr, [sp, #0x4]
    1f9c: b4000121     	cbz	x1, 0x1fc0 <goodix_fb_state_chg_callback+0x4c>
    1fa0: b4000102     	cbz	x2, 0x1fc0 <goodix_fb_state_chg_callback+0x4c>
    1fa4: 3941cc48     	ldrb	w8, [x2, #0x73]
    1fa8: 35000068     	cbnz	w8, 0x1fb4 <goodix_fb_state_chg_callback+0x40>
    1fac: 3941c048     	ldrb	w8, [x2, #0x70]
    1fb0: 35000288     	cbnz	w8, 0x2000 <goodix_fb_state_chg_callback+0x8c>
    1fb4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
    1fb8: 91000000     	add	x0, x0, #0x0
		0000000000001fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
    1fbc: 14000003     	b	0x1fc8 <goodix_fb_state_chg_callback+0x54>
    1fc0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1123
    1fc4: 91000000     	add	x0, x0, #0x0
		0000000000001fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1123
    1fc8: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x999
    1fcc: 91000021     	add	x1, x1, #0x0
		0000000000001fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x999
    1fd0: 94000000     	bl	0x1fd0 <goodix_fb_state_chg_callback+0x5c>
		0000000000001fd0:  R_AARCH64_CALL26	_printk
    1fd4: d5384108     	mrs	x8, SP_EL0
    1fd8: f9438908     	ldr	x8, [x8, #0x710]
    1fdc: f94007e9     	ldr	x9, [sp, #0x8]
    1fe0: eb09011f     	cmp	x8, x9
    1fe4: 54000701     	b.ne	0x20c4 <goodix_fb_state_chg_callback+0x150>
    1fe8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1fec: f94013f5     	ldr	x21, [sp, #0x20]
    1ff0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1ff4: 910103ff     	add	sp, sp, #0x40
    1ff8: d50323bf     	autiasp
    1ffc: d65f03c0     	ret
    2000: 90000008     	adrp	x8, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x163f
    2004: 91000108     	add	x8, x8, #0x0
		0000000000002004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x163f
    2008: aa0103f3     	mov	x19, x1
    200c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		000000000000200c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x999
    2010: 91000021     	add	x1, x1, #0x0
		0000000000002010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x999
    2014: 2a0003f5     	mov	w21, w0
    2018: aa0803e0     	mov	x0, x8
    201c: aa0203f4     	mov	x20, x2
    2020: 94000000     	bl	0x2020 <goodix_fb_state_chg_callback+0xac>
		0000000000002020:  R_AARCH64_CALL26	_printk
    2024: 710006bf     	cmp	w21, #0x1
    2028: 54fffd61     	b.ne	0x1fd4 <goodix_fb_state_chg_callback+0x60>
    202c: b9400268     	ldr	w8, [x19]
    2030: 7100051f     	cmp	w8, #0x1
    2034: 54000200     	b.eq	0x2074 <goodix_fb_state_chg_callback+0x100>
    2038: 7100091f     	cmp	w8, #0x2
    203c: 540003e1     	b.ne	0x20b8 <goodix_fb_state_chg_callback+0x144>
    2040: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x999
    2044: 91000273     	add	x19, x19, #0x0
		0000000000002044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x999
    2048: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf45
    204c: 91000000     	add	x0, x0, #0x0
		000000000000204c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf45
    2050: aa1303e1     	mov	x1, x19
    2054: 94000000     	bl	0x2054 <goodix_fb_state_chg_callback+0xe0>
		0000000000002054:  R_AARCH64_CALL26	_printk
    2058: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c
    205c: 91000000     	add	x0, x0, #0x0
		000000000000205c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c
    2060: aa1303e1     	mov	x1, x19
    2064: 3901c69f     	strb	wzr, [x20, #0x71]
    2068: 94000000     	bl	0x2068 <goodix_fb_state_chg_callback+0xf4>
		0000000000002068:  R_AARCH64_CALL26	_printk
    206c: 52800068     	mov	w8, #0x3                // =3
    2070: 1400000e     	b	0x20a8 <goodix_fb_state_chg_callback+0x134>
    2074: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x999
    2078: 91000273     	add	x19, x19, #0x0
		0000000000002078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x999
    207c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		000000000000207c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x89e
    2080: 91000000     	add	x0, x0, #0x0
		0000000000002080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x89e
    2084: aa1303e1     	mov	x1, x19
    2088: 94000000     	bl	0x2088 <goodix_fb_state_chg_callback+0x114>
		0000000000002088:  R_AARCH64_CALL26	_printk
    208c: 52800028     	mov	w8, #0x1                // =1
    2090: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd22
    2094: 91000000     	add	x0, x0, #0x0
		0000000000002094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd22
    2098: aa1303e1     	mov	x1, x19
    209c: 3901c688     	strb	w8, [x20, #0x71]
    20a0: 94000000     	bl	0x20a0 <goodix_fb_state_chg_callback+0x12c>
		00000000000020a0:  R_AARCH64_CALL26	_printk
    20a4: 52800048     	mov	w8, #0x2                // =2
    20a8: 910013e0     	add	x0, sp, #0x4
    20ac: 390013e8     	strb	w8, [sp, #0x4]
    20b0: 94000000     	bl	0x20b0 <goodix_fb_state_chg_callback+0x13c>
		00000000000020b0:  R_AARCH64_CALL26	sendnlmsg
    20b4: 17ffffc8     	b	0x1fd4 <goodix_fb_state_chg_callback+0x60>
    20b8: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000020b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e
    20bc: 91000000     	add	x0, x0, #0x0
		00000000000020bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e
    20c0: 17ffffc2     	b	0x1fc8 <goodix_fb_state_chg_callback+0x54>
    20c4: 94000000     	bl	0x20c4 <goodix_fb_state_chg_callback+0x150>
		00000000000020c4:  R_AARCH64_CALL26	__stack_chk_fail
