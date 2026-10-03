
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026df4 <tpd_set_one_key>:
   26df4: d503233f     	paciasp
   26df8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   26dfc: f9000bf5     	str	x21, [sp, #0x10]
   26e00: a9024ff4     	stp	x20, x19, [sp, #0x20]
   26e04: 910003fd     	mov	x29, sp
   26e08: aa0003f3     	mov	x19, x0
   26e0c: f946dc15     	ldr	x21, [x0, #0xdb8]
   26e10: 2a0103f4     	mov	w20, w1
   26e14: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   26e18: 91000000     	add	x0, x0, #0x0
		0000000000026e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   26e1c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac2
   26e20: 91000021     	add	x1, x1, #0x0
		0000000000026e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac2
   26e24: 94000000     	bl	0x26e24 <tpd_set_one_key+0x30>
		0000000000026e24:  R_AARCH64_CALL26	_printk
   26e28: b40000b5     	cbz	x21, 0x26e3c <tpd_set_one_key+0x48>
   26e2c: 2a1f03e0     	mov	w0, wzr
   26e30: b905d6b4     	str	w20, [x21, #0x5d4]
   26e34: b9045a74     	str	w20, [x19, #0x458]
   26e38: 14000002     	b	0x26e40 <tpd_set_one_key+0x4c>
   26e3c: 128002a0     	mov	w0, #-0x16              // =-22
   26e40: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   26e44: f9400bf5     	ldr	x21, [sp, #0x10]
   26e48: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   26e4c: d50323bf     	autiasp
   26e50: d65f03c0     	ret
