
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e6c <goodix_fb_state_chg_callback>:
     e6c: d503233f     	paciasp
     e70: d10103ff     	sub	sp, sp, #0x40
     e74: a9017bfd     	stp	x29, x30, [sp, #0x10]
     e78: f90013f5     	str	x21, [sp, #0x20]
     e7c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     e80: 910043fd     	add	x29, sp, #0x10
     e84: d5384108     	mrs	x8, SP_EL0
     e88: f9438908     	ldr	x8, [x8, #0x710]
     e8c: f90007e8     	str	x8, [sp, #0x8]
     e90: 390013ff     	strb	wzr, [sp, #0x4]
     e94: b40000e1     	cbz	x1, 0xeb0 <goodix_fb_state_chg_callback+0x44>
     e98: b40000c2     	cbz	x2, 0xeb0 <goodix_fb_state_chg_callback+0x44>
     e9c: 3941c048     	ldrb	w8, [x2, #0x70]
     ea0: 35000148     	cbnz	w8, 0xec8 <goodix_fb_state_chg_callback+0x5c>
     ea4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x656
     ea8: 91000000     	add	x0, x0, #0x0
		0000000000000ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x656
     eac: 14000003     	b	0xeb8 <goodix_fb_state_chg_callback+0x4c>
     eb0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132c
     eb4: 91000000     	add	x0, x0, #0x0
		0000000000000eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132c
     eb8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
     ebc: 91000021     	add	x1, x1, #0x0
		0000000000000ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
     ec0: 94000000     	bl	0xec0 <goodix_fb_state_chg_callback+0x54>
		0000000000000ec0:  R_AARCH64_CALL26	_printk
     ec4: 1400000c     	b	0xef4 <goodix_fb_state_chg_callback+0x88>
     ec8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b5
     ecc: 91000108     	add	x8, x8, #0x0
		0000000000000ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b5
     ed0: aa0103f3     	mov	x19, x1
     ed4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
     ed8: 91000021     	add	x1, x1, #0x0
		0000000000000ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
     edc: 2a0003f5     	mov	w21, w0
     ee0: aa0803e0     	mov	x0, x8
     ee4: aa0203f4     	mov	x20, x2
     ee8: 94000000     	bl	0xee8 <goodix_fb_state_chg_callback+0x7c>
		0000000000000ee8:  R_AARCH64_CALL26	_printk
     eec: 710006bf     	cmp	w21, #0x1
     ef0: 54000180     	b.eq	0xf20 <goodix_fb_state_chg_callback+0xb4>
     ef4: d5384108     	mrs	x8, SP_EL0
     ef8: f9438908     	ldr	x8, [x8, #0x710]
     efc: f94007e9     	ldr	x9, [sp, #0x8]
     f00: eb09011f     	cmp	x8, x9
     f04: 540005a1     	b.ne	0xfb8 <goodix_fb_state_chg_callback+0x14c>
     f08: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     f0c: f94013f5     	ldr	x21, [sp, #0x20]
     f10: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     f14: 910103ff     	add	sp, sp, #0x40
     f18: d50323bf     	autiasp
     f1c: d65f03c0     	ret
     f20: b9400268     	ldr	w8, [x19]
     f24: 7100051f     	cmp	w8, #0x1
     f28: 54000200     	b.eq	0xf68 <goodix_fb_state_chg_callback+0xfc>
     f2c: 7100091f     	cmp	w8, #0x2
     f30: 540003e1     	b.ne	0xfac <goodix_fb_state_chg_callback+0x140>
     f34: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
     f38: 91000273     	add	x19, x19, #0x0
		0000000000000f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
     f3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x424
     f40: 91000000     	add	x0, x0, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x424
     f44: aa1303e1     	mov	x1, x19
     f48: 94000000     	bl	0xf48 <goodix_fb_state_chg_callback+0xdc>
		0000000000000f48:  R_AARCH64_CALL26	_printk
     f4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49d
     f50: 91000000     	add	x0, x0, #0x0
		0000000000000f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49d
     f54: aa1303e1     	mov	x1, x19
     f58: 3901c69f     	strb	wzr, [x20, #0x71]
     f5c: 94000000     	bl	0xf5c <goodix_fb_state_chg_callback+0xf0>
		0000000000000f5c:  R_AARCH64_CALL26	_printk
     f60: 52800068     	mov	w8, #0x3                // =3
     f64: 1400000e     	b	0xf9c <goodix_fb_state_chg_callback+0x130>
     f68: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
     f6c: 91000273     	add	x19, x19, #0x0
		0000000000000f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
     f70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf69
     f74: 91000000     	add	x0, x0, #0x0
		0000000000000f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf69
     f78: aa1303e1     	mov	x1, x19
     f7c: 94000000     	bl	0xf7c <goodix_fb_state_chg_callback+0x110>
		0000000000000f7c:  R_AARCH64_CALL26	_printk
     f80: 52800028     	mov	w8, #0x1                // =1
     f84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7b
     f88: 91000000     	add	x0, x0, #0x0
		0000000000000f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7b
     f8c: aa1303e1     	mov	x1, x19
     f90: 3901c688     	strb	w8, [x20, #0x71]
     f94: 94000000     	bl	0xf94 <goodix_fb_state_chg_callback+0x128>
		0000000000000f94:  R_AARCH64_CALL26	_printk
     f98: 52800048     	mov	w8, #0x2                // =2
     f9c: 910013e0     	add	x0, sp, #0x4
     fa0: 390013e8     	strb	w8, [sp, #0x4]
     fa4: 94000000     	bl	0xfa4 <goodix_fb_state_chg_callback+0x138>
		0000000000000fa4:  R_AARCH64_CALL26	sendnlmsg
     fa8: 17ffffd3     	b	0xef4 <goodix_fb_state_chg_callback+0x88>
     fac: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11dc
     fb0: 91000000     	add	x0, x0, #0x0
		0000000000000fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11dc
     fb4: 17ffffc1     	b	0xeb8 <goodix_fb_state_chg_callback+0x4c>
     fb8: 94000000     	bl	0xfb8 <goodix_fb_state_chg_callback+0x14c>
		0000000000000fb8:  R_AARCH64_CALL26	__stack_chk_fail
