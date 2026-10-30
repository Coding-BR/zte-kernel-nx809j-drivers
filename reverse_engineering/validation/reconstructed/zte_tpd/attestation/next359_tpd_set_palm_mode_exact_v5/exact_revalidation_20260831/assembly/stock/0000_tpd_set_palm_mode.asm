
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026078 <tpd_set_palm_mode>:
   26078: d503233f     	paciasp
   2607c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26080: 910003fd     	mov	x29, sp
   26084: f946dc08     	ldr	x8, [x0, #0xdb8]
   26088: 2a0103e2     	mov	w2, w1
   2608c: 90000000     	adrp	x0, 0x26000 <tpd_set_frame_data+0x70>
		000000000002608c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6777
   26090: 91000000     	add	x0, x0, #0x0
		0000000000026090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6777
   26094: b905e501     	str	w1, [x8, #0x5e4]
   26098: 90000001     	adrp	x1, 0x26000 <tpd_set_frame_data+0x70>
		0000000000026098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6042
   2609c: 91000021     	add	x1, x1, #0x0
		000000000002609c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6042
   260a0: 94000000     	bl	0x260a0 <tpd_set_palm_mode+0x28>
		00000000000260a0:  R_AARCH64_CALL26	_printk
   260a4: 2a1f03e0     	mov	w0, wzr
   260a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   260ac: d50323bf     	autiasp
   260b0: d65f03c0     	ret
