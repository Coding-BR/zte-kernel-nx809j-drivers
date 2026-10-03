
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003994 <aw22xxx_cfg_work_routine>:
    3994: d503233f     	paciasp
    3998: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    399c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    39a0: 910003fd     	mov	x29, sp
    39a4: aa0003f3     	mov	x19, x0
    39a8: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		00000000000039a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    39ac: 91000000     	add	x0, x0, #0x0
		00000000000039ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    39b0: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		00000000000039b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a3
    39b4: 91000021     	add	x1, x1, #0x0
		00000000000039b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a3
    39b8: 94000000     	bl	0x39b8 <aw22xxx_cfg_work_routine+0x24>
		00000000000039b8:  R_AARCH64_CALL26	_printk
    39bc: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		00000000000039bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb15
    39c0: 91000000     	add	x0, x0, #0x0
		00000000000039c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb15
    39c4: 94000000     	bl	0x39c4 <aw22xxx_cfg_work_routine+0x30>
		00000000000039c4:  R_AARCH64_CALL26	_printk
    39c8: 3942fe68     	ldrb	w8, [x19, #0xbf]
    39cc: 7100091f     	cmp	w8, #0x2
    39d0: 540003a1     	b.ne	0x3a44 <aw22xxx_cfg_work_routine+0xb0>
    39d4: b940d268     	ldr	w8, [x19, #0xd0]
    39d8: d108c274     	sub	x20, x19, #0x230
    39dc: 7100091f     	cmp	w8, #0x2
    39e0: 1a9f07e8     	cset	w8, ne
    39e4: 39046268     	strb	w8, [x19, #0x118]
    39e8: 90000008     	adrp	x8, 0x3000 <aw22xxx_play+0x84>
		00000000000039e8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3d
    39ec: 39400109     	ldrb	w9, [x8]
		00000000000039ec:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    39f0: 370000a9     	tbnz	w9, #0x0, 0x3a04 <aw22xxx_cfg_work_routine+0x70>
    39f4: 52800029     	mov	w9, #0x1                // =1
    39f8: aa1403e0     	mov	x0, x20
    39fc: 39000109     	strb	w9, [x8]
		00000000000039fc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x3d
    3a00: 97fff9db     	bl	0x216c <aw22xxx_init_cfg_update_array>
    3a04: d108a268     	sub	x8, x19, #0x228
    3a08: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003a08:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    3a0c: 91000000     	add	x0, x0, #0x0
		0000000000003a0c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    3a10: f9400103     	ldr	x3, [x8]
    3a14: 90000002     	adrp	x2, 0x3000 <aw22xxx_play+0x84>
		0000000000003a14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x3e
    3a18: 91000042     	add	x2, x2, #0x0
		0000000000003a18:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x3e
    3a1c: 90000006     	adrp	x6, 0x3000 <aw22xxx_play+0x84>
		0000000000003a1c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x22b4
    3a20: 910000c6     	add	x6, x6, #0x0
		0000000000003a20:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x22b4
    3a24: 52800021     	mov	w1, #0x1                // =1
    3a28: 52819804     	mov	w4, #0xcc0              // =3264
    3a2c: aa1403e5     	mov	x5, x20
    3a30: 94000000     	bl	0x3a30 <aw22xxx_cfg_work_routine+0x9c>
		0000000000003a30:  R_AARCH64_CALL26	request_firmware_nowait
    3a34: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    3a38: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3a3c: d50323bf     	autiasp
    3a40: d65f03c0     	ret
    3a44: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a60
    3a48: 91000000     	add	x0, x0, #0x0
		0000000000003a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a60
    3a4c: 94000000     	bl	0x3a4c <aw22xxx_cfg_work_routine+0xb8>
		0000000000003a4c:  R_AARCH64_CALL26	_printk
    3a50: 17fffff9     	b	0x3a34 <aw22xxx_cfg_work_routine+0xa0>
