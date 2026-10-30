
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000236c <aw22xxx_cfg_show>:
    236c: d503233f     	paciasp
    2370: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2374: f9000bf3     	str	x19, [sp, #0x10]
    2378: 910003fd     	mov	x29, sp
    237c: f9404c08     	ldr	x8, [x0, #0x98]
    2380: aa0203f3     	mov	x19, x2
    2384: b942f103     	ldr	w3, [x8, #0x2f0]
    2388: 7100287f     	cmp	w3, #0xa
    238c: 540001a8     	b.hi	0x23c0 <aw22xxx_cfg_show+0x54>
    2390: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002390:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61c0
    2394: 90000002     	adrp	x2, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x169d
    2398: 91000042     	add	x2, x2, #0x0
		0000000000002398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x169d
    239c: f9400108     	ldr	x8, [x8]
		000000000000239c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    23a0: aa1303e0     	mov	x0, x19
    23a4: 52820001     	mov	w1, #0x1000             // =4096
    23a8: f8637903     	ldr	x3, [x8, x3, lsl #3]
    23ac: 94000000     	bl	0x23ac <aw22xxx_cfg_show+0x40>
		00000000000023ac:  R_AARCH64_CALL26	snprintf
    23b0: 713ffc1f     	cmp	w0, #0xfff
    23b4: 54000129     	b.ls	0x23d8 <aw22xxx_cfg_show+0x6c>
    23b8: 928001a0     	mov	x0, #-0xe               // =-14
    23bc: 14000009     	b	0x23e0 <aw22xxx_cfg_show+0x74>
    23c0: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000023c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1016
    23c4: 91000000     	add	x0, x0, #0x0
		00000000000023c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1016
    23c8: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000023c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f0
    23cc: 91000021     	add	x1, x1, #0x0
		00000000000023cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f0
    23d0: 52810242     	mov	w2, #0x812              // =2066
    23d4: 94000000     	bl	0x23d4 <aw22xxx_cfg_show+0x68>
		00000000000023d4:  R_AARCH64_CALL26	_printk
    23d8: aa1303e0     	mov	x0, x19
    23dc: 94000000     	bl	0x23dc <aw22xxx_cfg_show+0x70>
		00000000000023dc:  R_AARCH64_CALL26	strlen
    23e0: f9400bf3     	ldr	x19, [sp, #0x10]
    23e4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    23e8: d50323bf     	autiasp
    23ec: d65f03c0     	ret
