
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

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
    1f7c: b40000e1     	cbz	x1, 0x1f98 <goodix_fb_state_chg_callback+0x44>
    1f80: b40000c2     	cbz	x2, 0x1f98 <goodix_fb_state_chg_callback+0x44>
    1f84: 3941c048     	ldrb	w8, [x2, #0x70]
    1f88: 35000148     	cbnz	w8, 0x1fb0 <goodix_fb_state_chg_callback+0x5c>
    1f8c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75f
    1f90: 91000000     	add	x0, x0, #0x0
		0000000000001f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75f
    1f94: 14000003     	b	0x1fa0 <goodix_fb_state_chg_callback+0x4c>
    1f98: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x942
    1f9c: 91000000     	add	x0, x0, #0x0
		0000000000001f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x942
    1fa0: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48b
    1fa4: 91000021     	add	x1, x1, #0x0
		0000000000001fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48b
    1fa8: 94000000     	bl	0x1fa8 <goodix_fb_state_chg_callback+0x54>
		0000000000001fa8:  R_AARCH64_CALL26	_printk
    1fac: 1400000b     	b	0x1fd8 <goodix_fb_state_chg_callback+0x84>
    1fb0: 90000008     	adrp	x8, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x341
    1fb4: 91000108     	add	x8, x8, #0x0
		0000000000001fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x341
    1fb8: aa0103f3     	mov	x19, x1
    1fbc: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48b
    1fc0: 91000021     	add	x1, x1, #0x0
		0000000000001fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48b
    1fc4: 2a0003f5     	mov	w21, w0
    1fc8: aa0803e0     	mov	x0, x8
    1fcc: aa0203f4     	mov	x20, x2
    1fd0: 94000000     	bl	0x1fd0 <goodix_fb_state_chg_callback+0x7c>
		0000000000001fd0:  R_AARCH64_CALL26	_printk
    1fd4: 34000195     	cbz	w21, 0x2004 <goodix_fb_state_chg_callback+0xb0>
    1fd8: d5384108     	mrs	x8, SP_EL0
    1fdc: f9438908     	ldr	x8, [x8, #0x710]
    1fe0: f94007e9     	ldr	x9, [sp, #0x8]
    1fe4: eb09011f     	cmp	x8, x9
    1fe8: 540005e1     	b.ne	0x20a4 <goodix_fb_state_chg_callback+0x150>
    1fec: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1ff0: f94013f5     	ldr	x21, [sp, #0x20]
    1ff4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1ff8: 910103ff     	add	sp, sp, #0x40
    1ffc: d50323bf     	autiasp
    2000: d65f03c0     	ret
    2004: b9400268     	ldr	w8, [x19]
    2008: 7100051f     	cmp	w8, #0x1
    200c: 54000240     	b.eq	0x2054 <goodix_fb_state_chg_callback+0x100>
    2010: 7100091f     	cmp	w8, #0x2
    2014: 54000421     	b.ne	0x2098 <goodix_fb_state_chg_callback+0x144>
    2018: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48b
    201c: 91000273     	add	x19, x19, #0x0
		000000000000201c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48b
    2020: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1065
    2024: 91000000     	add	x0, x0, #0x0
		0000000000002024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1065
    2028: aa1303e1     	mov	x1, x19
    202c: 94000000     	bl	0x202c <goodix_fb_state_chg_callback+0xd8>
		000000000000202c:  R_AARCH64_CALL26	_printk
    2030: 52800028     	mov	w8, #0x1                // =1
    2034: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad1
    2038: 91000000     	add	x0, x0, #0x0
		0000000000002038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad1
    203c: aa1303e1     	mov	x1, x19
    2040: 52800022     	mov	w2, #0x1                // =1
    2044: 3901c688     	strb	w8, [x20, #0x71]
    2048: 94000000     	bl	0x2048 <goodix_fb_state_chg_callback+0xf4>
		0000000000002048:  R_AARCH64_CALL26	_printk
    204c: 52800048     	mov	w8, #0x2                // =2
    2050: 1400000e     	b	0x2088 <goodix_fb_state_chg_callback+0x134>
    2054: 90000013     	adrp	x19, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48b
    2058: 91000273     	add	x19, x19, #0x0
		0000000000002058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48b
    205c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000205c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xce5
    2060: 91000000     	add	x0, x0, #0x0
		0000000000002060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xce5
    2064: aa1303e1     	mov	x1, x19
    2068: 94000000     	bl	0x2068 <goodix_fb_state_chg_callback+0x114>
		0000000000002068:  R_AARCH64_CALL26	_printk
    206c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000206c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad1
    2070: 91000000     	add	x0, x0, #0x0
		0000000000002070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad1
    2074: aa1303e1     	mov	x1, x19
    2078: 2a1f03e2     	mov	w2, wzr
    207c: 3901c69f     	strb	wzr, [x20, #0x71]
    2080: 94000000     	bl	0x2080 <goodix_fb_state_chg_callback+0x12c>
		0000000000002080:  R_AARCH64_CALL26	_printk
    2084: 52800068     	mov	w8, #0x3                // =3
    2088: 910013e0     	add	x0, sp, #0x4
    208c: 390013e8     	strb	w8, [sp, #0x4]
    2090: 97fffd58     	bl	0x15f0 <sendnlmsg>
    2094: 17ffffd1     	b	0x1fd8 <goodix_fb_state_chg_callback+0x84>
    2098: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x603
    209c: 91000000     	add	x0, x0, #0x0
		000000000000209c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x603
    20a0: 17ffffc0     	b	0x1fa0 <goodix_fb_state_chg_callback+0x4c>
    20a4: 94000000     	bl	0x20a4 <goodix_fb_state_chg_callback+0x150>
		00000000000020a4:  R_AARCH64_CALL26	__stack_chk_fail
