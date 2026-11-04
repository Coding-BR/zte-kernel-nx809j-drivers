
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e68 <goodix_fb_state_chg_callback>:
     e68: d503233f     	paciasp
     e6c: d10103ff     	sub	sp, sp, #0x40
     e70: a9017bfd     	stp	x29, x30, [sp, #0x10]
     e74: f90013f5     	str	x21, [sp, #0x20]
     e78: a9034ff4     	stp	x20, x19, [sp, #0x30]
     e7c: 910043fd     	add	x29, sp, #0x10
     e80: d5384108     	mrs	x8, SP_EL0
     e84: f9438908     	ldr	x8, [x8, #0x710]
     e88: f90007e8     	str	x8, [sp, #0x8]
     e8c: 390013ff     	strb	wzr, [sp, #0x4]
     e90: b40000e1     	cbz	x1, 0xeac <goodix_fb_state_chg_callback+0x44>
     e94: b40000c2     	cbz	x2, 0xeac <goodix_fb_state_chg_callback+0x44>
     e98: 3941c048     	ldrb	w8, [x2, #0x70]
     e9c: 35000148     	cbnz	w8, 0xec4 <goodix_fb_state_chg_callback+0x5c>
     ea0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x656
     ea4: 91000000     	add	x0, x0, #0x0
		0000000000000ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x656
     ea8: 14000003     	b	0xeb4 <goodix_fb_state_chg_callback+0x4c>
     eac: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132c
     eb0: 91000000     	add	x0, x0, #0x0
		0000000000000eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132c
     eb4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
     eb8: 91000021     	add	x1, x1, #0x0
		0000000000000eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
     ebc: 94000000     	bl	0xebc <goodix_fb_state_chg_callback+0x54>
		0000000000000ebc:  R_AARCH64_CALL26	_printk
     ec0: 1400000c     	b	0xef0 <goodix_fb_state_chg_callback+0x88>
     ec4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b5
     ec8: 91000108     	add	x8, x8, #0x0
		0000000000000ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b5
     ecc: aa0103f3     	mov	x19, x1
     ed0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
     ed4: 91000021     	add	x1, x1, #0x0
		0000000000000ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
     ed8: 2a0003f5     	mov	w21, w0
     edc: aa0803e0     	mov	x0, x8
     ee0: aa0203f4     	mov	x20, x2
     ee4: 94000000     	bl	0xee4 <goodix_fb_state_chg_callback+0x7c>
		0000000000000ee4:  R_AARCH64_CALL26	_printk
     ee8: 710006bf     	cmp	w21, #0x1
     eec: 54000180     	b.eq	0xf1c <goodix_fb_state_chg_callback+0xb4>
     ef0: d5384108     	mrs	x8, SP_EL0
     ef4: f9438908     	ldr	x8, [x8, #0x710]
     ef8: f94007e9     	ldr	x9, [sp, #0x8]
     efc: eb09011f     	cmp	x8, x9
     f00: 540005a1     	b.ne	0xfb4 <goodix_fb_state_chg_callback+0x14c>
     f04: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     f08: f94013f5     	ldr	x21, [sp, #0x20]
     f0c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     f10: 910103ff     	add	sp, sp, #0x40
     f14: d50323bf     	autiasp
     f18: d65f03c0     	ret
     f1c: b9400268     	ldr	w8, [x19]
     f20: 7100051f     	cmp	w8, #0x1
     f24: 54000200     	b.eq	0xf64 <goodix_fb_state_chg_callback+0xfc>
     f28: 7100091f     	cmp	w8, #0x2
     f2c: 540003e1     	b.ne	0xfa8 <goodix_fb_state_chg_callback+0x140>
     f30: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
     f34: 91000273     	add	x19, x19, #0x0
		0000000000000f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
     f38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x424
     f3c: 91000000     	add	x0, x0, #0x0
		0000000000000f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x424
     f40: aa1303e1     	mov	x1, x19
     f44: 94000000     	bl	0xf44 <goodix_fb_state_chg_callback+0xdc>
		0000000000000f44:  R_AARCH64_CALL26	_printk
     f48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49d
     f4c: 91000000     	add	x0, x0, #0x0
		0000000000000f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49d
     f50: aa1303e1     	mov	x1, x19
     f54: 3901c69f     	strb	wzr, [x20, #0x71]
     f58: 94000000     	bl	0xf58 <goodix_fb_state_chg_callback+0xf0>
		0000000000000f58:  R_AARCH64_CALL26	_printk
     f5c: 52800068     	mov	w8, #0x3                // =3
     f60: 1400000e     	b	0xf98 <goodix_fb_state_chg_callback+0x130>
     f64: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
     f68: 91000273     	add	x19, x19, #0x0
		0000000000000f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
     f6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf69
     f70: 91000000     	add	x0, x0, #0x0
		0000000000000f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf69
     f74: aa1303e1     	mov	x1, x19
     f78: 94000000     	bl	0xf78 <goodix_fb_state_chg_callback+0x110>
		0000000000000f78:  R_AARCH64_CALL26	_printk
     f7c: 52800028     	mov	w8, #0x1                // =1
     f80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7b
     f84: 91000000     	add	x0, x0, #0x0
		0000000000000f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7b
     f88: aa1303e1     	mov	x1, x19
     f8c: 3901c688     	strb	w8, [x20, #0x71]
     f90: 94000000     	bl	0xf90 <goodix_fb_state_chg_callback+0x128>
		0000000000000f90:  R_AARCH64_CALL26	_printk
     f94: 52800048     	mov	w8, #0x2                // =2
     f98: 910013e0     	add	x0, sp, #0x4
     f9c: 390013e8     	strb	w8, [sp, #0x4]
     fa0: 94000000     	bl	0xfa0 <goodix_fb_state_chg_callback+0x138>
		0000000000000fa0:  R_AARCH64_CALL26	sendnlmsg
     fa4: 17ffffd3     	b	0xef0 <goodix_fb_state_chg_callback+0x88>
     fa8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11dc
     fac: 91000000     	add	x0, x0, #0x0
		0000000000000fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11dc
     fb0: 17ffffc1     	b	0xeb4 <goodix_fb_state_chg_callback+0x4c>
     fb4: 94000000     	bl	0xfb4 <goodix_fb_state_chg_callback+0x14c>
		0000000000000fb4:  R_AARCH64_CALL26	__stack_chk_fail
