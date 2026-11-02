
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026304 <tpd_set_fake_sleep>:
   26304: f946dc08     	ldr	x8, [x0, #0xdb8]
   26308: b9457d09     	ldr	w9, [x8, #0x57c]
   2630c: b905ed01     	str	w1, [x8, #0x5ec]
   26310: 7100053f     	cmp	w9, #0x1
   26314: 540000c1     	b.ne	0x2632c <tpd_set_fake_sleep+0x28>
   26318: b905e901     	str	w1, [x8, #0x5e8]
   2631c: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		000000000002631c:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   26320: 2a1f03e0     	mov	w0, wzr
   26324: b9000101     	str	w1, [x8]
		0000000000026324:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   26328: d65f03c0     	ret
   2632c: d503233f     	paciasp
   26330: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26334: 910003fd     	mov	x29, sp
   26338: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   2633c: 91000000     	add	x0, x0, #0x0
		000000000002633c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   26340: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ba
   26344: 91000021     	add	x1, x1, #0x0
		0000000000026344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ba
   26348: 94000000     	bl	0x26348 <tpd_set_fake_sleep+0x44>
		0000000000026348:  R_AARCH64_CALL26	_printk
   2634c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26350: d50323bf     	autiasp
   26354: 2a1f03e0     	mov	w0, wzr
   26358: d65f03c0     	ret
