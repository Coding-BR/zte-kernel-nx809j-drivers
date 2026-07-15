
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025920 <tpd_set_sensibility_level>:
   25920: d503233f     	paciasp
   25924: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   25928: a9014ff4     	stp	x20, x19, [sp, #0x10]
   2592c: 910003fd     	mov	x29, sp
   25930: f946dc13     	ldr	x19, [x0, #0xdb8]
   25934: 2a0103f4     	mov	w20, w1
   25938: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   2593c: 91000000     	add	x0, x0, #0x0
		000000000002593c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25940: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6028
   25944: 91000021     	add	x1, x1, #0x0
		0000000000025944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6028
   25948: 94000000     	bl	0x25948 <tpd_set_sensibility_level+0x28>
		0000000000025948:  R_AARCH64_CALL26	_printk
   2594c: b40002f3     	cbz	x19, 0x259a8 <tpd_set_sensibility_level+0x88>
   25950: f9413a69     	ldr	x9, [x19, #0x270]
   25954: f9400268     	ldr	x8, [x19]
   25958: b940b92a     	ldr	w10, [x9, #0xb8]
   2595c: 340000aa     	cbz	w10, 0x25970 <tpd_set_sensibility_level+0x50>
   25960: 3942f129     	ldrb	w9, [x9, #0xbc]
   25964: 36000069     	tbz	w9, #0x0, 0x25970 <tpd_set_sensibility_level+0x50>
   25968: 2a1f03e2     	mov	w2, wzr
   2596c: 14000002     	b	0x25974 <tpd_set_sensibility_level+0x54>
   25970: b9420d02     	ldr	w2, [x8, #0x20c]
   25974: b9457e68     	ldr	w8, [x19, #0x57c]
   25978: 12001e89     	and	w9, w20, #0xff
   2597c: 721e169f     	tst	w20, #0xfc
   25980: 5280008a     	mov	w10, #0x4               // =4
   25984: 1a8a0121     	csel	w1, w9, w10, eq
   25988: 7100051f     	cmp	w8, #0x1
   2598c: b905fe61     	str	w1, [x19, #0x5fc]
   25990: 54000161     	b.ne	0x259bc <tpd_set_sensibility_level+0x9c>
   25994: aa1303e0     	mov	x0, x19
   25998: 94000000     	bl	0x25998 <tpd_set_sensibility_level+0x78>
		0000000000025998:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
   2599c: 37f80160     	tbnz	w0, #0x1f, 0x259c8 <tpd_set_sensibility_level+0xa8>
   259a0: 2a1f03e0     	mov	w0, wzr
   259a4: 14000002     	b	0x259ac <tpd_set_sensibility_level+0x8c>
   259a8: 128002a0     	mov	w0, #-0x16              // =-22
   259ac: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   259b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   259b4: d50323bf     	autiasp
   259b8: d65f03c0     	ret
   259bc: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000259bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   259c0: 91000000     	add	x0, x0, #0x0
		00000000000259c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   259c4: 14000003     	b	0x259d0 <tpd_set_sensibility_level+0xb0>
   259c8: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000259c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54a3
   259cc: 91000000     	add	x0, x0, #0x0
		00000000000259cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54a3
   259d0: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000259d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6028
   259d4: 91000021     	add	x1, x1, #0x0
		00000000000259d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6028
   259d8: 94000000     	bl	0x259d8 <tpd_set_sensibility_level+0xb8>
		00000000000259d8:  R_AARCH64_CALL26	_printk
   259dc: 17fffff1     	b	0x259a0 <tpd_set_sensibility_level+0x80>
