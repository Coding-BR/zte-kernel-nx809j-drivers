
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000028c84 <tpd_set_screen_off_awake>:
   28c84: f946dc08     	ldr	x8, [x0, #0xdb8]
   28c88: b9457d09     	ldr	w9, [x8, #0x57c]
   28c8c: b905f501     	str	w1, [x8, #0x5f4]
   28c90: 7100053f     	cmp	w9, #0x1
   28c94: 540000c1     	b.ne	0x28cac <tpd_set_screen_off_awake+0x28>
   28c98: b905f101     	str	w1, [x8, #0x5f0]
   28c9c: 90000008     	adrp	x8, 0x28000 <zte_touch_probe+0x200>
		0000000000028c9c:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   28ca0: 2a1f03e0     	mov	w0, wzr
   28ca4: b9000101     	str	w1, [x8]
		0000000000028ca4:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   28ca8: d65f03c0     	ret
   28cac: d503233f     	paciasp
   28cb0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   28cb4: 910003fd     	mov	x29, sp
   28cb8: 90000000     	adrp	x0, 0x28000 <zte_touch_probe+0x200>
		0000000000028cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   28cbc: 91000000     	add	x0, x0, #0x0
		0000000000028cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   28cc0: 90000001     	adrp	x1, 0x28000 <zte_touch_probe+0x200>
		0000000000028cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc07e
   28cc4: 91000021     	add	x1, x1, #0x0
		0000000000028cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc07e
   28cc8: 94000000     	bl	0x28cc8 <tpd_set_screen_off_awake+0x44>
		0000000000028cc8:  R_AARCH64_CALL26	_printk
   28ccc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   28cd0: d50323bf     	autiasp
   28cd4: 2a1f03e0     	mov	w0, wzr
   28cd8: d65f03c0     	ret
