
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019878 <one_key_report>:
   19878: d503233f     	paciasp
   1987c: d10103ff     	sub	sp, sp, #0x40
   19880: a9027bfd     	stp	x29, x30, [sp, #0x20]
   19884: f9001bf3     	str	x19, [sp, #0x30]
   19888: 910083fd     	add	x29, sp, #0x20
   1988c: d5384108     	mrs	x8, SP_EL0
   19890: f9438908     	ldr	x8, [x8, #0x710]
   19894: f81f83a8     	stur	x8, [x29, #-0x8]
   19898: 34000400     	cbz	w0, 0x19918 <one_key_report+0xa0>
   1989c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001989c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   198a0: f9400109     	ldr	x9, [x8]
		00000000000198a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   198a4: 79403d2a     	ldrh	w10, [x9, #0x1e]
   198a8: 79404528     	ldrh	w8, [x9, #0x22]
   198ac: 4b08014b     	sub	w11, w10, w8
   198b0: 0b0a010a     	add	w10, w8, w10
   198b4: 6b01017f     	cmp	w11, w1
   198b8: 7a41b144     	ccmp	w10, w1, #0x4, lt
   198bc: 540003ad     	b.le	0x19930 <one_key_report+0xb8>
   198c0: 79404129     	ldrh	w9, [x9, #0x20]
   198c4: 4b08012a     	sub	w10, w9, w8
   198c8: 6b02015f     	cmp	w10, w2
   198cc: 5400032a     	b.ge	0x19930 <one_key_report+0xb8>
   198d0: 0b080128     	add	w8, w9, w8
   198d4: 6b02011f     	cmp	w8, w2
   198d8: 540002cd     	b.le	0x19930 <one_key_report+0xb8>
   198dc: 7100287f     	cmp	w3, #0xa
   198e0: 54000682     	b.hs	0x199b0 <one_key_report+0x138>
   198e4: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000198e4:  R_AARCH64_ADR_PREL_PG_HI21	one_key_report.one_key_finger
   198e8: 91000108     	add	x8, x8, #0x0
		00000000000198e8:  R_AARCH64_ADD_ABS_LO12_NC	one_key_report.one_key_finger
   198ec: 38634909     	ldrb	w9, [x8, w3, uxtw]
   198f0: 35000209     	cbnz	w9, 0x19930 <one_key_report+0xb8>
   198f4: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		00000000000198f4:  R_AARCH64_ADR_PREL_PG_HI21	one_key_report.one_key_down
   198f8: 3940012a     	ldrb	w10, [x9]
		00000000000198f8:  R_AARCH64_LDST8_ABS_LO12_NC	one_key_report.one_key_down
   198fc: 370001aa     	tbnz	w10, #0x0, 0x19930 <one_key_report+0xb8>
   19900: 5280002a     	mov	w10, #0x1               // =1
   19904: 3823490a     	strb	w10, [x8, w3, uxtw]
   19908: 90000013     	adrp	x19, 0x19000 <tp_ghost_check+0x32c>
		0000000000019908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b256
   1990c: 91000273     	add	x19, x19, #0x0
		000000000001990c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b256
   19910: 3900012a     	strb	w10, [x9]
		0000000000019910:  R_AARCH64_LDST8_ABS_LO12_NC	one_key_report.one_key_down
   19914: 14000016     	b	0x1996c <one_key_report+0xf4>
   19918: 7100247f     	cmp	w3, #0x9
   1991c: 540004a8     	b.hi	0x199b0 <one_key_report+0x138>
   19920: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019920:  R_AARCH64_ADR_PREL_PG_HI21	one_key_report.one_key_finger
   19924: 91000108     	add	x8, x8, #0x0
		0000000000019924:  R_AARCH64_ADD_ABS_LO12_NC	one_key_report.one_key_finger
   19928: 38634909     	ldrb	w9, [x8, w3, uxtw]
   1992c: 35000169     	cbnz	w9, 0x19958 <one_key_report+0xe0>
   19930: d5384108     	mrs	x8, SP_EL0
   19934: f9438908     	ldr	x8, [x8, #0x710]
   19938: f85f83a9     	ldur	x9, [x29, #-0x8]
   1993c: eb09011f     	cmp	x8, x9
   19940: 54000361     	b.ne	0x199ac <one_key_report+0x134>
   19944: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   19948: f9401bf3     	ldr	x19, [sp, #0x30]
   1994c: 910103ff     	add	sp, sp, #0x40
   19950: d50323bf     	autiasp
   19954: d65f03c0     	ret
   19958: 3823491f     	strb	wzr, [x8, w3, uxtw]
   1995c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001995c:  R_AARCH64_ADR_PREL_PG_HI21	one_key_report.one_key_down
   19960: 90000013     	adrp	x19, 0x19000 <tp_ghost_check+0x32c>
		0000000000019960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d09
   19964: 91000273     	add	x19, x19, #0x0
		0000000000019964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d09
   19968: 3900011f     	strb	wzr, [x8]
		0000000000019968:  R_AARCH64_LDST8_ABS_LO12_NC	one_key_report.one_key_down
   1996c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001996c:  R_AARCH64_ADR_PREL_PG_HI21	one_key_finger_id
   19970: 91000108     	add	x8, x8, #0x0
		0000000000019970:  R_AARCH64_ADD_ABS_LO12_NC	one_key_finger_id
   19974: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		0000000000019974:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   19978: f8635908     	ldr	x8, [x8, w3, uxtw #3]
   1997c: 910003e2     	mov	x2, sp
   19980: 52800041     	mov	w1, #0x2                // =2
   19984: f9000bff     	str	xzr, [sp, #0x10]
   19988: a90023f3     	stp	x19, x8, [sp]
   1998c: f9400128     	ldr	x8, [x9]
		000000000001998c:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   19990: 91004100     	add	x0, x8, #0x10
   19994: 94000000     	bl	0x19994 <one_key_report+0x11c>
		0000000000019994:  R_AARCH64_CALL26	kobject_uevent_env
   19998: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdd5
   1999c: 91000000     	add	x0, x0, #0x0
		000000000001999c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdd5
   199a0: aa1303e1     	mov	x1, x19
   199a4: 94000000     	bl	0x199a4 <one_key_report+0x12c>
		00000000000199a4:  R_AARCH64_CALL26	_printk
   199a8: 17ffffe2     	b	0x19930 <one_key_report+0xb8>
   199ac: 94000000     	bl	0x199ac <one_key_report+0x134>
		00000000000199ac:  R_AARCH64_CALL26	__stack_chk_fail
   199b0: d42aa240     	brk	#0x5512
