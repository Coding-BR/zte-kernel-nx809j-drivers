
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004734 <aw22xxx_set_cfg_run_state>:
    4734: d503233f     	paciasp
    4738: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    473c: a90157f6     	stp	x22, x21, [sp, #0x10]
    4740: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4744: 910003fd     	mov	x29, sp
    4748: 53187c13     	lsr	w19, w0, #24
    474c: 90000016     	adrp	x22, 0x4000 <aw22xxx_cfg_show+0x28>
		000000000000474c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x111c
    4750: 910002d6     	add	x22, x22, #0x0
		0000000000004750:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x111c
    4754: 2a0003f5     	mov	w21, w0
    4758: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_show+0x28>
		0000000000004758:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x921
    475c: 91000000     	add	x0, x0, #0x0
		000000000000475c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x921
    4760: aa1603e1     	mov	x1, x22
    4764: 5280e9a2     	mov	w2, #0x74d              // =1869
    4768: 2a1303e3     	mov	w3, w19
    476c: 94000000     	bl	0x476c <aw22xxx_set_cfg_run_state+0x38>
		000000000000476c:  R_AARCH64_CALL26	_printk
    4770: 530c5eb4     	ubfx	w20, w21, #12, #12
    4774: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_show+0x28>
		0000000000004774:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x22c
    4778: 91000000     	add	x0, x0, #0x0
		0000000000004778:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x22c
    477c: aa1603e1     	mov	x1, x22
    4780: 5280e9e2     	mov	w2, #0x74f              // =1871
    4784: 2a1403e3     	mov	w3, w20
    4788: 94000000     	bl	0x4788 <aw22xxx_set_cfg_run_state+0x54>
		0000000000004788:  R_AARCH64_CALL26	_printk
    478c: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_show+0x28>
		000000000000478c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1965
    4790: 91000000     	add	x0, x0, #0x0
		0000000000004790:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1965
    4794: 12002ea3     	and	w3, w21, #0xfff
    4798: aa1603e1     	mov	x1, x22
    479c: 5280ea22     	mov	w2, #0x751              // =1873
    47a0: 94000000     	bl	0x47a0 <aw22xxx_set_cfg_run_state+0x6c>
		00000000000047a0:  R_AARCH64_CALL26	_printk
    47a4: 7100067f     	cmp	w19, #0x1
    47a8: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_show+0x28>
		00000000000047a8:  R_AARCH64_ADR_PREL_PG_HI21	g_cfg_cur_state
    47ac: 540000a1     	b.ne	0x47c0 <aw22xxx_set_cfg_run_state+0x8c>
    47b0: 35000094     	cbnz	w20, 0x47c0 <aw22xxx_set_cfg_run_state+0x8c>
    47b4: b9400109     	ldr	w9, [x8]
		00000000000047b4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    47b8: 121e7929     	and	w9, w9, #0xfffffffd
    47bc: 14000020     	b	0x483c <aw22xxx_set_cfg_run_state+0x108>
    47c0: 71000e7f     	cmp	w19, #0x3
    47c4: 540000a1     	b.ne	0x47d8 <aw22xxx_set_cfg_run_state+0xa4>
    47c8: 35000094     	cbnz	w20, 0x47d8 <aw22xxx_set_cfg_run_state+0xa4>
    47cc: b9400109     	ldr	w9, [x8]
		00000000000047cc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    47d0: 121f7929     	and	w9, w9, #0xfffffffe
    47d4: 1400001a     	b	0x483c <aw22xxx_set_cfg_run_state+0x108>
    47d8: 71000e7f     	cmp	w19, #0x3
    47dc: 540000c1     	b.ne	0x47f4 <aw22xxx_set_cfg_run_state+0xc0>
    47e0: 71000a9f     	cmp	w20, #0x2
    47e4: 54000081     	b.ne	0x47f4 <aw22xxx_set_cfg_run_state+0xc0>
    47e8: b9400109     	ldr	w9, [x8]
		00000000000047e8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    47ec: 32000129     	orr	w9, w9, #0x1
    47f0: 14000013     	b	0x483c <aw22xxx_set_cfg_run_state+0x108>
    47f4: 71000a7f     	cmp	w19, #0x2
    47f8: 540000a1     	b.ne	0x480c <aw22xxx_set_cfg_run_state+0xd8>
    47fc: 35000094     	cbnz	w20, 0x480c <aw22xxx_set_cfg_run_state+0xd8>
    4800: b9400109     	ldr	w9, [x8]
		0000000000004800:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    4804: 121d7929     	and	w9, w9, #0xfffffffb
    4808: 1400000d     	b	0x483c <aw22xxx_set_cfg_run_state+0x108>
    480c: b9400109     	ldr	w9, [x8]
		000000000000480c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    4810: 71000a7f     	cmp	w19, #0x2
    4814: 540000c1     	b.ne	0x482c <aw22xxx_set_cfg_run_state+0xf8>
    4818: 5104068a     	sub	w10, w20, #0x101
    481c: 71000d5f     	cmp	w10, #0x3
    4820: 54000068     	b.hi	0x482c <aw22xxx_set_cfg_run_state+0xf8>
    4824: 321e0129     	orr	w9, w9, #0x4
    4828: 14000005     	b	0x483c <aw22xxx_set_cfg_run_state+0x108>
    482c: 71000e7f     	cmp	w19, #0x3
    4830: 5280002a     	mov	w10, #0x1               // =1
    4834: 1a8a054a     	cinc	w10, w10, ne
    4838: 2a0a0129     	orr	w9, w9, w10
    483c: b9000109     	str	w9, [x8]
		000000000000483c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    4840: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4844: a94157f6     	ldp	x22, x21, [sp, #0x10]
    4848: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    484c: d50323bf     	autiasp
    4850: d65f03c0     	ret
