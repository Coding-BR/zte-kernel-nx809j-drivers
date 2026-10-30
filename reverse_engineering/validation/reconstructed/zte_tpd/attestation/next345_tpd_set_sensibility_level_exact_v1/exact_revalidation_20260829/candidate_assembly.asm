
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c2fc <tpd_set_sensibility_level>:
   1c2fc: d503233f     	paciasp
   1c300: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c304: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c308: 910003fd     	mov	x29, sp
   1c30c: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c310: 2a0103f4     	mov	w20, w1
   1c314: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c318: 91000000     	add	x0, x0, #0x0
		000000000001c318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c31c: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c31c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6188
   1c320: 91000021     	add	x1, x1, #0x0
		000000000001c320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6188
   1c324: 94000000     	bl	0x1c324 <tpd_set_sensibility_level+0x28>
		000000000001c324:  R_AARCH64_CALL26	_printk
   1c328: b40002f3     	cbz	x19, 0x1c384 <tpd_set_sensibility_level+0x88>
   1c32c: f9413a69     	ldr	x9, [x19, #0x270]
   1c330: f9400268     	ldr	x8, [x19]
   1c334: b940b92a     	ldr	w10, [x9, #0xb8]
   1c338: 340000aa     	cbz	w10, 0x1c34c <tpd_set_sensibility_level+0x50>
   1c33c: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c340: 36000069     	tbz	w9, #0x0, 0x1c34c <tpd_set_sensibility_level+0x50>
   1c344: 2a1f03e2     	mov	w2, wzr
   1c348: 14000002     	b	0x1c350 <tpd_set_sensibility_level+0x54>
   1c34c: b9420d02     	ldr	w2, [x8, #0x20c]
   1c350: b9457e68     	ldr	w8, [x19, #0x57c]
   1c354: 12001e89     	and	w9, w20, #0xff
   1c358: 721e169f     	tst	w20, #0xfc
   1c35c: 5280008a     	mov	w10, #0x4               // =4
   1c360: 1a8a0121     	csel	w1, w9, w10, eq
   1c364: 7100051f     	cmp	w8, #0x1
   1c368: b905fe61     	str	w1, [x19, #0x5fc]
   1c36c: 54000161     	b.ne	0x1c398 <tpd_set_sensibility_level+0x9c>
   1c370: aa1303e0     	mov	x0, x19
   1c374: 94000000     	bl	0x1c374 <tpd_set_sensibility_level+0x78>
		000000000001c374:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
   1c378: 37f80160     	tbnz	w0, #0x1f, 0x1c3a4 <tpd_set_sensibility_level+0xa8>
   1c37c: 2a1f03e0     	mov	w0, wzr
   1c380: 14000002     	b	0x1c388 <tpd_set_sensibility_level+0x8c>
   1c384: 128002a0     	mov	w0, #-0x16              // =-22
   1c388: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c38c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c390: d50323bf     	autiasp
   1c394: d65f03c0     	ret
   1c398: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c39c: 91000000     	add	x0, x0, #0x0
		000000000001c39c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c3a0: 14000003     	b	0x1c3ac <tpd_set_sensibility_level+0xb0>
   1c3a4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c3a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55d6
   1c3a8: 91000000     	add	x0, x0, #0x0
		000000000001c3a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55d6
   1c3ac: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c3ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6188
   1c3b0: 91000021     	add	x1, x1, #0x0
		000000000001c3b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6188
   1c3b4: 94000000     	bl	0x1c3b4 <tpd_set_sensibility_level+0xb8>
		000000000001c3b4:  R_AARCH64_CALL26	_printk
   1c3b8: 17fffff1     	b	0x1c37c <tpd_set_sensibility_level+0x80>
