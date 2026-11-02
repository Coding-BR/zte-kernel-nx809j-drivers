
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c5f0 <tpd_set_rotation_limit_level>:
   1c5f0: d503233f     	paciasp
   1c5f4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c5f8: f9000bf5     	str	x21, [sp, #0x10]
   1c5fc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c600: 910003fd     	mov	x29, sp
   1c604: aa0003f4     	mov	x20, x0
   1c608: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c60c: 2a0103f5     	mov	w21, w1
   1c610: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c614: 91000000     	add	x0, x0, #0x0
		000000000001c614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c618: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb520
   1c61c: 91000021     	add	x1, x1, #0x0
		000000000001c61c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb520
   1c620: 94000000     	bl	0x1c620 <tpd_set_rotation_limit_level+0x30>
		000000000001c620:  R_AARCH64_CALL26	_printk
   1c624: b4000313     	cbz	x19, 0x1c684 <tpd_set_rotation_limit_level+0x94>
   1c628: f9413a69     	ldr	x9, [x19, #0x270]
   1c62c: f9400268     	ldr	x8, [x19]
   1c630: b940b92a     	ldr	w10, [x9, #0xb8]
   1c634: 340000aa     	cbz	w10, 0x1c648 <tpd_set_rotation_limit_level+0x58>
   1c638: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c63c: 36000069     	tbz	w9, #0x0, 0x1c648 <tpd_set_rotation_limit_level+0x58>
   1c640: 2a1f03e2     	mov	w2, wzr
   1c644: 14000002     	b	0x1c64c <tpd_set_rotation_limit_level+0x5c>
   1c648: b9420d02     	ldr	w2, [x8, #0x20c]
   1c64c: b9457e68     	ldr	w8, [x19, #0x57c]
   1c650: 71000ebf     	cmp	w21, #0x3
   1c654: 52800069     	mov	w9, #0x3                // =3
   1c658: 1a89b2a9     	csel	w9, w21, w9, lt
   1c65c: 7100051f     	cmp	w8, #0x1
   1c660: b9060e69     	str	w9, [x19, #0x60c]
   1c664: 540001c1     	b.ne	0x1c69c <tpd_set_rotation_limit_level+0xac>
   1c668: b9401281     	ldr	w1, [x20, #0x10]
   1c66c: aa1303e0     	mov	x0, x19
   1c670: 94000000     	bl	0x1c670 <tpd_set_rotation_limit_level+0x80>
		000000000001c670:  R_AARCH64_CALL26	syna_dev_set_display_rotation
   1c674: 340000a0     	cbz	w0, 0x1c688 <tpd_set_rotation_limit_level+0x98>
   1c678: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad2
   1c67c: 91000000     	add	x0, x0, #0x0
		000000000001c67c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad2
   1c680: 14000009     	b	0x1c6a4 <tpd_set_rotation_limit_level+0xb4>
   1c684: 128002a0     	mov	w0, #-0x16              // =-22
   1c688: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c68c: f9400bf5     	ldr	x21, [sp, #0x10]
   1c690: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c694: d50323bf     	autiasp
   1c698: d65f03c0     	ret
   1c69c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c69c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c6a0: 91000000     	add	x0, x0, #0x0
		000000000001c6a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c6a4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c6a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb520
   1c6a8: 91000021     	add	x1, x1, #0x0
		000000000001c6a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb520
   1c6ac: 94000000     	bl	0x1c6ac <tpd_set_rotation_limit_level+0xbc>
		000000000001c6ac:  R_AARCH64_CALL26	_printk
   1c6b0: 2a1f03e0     	mov	w0, wzr
   1c6b4: 17fffff5     	b	0x1c688 <tpd_set_rotation_limit_level+0x98>
