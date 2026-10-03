
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026c3c <syna_tcm_clear_data_duplicator>:
   26c3c: d503233f     	paciasp
   26c40: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26c44: 910003fd     	mov	x29, sp
   26c48: b4000140     	cbz	x0, 0x26c70 <syna_tcm_clear_data_duplicator+0x34>
   26c4c: 52827b08     	mov	w8, #0x13d8             // =5080
   26c50: 2a1f03e1     	mov	w1, wzr
   26c54: 52820002     	mov	w2, #0x1000             // =4096
   26c58: 8b080000     	add	x0, x0, x8
   26c5c: 94000000     	bl	0x26c5c <syna_tcm_clear_data_duplicator+0x20>
		0000000000026c5c:  R_AARCH64_CALL26	memset
   26c60: 2a1f03e0     	mov	w0, wzr
   26c64: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26c68: d50323bf     	autiasp
   26c6c: d65f03c0     	ret
   26c70: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   26c74: 91000000     	add	x0, x0, #0x0
		0000000000026c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   26c78: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ffe
   26c7c: 91000021     	add	x1, x1, #0x0
		0000000000026c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ffe
   26c80: 94000000     	bl	0x26c80 <syna_tcm_clear_data_duplicator+0x44>
		0000000000026c80:  R_AARCH64_CALL26	_printk
   26c84: 12801e00     	mov	w0, #-0xf1              // =-241
   26c88: 17fffff7     	b	0x26c64 <syna_tcm_clear_data_duplicator+0x28>
