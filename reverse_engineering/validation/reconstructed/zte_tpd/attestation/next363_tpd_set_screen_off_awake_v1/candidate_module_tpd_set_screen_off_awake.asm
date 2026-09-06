
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021074 <tpd_set_screen_off_awake>:
   21074: f946dc08     	ldr	x8, [x0, #0xdb8]
   21078: b9457d09     	ldr	w9, [x8, #0x57c]
   2107c: b905f501     	str	w1, [x8, #0x5f4]
   21080: 7100053f     	cmp	w9, #0x1
   21084: 540000c1     	b.ne	0x2109c <tpd_set_screen_off_awake+0x28>
   21088: b905f101     	str	w1, [x8, #0x5f0]
   2108c: 90000008     	adrp	x8, 0x21000 <tpd_set_rotation_limit_level+0x5c>
		000000000002108c:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   21090: 2a1f03e0     	mov	w0, wzr
   21094: b9000101     	str	w1, [x8]
		0000000000021094:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   21098: d65f03c0     	ret
   2109c: d503233f     	paciasp
   210a0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   210a4: 910003fd     	mov	x29, sp
   210a8: 90000000     	adrp	x0, 0x21000 <tpd_set_rotation_limit_level+0x5c>
		00000000000210a8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
   210ac: 91000000     	add	x0, x0, #0x0
		00000000000210ac:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
   210b0: 90000001     	adrp	x1, 0x21000 <tpd_set_rotation_limit_level+0x5c>
		00000000000210b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dc3
   210b4: 91000021     	add	x1, x1, #0x0
		00000000000210b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dc3
   210b8: 94000000     	bl	0x210b8 <tpd_set_screen_off_awake+0x44>
		00000000000210b8:  R_AARCH64_CALL26	_printk
   210bc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   210c0: d50323bf     	autiasp
   210c4: 2a1f03e0     	mov	w0, wzr
   210c8: d65f03c0     	ret
