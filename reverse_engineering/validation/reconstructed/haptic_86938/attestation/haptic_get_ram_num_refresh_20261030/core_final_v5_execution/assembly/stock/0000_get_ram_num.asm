
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008828 <get_ram_num>:
    8828: d503233f     	paciasp
    882c: d10103ff     	sub	sp, sp, #0x40
    8830: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8834: f90013f5     	str	x21, [sp, #0x20]
    8838: a9034ff4     	stp	x20, x19, [sp, #0x30]
    883c: 910043fd     	add	x29, sp, #0x10
    8840: d5384108     	mrs	x8, SP_EL0
    8844: f9438908     	ldr	x8, [x8, #0x710]
    8848: f90007e8     	str	x8, [sp, #0x8]
    884c: 39401808     	ldrb	w8, [x0, #0x6]
    8850: 79000bff     	strh	wzr, [sp, #0x4]
    8854: 36000a88     	tbz	w8, #0x0, 0x89a4 <get_ram_num+0x17c>
    8858: aa0003f3     	mov	x19, x0
    885c: 910bc000     	add	x0, x0, #0x2f0
    8860: 94000000     	bl	0x8860 <get_ram_num+0x38>
		0000000000008860:  R_AARCH64_CALL26	mutex_lock
    8864: f942e668     	ldr	x8, [x19, #0x5c8]
    8868: aa1303e0     	mov	x0, x19
    886c: f9401d08     	ldr	x8, [x8, #0x38]
    8870: b85fc110     	ldur	w16, [x8, #-0x4]
    8874: 72810611     	movk	w17, #0x830
    8878: 72b08f51     	movk	w17, #0x847a, lsl #16
    887c: 6b11021f     	cmp	w16, w17
    8880: 54000040     	b.eq	0x8888 <get_ram_num+0x60>
    8884: d4304500     	brk	#0x8228
    8888: d63f0100     	blr	x8
    888c: f942e668     	ldr	x8, [x19, #0x5c8]
    8890: aa1303e0     	mov	x0, x19
    8894: 52800021     	mov	w1, #0x1                // =1
    8898: f9403508     	ldr	x8, [x8, #0x68]
    889c: b85fc110     	ldur	w16, [x8, #-0x4]
    88a0: 729bedd1     	movk	w17, #0xdf6e
    88a4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    88a8: 6b11021f     	cmp	w16, w17
    88ac: 54000040     	b.eq	0x88b4 <get_ram_num+0x8c>
    88b0: d4304500     	brk	#0x8228
    88b4: d63f0100     	blr	x8
    88b8: f942e668     	ldr	x8, [x19, #0x5c8]
    88bc: aa1303e0     	mov	x0, x19
    88c0: f9407d08     	ldr	x8, [x8, #0xf8]
    88c4: b85fc110     	ldur	w16, [x8, #-0x4]
    88c8: 72810611     	movk	w17, #0x830
    88cc: 72b08f51     	movk	w17, #0x847a, lsl #16
    88d0: 6b11021f     	cmp	w16, w17
    88d4: 54000040     	b.eq	0x88dc <get_ram_num+0xb4>
    88d8: d4304500     	brk	#0x8228
    88dc: d63f0100     	blr	x8
    88e0: f942e668     	ldr	x8, [x19, #0x5c8]
    88e4: 910013e1     	add	x1, sp, #0x4
    88e8: aa1303e0     	mov	x0, x19
    88ec: f9409908     	ldr	x8, [x8, #0x130]
    88f0: b85fc110     	ldur	w16, [x8, #-0x4]
    88f4: 729ad191     	movk	w17, #0xd68c
    88f8: 72a27851     	movk	w17, #0x13c2, lsl #16
    88fc: 6b11021f     	cmp	w16, w17
    8900: 54000040     	b.eq	0x8908 <get_ram_num+0xe0>
    8904: d4304500     	brk	#0x8228
    8908: d63f0100     	blr	x8
    890c: 79400be8     	ldrh	w8, [sp, #0x4]
    8910: b9445a69     	ldr	w9, [x19, #0x458]
    8914: 90000014     	adrp	x20, 0x8000 <reg_show+0x10>
		0000000000008914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8918: 91000294     	add	x20, x20, #0x0
		0000000000008918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    891c: 90000015     	adrp	x21, 0x8000 <reg_show+0x10>
		000000000000891c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22b0
    8920: 910002b5     	add	x21, x21, #0x0
		0000000000008920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22b0
    8924: 5ac00504     	rev16	w4, w8
    8928: 2a2903e8     	mvn	w8, w9
    892c: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		000000000000892c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22bc
    8930: 91000000     	add	x0, x0, #0x0
		0000000000008930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22bc
    8934: 0b080088     	add	w8, w4, w8
    8938: aa1403e1     	mov	x1, x20
    893c: 53027d08     	lsr	w8, w8, #2
    8940: 52804ee2     	mov	w2, #0x277              // =631
    8944: aa1503e3     	mov	x3, x21
    8948: 39117268     	strb	w8, [x19, #0x45c]
    894c: 94000000     	bl	0x894c <get_ram_num+0x124>
		000000000000894c:  R_AARCH64_CALL26	_printk
    8950: 39517264     	ldrb	w4, [x19, #0x45c]
    8954: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b44
    8958: 91000000     	add	x0, x0, #0x0
		0000000000008958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b44
    895c: aa1403e1     	mov	x1, x20
    8960: 52804f02     	mov	w2, #0x278              // =632
    8964: aa1503e3     	mov	x3, x21
    8968: 94000000     	bl	0x8968 <get_ram_num+0x140>
		0000000000008968:  R_AARCH64_CALL26	_printk
    896c: f942e668     	ldr	x8, [x19, #0x5c8]
    8970: aa1303e0     	mov	x0, x19
    8974: 2a1f03e1     	mov	w1, wzr
    8978: f9403508     	ldr	x8, [x8, #0x68]
    897c: b85fc110     	ldur	w16, [x8, #-0x4]
    8980: 729bedd1     	movk	w17, #0xdf6e
    8984: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    8988: 6b11021f     	cmp	w16, w17
    898c: 54000040     	b.eq	0x8994 <get_ram_num+0x16c>
    8990: d4304500     	brk	#0x8228
    8994: d63f0100     	blr	x8
    8998: 910bc260     	add	x0, x19, #0x2f0
    899c: 94000000     	bl	0x899c <get_ram_num+0x174>
		000000000000899c:  R_AARCH64_CALL26	mutex_unlock
    89a0: 14000009     	b	0x89c4 <get_ram_num+0x19c>
    89a4: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		00000000000089a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c9
    89a8: 91000000     	add	x0, x0, #0x0
		00000000000089a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c9
    89ac: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		00000000000089ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    89b0: 91000021     	add	x1, x1, #0x0
		00000000000089b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    89b4: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		00000000000089b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22b0
    89b8: 91000063     	add	x3, x3, #0x0
		00000000000089b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22b0
    89bc: 52804d02     	mov	w2, #0x268              // =616
    89c0: 94000000     	bl	0x89c0 <get_ram_num+0x198>
		00000000000089c0:  R_AARCH64_CALL26	_printk
    89c4: d5384108     	mrs	x8, SP_EL0
    89c8: f9438908     	ldr	x8, [x8, #0x710]
    89cc: f94007e9     	ldr	x9, [sp, #0x8]
    89d0: eb09011f     	cmp	x8, x9
    89d4: 540000e1     	b.ne	0x89f0 <get_ram_num+0x1c8>
    89d8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    89dc: f94013f5     	ldr	x21, [sp, #0x20]
    89e0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    89e4: 910103ff     	add	sp, sp, #0x40
    89e8: d50323bf     	autiasp
    89ec: d65f03c0     	ret
    89f0: 94000000     	bl	0x89f0 <get_ram_num+0x1c8>
		00000000000089f0:  R_AARCH64_CALL26	__stack_chk_fail
