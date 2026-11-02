
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c358 <tpd_set_sensibility_level>:
   1c358: d503233f     	paciasp
   1c35c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c360: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c364: 910003fd     	mov	x29, sp
   1c368: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c36c: 2a0103f4     	mov	w20, w1
   1c370: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c374: 91000000     	add	x0, x0, #0x0
		000000000001c374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c378: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6188
   1c37c: 91000021     	add	x1, x1, #0x0
		000000000001c37c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6188
   1c380: 94000000     	bl	0x1c380 <tpd_set_sensibility_level+0x28>
		000000000001c380:  R_AARCH64_CALL26	_printk
   1c384: b40002f3     	cbz	x19, 0x1c3e0 <tpd_set_sensibility_level+0x88>
   1c388: f9413a69     	ldr	x9, [x19, #0x270]
   1c38c: f9400268     	ldr	x8, [x19]
   1c390: b940b92a     	ldr	w10, [x9, #0xb8]
   1c394: 340000aa     	cbz	w10, 0x1c3a8 <tpd_set_sensibility_level+0x50>
   1c398: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c39c: 36000069     	tbz	w9, #0x0, 0x1c3a8 <tpd_set_sensibility_level+0x50>
   1c3a0: 2a1f03e2     	mov	w2, wzr
   1c3a4: 14000002     	b	0x1c3ac <tpd_set_sensibility_level+0x54>
   1c3a8: b9420d02     	ldr	w2, [x8, #0x20c]
   1c3ac: b9457e68     	ldr	w8, [x19, #0x57c]
   1c3b0: 12001e89     	and	w9, w20, #0xff
   1c3b4: 721e169f     	tst	w20, #0xfc
   1c3b8: 5280008a     	mov	w10, #0x4               // =4
   1c3bc: 1a8a0121     	csel	w1, w9, w10, eq
   1c3c0: 7100051f     	cmp	w8, #0x1
   1c3c4: b905fe61     	str	w1, [x19, #0x5fc]
   1c3c8: 54000161     	b.ne	0x1c3f4 <tpd_set_sensibility_level+0x9c>
   1c3cc: aa1303e0     	mov	x0, x19
   1c3d0: 94000000     	bl	0x1c3d0 <tpd_set_sensibility_level+0x78>
		000000000001c3d0:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
   1c3d4: 37f80160     	tbnz	w0, #0x1f, 0x1c400 <tpd_set_sensibility_level+0xa8>
   1c3d8: 2a1f03e0     	mov	w0, wzr
   1c3dc: 14000002     	b	0x1c3e4 <tpd_set_sensibility_level+0x8c>
   1c3e0: 128002a0     	mov	w0, #-0x16              // =-22
   1c3e4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c3e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c3ec: d50323bf     	autiasp
   1c3f0: d65f03c0     	ret
   1c3f4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c3f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c3f8: 91000000     	add	x0, x0, #0x0
		000000000001c3f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c3fc: 14000003     	b	0x1c408 <tpd_set_sensibility_level+0xb0>
   1c400: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55d6
   1c404: 91000000     	add	x0, x0, #0x0
		000000000001c404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55d6
   1c408: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6188
   1c40c: 91000021     	add	x1, x1, #0x0
		000000000001c40c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6188
   1c410: 94000000     	bl	0x1c410 <tpd_set_sensibility_level+0xb8>
		000000000001c410:  R_AARCH64_CALL26	_printk
   1c414: 17fffff1     	b	0x1c3d8 <tpd_set_sensibility_level+0x80>
