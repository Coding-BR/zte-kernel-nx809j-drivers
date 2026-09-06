
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026d90 <tpd_get_singlefpgesture>:
   26d90: d503233f     	paciasp
   26d94: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26d98: a9014ff4     	stp	x20, x19, [sp, #0x10]
   26d9c: 910003fd     	mov	x29, sp
   26da0: f946dc08     	ldr	x8, [x0, #0xdb8]
   26da4: 90000014     	adrp	x20, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7450
   26da8: 91000294     	add	x20, x20, #0x0
		0000000000026da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7450
   26dac: aa0003f3     	mov	x19, x0
   26db0: aa1403e1     	mov	x1, x20
   26db4: b945b902     	ldr	w2, [x8, #0x5b8]
   26db8: b9044c02     	str	w2, [x0, #0x44c]
   26dbc: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96ca
   26dc0: 91000000     	add	x0, x0, #0x0
		0000000000026dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96ca
   26dc4: 94000000     	bl	0x26dc4 <tpd_get_singlefpgesture+0x34>
		0000000000026dc4:  R_AARCH64_CALL26	_printk
   26dc8: b9444e62     	ldr	w2, [x19, #0x44c]
   26dcc: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c24
   26dd0: 91000000     	add	x0, x0, #0x0
		0000000000026dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c24
   26dd4: aa1403e1     	mov	x1, x20
   26dd8: 94000000     	bl	0x26dd8 <tpd_get_singlefpgesture+0x48>
		0000000000026dd8:  R_AARCH64_CALL26	_printk
   26ddc: 2a1f03e0     	mov	w0, wzr
   26de0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   26de4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26de8: d50323bf     	autiasp
   26dec: d65f03c0     	ret
