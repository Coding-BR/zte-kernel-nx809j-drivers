
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f6c <goodix_fb_state_chg_callback>:
    1f6c: d503233f     	paciasp
    1f70: d10103ff     	sub	sp, sp, #0x40
    1f74: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f78: f90013f5     	str	x21, [sp, #0x20]
    1f7c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1f80: 910043fd     	add	x29, sp, #0x10
    1f84: d5384108     	mrs	x8, SP_EL0
    1f88: f9438908     	ldr	x8, [x8, #0x710]
    1f8c: f90007e8     	str	x8, [sp, #0x8]
    1f90: 390013ff     	strb	wzr, [sp, #0x4]
    1f94: b40000e1     	cbz	x1, 0x1fb0 <goodix_fb_state_chg_callback+0x44>
    1f98: b40000c2     	cbz	x2, 0x1fb0 <goodix_fb_state_chg_callback+0x44>
    1f9c: 3941c048     	ldrb	w8, [x2, #0x70]
    1fa0: 35000148     	cbnz	w8, 0x1fc8 <goodix_fb_state_chg_callback+0x5c>
    1fa4: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd
    1fa8: 91000000     	add	x0, x0, #0x0
		0000000000001fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd
    1fac: 14000003     	b	0x1fb8 <goodix_fb_state_chg_callback+0x4c>
    1fb0: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdad
    1fb4: 91000000     	add	x0, x0, #0x0
		0000000000001fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdad
    1fb8: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    1fbc: 91000021     	add	x1, x1, #0x0
		0000000000001fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    1fc0: 94000000     	bl	0x1fc0 <goodix_fb_state_chg_callback+0x54>
		0000000000001fc0:  R_AARCH64_CALL26	_printk
    1fc4: 1400000c     	b	0x1ff4 <goodix_fb_state_chg_callback+0x88>
    1fc8: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		0000000000001fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1312
    1fcc: 91000108     	add	x8, x8, #0x0
		0000000000001fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1312
    1fd0: aa0103f3     	mov	x19, x1
    1fd4: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    1fd8: 91000021     	add	x1, x1, #0x0
		0000000000001fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    1fdc: 2a0003f5     	mov	w21, w0
    1fe0: aa0803e0     	mov	x0, x8
    1fe4: aa0203f4     	mov	x20, x2
    1fe8: 94000000     	bl	0x1fe8 <goodix_fb_state_chg_callback+0x7c>
		0000000000001fe8:  R_AARCH64_CALL26	_printk
    1fec: 710006bf     	cmp	w21, #0x1
    1ff0: 54000180     	b.eq	0x2020 <goodix_fb_state_chg_callback+0xb4>
    1ff4: d5384108     	mrs	x8, SP_EL0
    1ff8: f9438908     	ldr	x8, [x8, #0x710]
    1ffc: f94007e9     	ldr	x9, [sp, #0x8]
    2000: eb09011f     	cmp	x8, x9
    2004: 540005a1     	b.ne	0x20b8 <goodix_fb_state_chg_callback+0x14c>
    2008: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    200c: f94013f5     	ldr	x21, [sp, #0x20]
    2010: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2014: 910103ff     	add	sp, sp, #0x40
    2018: d50323bf     	autiasp
    201c: d65f03c0     	ret
    2020: b9400268     	ldr	w8, [x19]
    2024: 7100051f     	cmp	w8, #0x1
    2028: 54000200     	b.eq	0x2068 <goodix_fb_state_chg_callback+0xfc>
    202c: 7100091f     	cmp	w8, #0x2
    2030: 540003e1     	b.ne	0x20ac <goodix_fb_state_chg_callback+0x140>
    2034: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0x94>
		0000000000002034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    2038: 91000273     	add	x19, x19, #0x0
		0000000000002038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    203c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x94>
		000000000000203c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xca1
    2040: 91000000     	add	x0, x0, #0x0
		0000000000002040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xca1
    2044: aa1303e1     	mov	x1, x19
    2048: 94000000     	bl	0x2048 <goodix_fb_state_chg_callback+0xdc>
		0000000000002048:  R_AARCH64_CALL26	_printk
    204c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x94>
		000000000000204c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x101
    2050: 91000000     	add	x0, x0, #0x0
		0000000000002050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x101
    2054: aa1303e1     	mov	x1, x19
    2058: 3901c69f     	strb	wzr, [x20, #0x71]
    205c: 94000000     	bl	0x205c <goodix_fb_state_chg_callback+0xf0>
		000000000000205c:  R_AARCH64_CALL26	_printk
    2060: 52800068     	mov	w8, #0x3                // =3
    2064: 1400000e     	b	0x209c <goodix_fb_state_chg_callback+0x130>
    2068: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0x94>
		0000000000002068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    206c: 91000273     	add	x19, x19, #0x0
		000000000000206c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    2070: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x94>
		0000000000002070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fe
    2074: 91000000     	add	x0, x0, #0x0
		0000000000002074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fe
    2078: aa1303e1     	mov	x1, x19
    207c: 94000000     	bl	0x207c <goodix_fb_state_chg_callback+0x110>
		000000000000207c:  R_AARCH64_CALL26	_printk
    2080: 52800028     	mov	w8, #0x1                // =1
    2084: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x94>
		0000000000002084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1f
    2088: 91000000     	add	x0, x0, #0x0
		0000000000002088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1f
    208c: aa1303e1     	mov	x1, x19
    2090: 3901c688     	strb	w8, [x20, #0x71]
    2094: 94000000     	bl	0x2094 <goodix_fb_state_chg_callback+0x128>
		0000000000002094:  R_AARCH64_CALL26	_printk
    2098: 52800048     	mov	w8, #0x2                // =2
    209c: 910013e0     	add	x0, sp, #0x4
    20a0: 390013e8     	strb	w8, [sp, #0x4]
    20a4: 97fffd59     	bl	0x1608 <sendnlmsg>
    20a8: 17ffffd3     	b	0x1ff4 <goodix_fb_state_chg_callback+0x88>
    20ac: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x94>
		00000000000020ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x153
    20b0: 91000000     	add	x0, x0, #0x0
		00000000000020b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x153
    20b4: 17ffffc1     	b	0x1fb8 <goodix_fb_state_chg_callback+0x4c>
    20b8: 94000000     	bl	0x20b8 <goodix_fb_state_chg_callback+0x14c>
		00000000000020b8:  R_AARCH64_CALL26	__stack_chk_fail
