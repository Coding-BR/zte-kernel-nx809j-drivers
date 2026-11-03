
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002ad6c <tpd_set_screen_off_awake>:
   2ad6c: f946dc08     	ldr	x8, [x0, #0xdb8]
   2ad70: b9457d09     	ldr	w9, [x8, #0x57c]
   2ad74: b905f501     	str	w1, [x8, #0x5f4]
   2ad78: 7100053f     	cmp	w9, #0x1
   2ad7c: 540000c1     	b.ne	0x2ad94 <tpd_set_screen_off_awake+0x28>
   2ad80: b905f101     	str	w1, [x8, #0x5f0]
   2ad84: 90000008     	adrp	x8, 0x2a000 <zte_touch_probe+0x118>
		000000000002ad84:  R_AARCH64_ADR_PREL_PG_HI21	is_screen_off_awake_mode
   2ad88: 2a1f03e0     	mov	w0, wzr
   2ad8c: b9000101     	str	w1, [x8]
		000000000002ad8c:  R_AARCH64_LDST32_ABS_LO12_NC	is_screen_off_awake_mode
   2ad90: d65f03c0     	ret
   2ad94: d503233f     	paciasp
   2ad98: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   2ad9c: 910003fd     	mov	x29, sp
   2ada0: 90000000     	adrp	x0, 0x2a000 <zte_touch_probe+0x118>
		000000000002ada0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   2ada4: 91000000     	add	x0, x0, #0x0
		000000000002ada4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   2ada8: 90000001     	adrp	x1, 0x2a000 <zte_touch_probe+0x118>
		000000000002ada8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc07e
   2adac: 91000021     	add	x1, x1, #0x0
		000000000002adac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc07e
   2adb0: 94000000     	bl	0x2adb0 <tpd_set_screen_off_awake+0x44>
		000000000002adb0:  R_AARCH64_CALL26	_printk
   2adb4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2adb8: d50323bf     	autiasp
   2adbc: 2a1f03e0     	mov	w0, wzr
   2adc0: d65f03c0     	ret
