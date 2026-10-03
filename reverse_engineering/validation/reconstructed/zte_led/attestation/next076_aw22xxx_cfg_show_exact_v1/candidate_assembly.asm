
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004704 <aw22xxx_cfg_show>:
    4704: d503233f     	paciasp
    4708: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    470c: f9000bf3     	str	x19, [sp, #0x10]
    4710: 910003fd     	mov	x29, sp
    4714: f9404c08     	ldr	x8, [x0, #0x98]
    4718: aa0203f3     	mov	x19, x2
    471c: b942f103     	ldr	w3, [x8, #0x2f0]
    4720: 7100287f     	cmp	w3, #0xa
    4724: 540001a8     	b.hi	0x4758 <aw22xxx_cfg_show+0x54>
    4728: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_show+0x18>
		0000000000004728:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61c0
    472c: 90000002     	adrp	x2, 0x4000 <aw22xxx_effect_show+0x18>
		000000000000472c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x169d
    4730: 91000042     	add	x2, x2, #0x0
		0000000000004730:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x169d
    4734: f9400108     	ldr	x8, [x8]
		0000000000004734:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    4738: aa1303e0     	mov	x0, x19
    473c: 52820001     	mov	w1, #0x1000             // =4096
    4740: f8637903     	ldr	x3, [x8, x3, lsl #3]
    4744: 94000000     	bl	0x4744 <aw22xxx_cfg_show+0x40>
		0000000000004744:  R_AARCH64_CALL26	snprintf
    4748: 713ffc1f     	cmp	w0, #0xfff
    474c: 54000129     	b.ls	0x4770 <aw22xxx_cfg_show+0x6c>
    4750: 928001a0     	mov	x0, #-0xe               // =-14
    4754: 14000009     	b	0x4778 <aw22xxx_cfg_show+0x74>
    4758: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_show+0x18>
		0000000000004758:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1016
    475c: 91000000     	add	x0, x0, #0x0
		000000000000475c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1016
    4760: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_show+0x18>
		0000000000004760:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x15f0
    4764: 91000021     	add	x1, x1, #0x0
		0000000000004764:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x15f0
    4768: 52810242     	mov	w2, #0x812              // =2066
    476c: 94000000     	bl	0x476c <aw22xxx_cfg_show+0x68>
		000000000000476c:  R_AARCH64_CALL26	_printk
    4770: aa1303e0     	mov	x0, x19
    4774: 94000000     	bl	0x4774 <aw22xxx_cfg_show+0x70>
		0000000000004774:  R_AARCH64_CALL26	strlen
    4778: f9400bf3     	ldr	x19, [sp, #0x10]
    477c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4780: d50323bf     	autiasp
    4784: d65f03c0     	ret
