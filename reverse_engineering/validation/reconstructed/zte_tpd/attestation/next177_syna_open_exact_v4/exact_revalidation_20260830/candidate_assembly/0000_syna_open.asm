
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002624c <syna_open>:
   2624c: d503233f     	paciasp
   26250: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26254: 910003fd     	mov	x29, sp
   26258: f9401028     	ldr	x8, [x1, #0x20]
   2625c: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		000000000002625c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb102
   26260: 91000000     	add	x0, x0, #0x0
		0000000000026260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb102
   26264: d1128108     	sub	x8, x8, #0x4a0
   26268: f9001028     	str	x8, [x1, #0x20]
   2626c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		000000000002626c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8906
   26270: 91000021     	add	x1, x1, #0x0
		0000000000026270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8906
   26274: 94000000     	bl	0x26274 <syna_open+0x28>
		0000000000026274:  R_AARCH64_CALL26	_printk
   26278: 2a1f03e0     	mov	w0, wzr
   2627c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26280: d50323bf     	autiasp
   26284: d65f03c0     	ret
