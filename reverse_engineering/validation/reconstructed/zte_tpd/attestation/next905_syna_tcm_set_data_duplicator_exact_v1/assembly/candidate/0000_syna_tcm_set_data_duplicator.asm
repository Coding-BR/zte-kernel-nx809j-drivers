
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026bec <syna_tcm_set_data_duplicator>:
   26bec: b40000e0     	cbz	x0, 0x26c08 <syna_tcm_set_data_duplicator+0x1c>
   26bf0: aa0003e8     	mov	x8, x0
   26bf4: 2a1f03e0     	mov	w0, wzr
   26bf8: 8b211108     	add	x8, x8, w1, uxtb #4
   26bfc: f909f102     	str	x2, [x8, #0x13e0]
   26c00: f909ed03     	str	x3, [x8, #0x13d8]
   26c04: d65f03c0     	ret
   26c08: d503233f     	paciasp
   26c0c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26c10: 910003fd     	mov	x29, sp
   26c14: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   26c18: 91000000     	add	x0, x0, #0x0
		0000000000026c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   26c1c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe6
   26c20: 91000021     	add	x1, x1, #0x0
		0000000000026c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe6
   26c24: 94000000     	bl	0x26c24 <syna_tcm_set_data_duplicator+0x38>
		0000000000026c24:  R_AARCH64_CALL26	_printk
   26c28: 12801e00     	mov	w0, #-0xf1              // =-241
   26c2c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26c30: d50323bf     	autiasp
   26c34: d65f03c0     	ret
