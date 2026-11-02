
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026194 <tpd_set_screen_off_awake>:
   26194: f946dc08     	ldr	x8, [x0, #0xdb8]
   26198: b9457d09     	ldr	w9, [x8, #0x57c]
   2619c: b905f501     	str	w1, [x8, #0x5f4]
   261a0: 7100053f     	cmp	w9, #0x1
   261a4: 540000c1     	b.ne	0x261bc <tpd_set_screen_off_awake+0x28>
   261a8: b905f101     	str	w1, [x8, #0x5f0]
   261ac: 90000008     	adrp	x8, 0x26000 <tpd_set_frame_data+0x70>
		00000000000261ac:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   261b0: 2a1f03e0     	mov	w0, wzr
   261b4: b9000101     	str	w1, [x8]
		00000000000261b4:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   261b8: d65f03c0     	ret
   261bc: d503233f     	paciasp
   261c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   261c4: 910003fd     	mov	x29, sp
   261c8: 90000000     	adrp	x0, 0x26000 <tpd_set_frame_data+0x70>
		00000000000261c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   261cc: 91000000     	add	x0, x0, #0x0
		00000000000261cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   261d0: 90000001     	adrp	x1, 0x26000 <tpd_set_frame_data+0x70>
		00000000000261d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9e
   261d4: 91000021     	add	x1, x1, #0x0
		00000000000261d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9e
   261d8: 94000000     	bl	0x261d8 <tpd_set_screen_off_awake+0x44>
		00000000000261d8:  R_AARCH64_CALL26	_printk
   261dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   261e0: d50323bf     	autiasp
   261e4: 2a1f03e0     	mov	w0, wzr
   261e8: d65f03c0     	ret
