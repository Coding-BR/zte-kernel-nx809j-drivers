
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002abdc <tpd_set_screen_off_awake>:
   2abdc: f946dc08     	ldr	x8, [x0, #0xdb8]
   2abe0: b9457d09     	ldr	w9, [x8, #0x57c]
   2abe4: b905f501     	str	w1, [x8, #0x5f4]
   2abe8: 7100053f     	cmp	w9, #0x1
   2abec: 540000c1     	b.ne	0x2ac04 <tpd_set_screen_off_awake+0x28>
   2abf0: b905f101     	str	w1, [x8, #0x5f0]
   2abf4: 90000008     	adrp	x8, 0x2a000 <zte_touch_probe+0x2a8>
		000000000002abf4:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   2abf8: 2a1f03e0     	mov	w0, wzr
   2abfc: b9000101     	str	w1, [x8]
		000000000002abfc:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   2ac00: d65f03c0     	ret
   2ac04: d503233f     	paciasp
   2ac08: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   2ac0c: 910003fd     	mov	x29, sp
   2ac10: 90000000     	adrp	x0, 0x2a000 <zte_touch_probe+0x2a8>
		000000000002ac10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   2ac14: 91000000     	add	x0, x0, #0x0
		000000000002ac14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   2ac18: 90000001     	adrp	x1, 0x2a000 <zte_touch_probe+0x2a8>
		000000000002ac18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc07e
   2ac1c: 91000021     	add	x1, x1, #0x0
		000000000002ac1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc07e
   2ac20: 94000000     	bl	0x2ac20 <tpd_set_screen_off_awake+0x44>
		000000000002ac20:  R_AARCH64_CALL26	_printk
   2ac24: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2ac28: d50323bf     	autiasp
   2ac2c: 2a1f03e0     	mov	w0, wzr
   2ac30: d65f03c0     	ret
