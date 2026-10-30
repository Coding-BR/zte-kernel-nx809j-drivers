
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026d2c <tpd_get_singleaodgesture>:
   26d2c: d503233f     	paciasp
   26d30: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26d34: a9014ff4     	stp	x20, x19, [sp, #0x10]
   26d38: 910003fd     	mov	x29, sp
   26d3c: f946dc08     	ldr	x8, [x0, #0xdb8]
   26d40: 90000014     	adrp	x20, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa8
   26d44: 91000294     	add	x20, x20, #0x0
		0000000000026d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa8
   26d48: aa0003f3     	mov	x19, x0
   26d4c: aa1403e1     	mov	x1, x20
   26d50: b945b502     	ldr	w2, [x8, #0x5b4]
   26d54: b9045002     	str	w2, [x0, #0x450]
   26d58: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x114a
   26d5c: 91000000     	add	x0, x0, #0x0
		0000000000026d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x114a
   26d60: 94000000     	bl	0x26d60 <tpd_get_singleaodgesture+0x34>
		0000000000026d60:  R_AARCH64_CALL26	_printk
   26d64: b9445262     	ldr	w2, [x19, #0x450]
   26d68: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9070
   26d6c: 91000000     	add	x0, x0, #0x0
		0000000000026d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9070
   26d70: aa1403e1     	mov	x1, x20
   26d74: 94000000     	bl	0x26d74 <tpd_get_singleaodgesture+0x48>
		0000000000026d74:  R_AARCH64_CALL26	_printk
   26d78: 2a1f03e0     	mov	w0, wzr
   26d7c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   26d80: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26d84: d50323bf     	autiasp
   26d88: d65f03c0     	ret
