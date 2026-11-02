
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026360 <tpd_set_fake_sleep>:
   26360: f946dc08     	ldr	x8, [x0, #0xdb8]
   26364: b9457d09     	ldr	w9, [x8, #0x57c]
   26368: b905ed01     	str	w1, [x8, #0x5ec]
   2636c: 7100053f     	cmp	w9, #0x1
   26370: 540000c1     	b.ne	0x26388 <tpd_set_fake_sleep+0x28>
   26374: b905e901     	str	w1, [x8, #0x5e8]
   26378: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026378:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   2637c: 2a1f03e0     	mov	w0, wzr
   26380: b9000101     	str	w1, [x8]
		0000000000026380:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   26384: d65f03c0     	ret
   26388: d503233f     	paciasp
   2638c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26390: 910003fd     	mov	x29, sp
   26394: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   26398: 91000000     	add	x0, x0, #0x0
		0000000000026398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   2639c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		000000000002639c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ba
   263a0: 91000021     	add	x1, x1, #0x0
		00000000000263a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ba
   263a4: 94000000     	bl	0x263a4 <tpd_set_fake_sleep+0x44>
		00000000000263a4:  R_AARCH64_CALL26	_printk
   263a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   263ac: d50323bf     	autiasp
   263b0: 2a1f03e0     	mov	w0, wzr
   263b4: d65f03c0     	ret
