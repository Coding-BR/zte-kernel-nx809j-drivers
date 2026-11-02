
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002611c <tpd_set_fake_sleep>:
   2611c: f946dc08     	ldr	x8, [x0, #0xdb8]
   26120: b9457d09     	ldr	w9, [x8, #0x57c]
   26124: b905ed01     	str	w1, [x8, #0x5ec]
   26128: 7100053f     	cmp	w9, #0x1
   2612c: 540000c1     	b.ne	0x26144 <tpd_set_fake_sleep+0x28>
   26130: b905e901     	str	w1, [x8, #0x5e8]
   26134: 90000008     	adrp	x8, 0x26000 <tpd_set_frame_data+0x70>
		0000000000026134:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
   26138: 2a1f03e0     	mov	w0, wzr
   2613c: b9000101     	str	w1, [x8]
		000000000002613c:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
   26140: d65f03c0     	ret
   26144: d503233f     	paciasp
   26148: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   2614c: 910003fd     	mov	x29, sp
   26150: 90000000     	adrp	x0, 0x26000 <tpd_set_frame_data+0x70>
		0000000000026150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   26154: 91000000     	add	x0, x0, #0x0
		0000000000026154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   26158: 90000001     	adrp	x1, 0x26000 <tpd_set_frame_data+0x70>
		0000000000026158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x300e
   2615c: 91000021     	add	x1, x1, #0x0
		000000000002615c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x300e
   26160: 94000000     	bl	0x26160 <tpd_set_fake_sleep+0x44>
		0000000000026160:  R_AARCH64_CALL26	_printk
   26164: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26168: d50323bf     	autiasp
   2616c: 2a1f03e0     	mov	w0, wzr
   26170: d65f03c0     	ret
