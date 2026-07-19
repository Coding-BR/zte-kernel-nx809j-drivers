
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020ad4 <tpd_copy_to_tp_firmware_data>:
   20ad4: d503233f     	paciasp
   20ad8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   20adc: a90157f6     	stp	x22, x21, [sp, #0x10]
   20ae0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20ae4: 910003fd     	mov	x29, sp
   20ae8: 90000008     	adrp	x8, 0x20000 <tp_single_game_read+0x30>
		0000000000020ae8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   20aec: f9400115     	ldr	x21, [x8]
		0000000000020aec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   20af0: f9462ea8     	ldr	x8, [x21, #0xc58]
   20af4: b4000368     	cbz	x8, 0x20b60 <tpd_copy_to_tp_firmware_data+0x8c>
   20af8: f9400509     	ldr	x9, [x8, #0x8]
   20afc: b4000329     	cbz	x9, 0x20b60 <tpd_copy_to_tp_firmware_data+0x8c>
   20b00: f9400113     	ldr	x19, [x8]
   20b04: b4000393     	cbz	x19, 0x20b74 <tpd_copy_to_tp_firmware_data+0xa0>
   20b08: b9444ab6     	ldr	w22, [x21, #0x448]
   20b0c: eb16027f     	cmp	x19, x22
   20b10: 54000249     	b.ls	0x20b58 <tpd_copy_to_tp_firmware_data+0x84>
   20b14: aa0003f4     	mov	x20, x0
   20b18: 94000000     	bl	0x20b18 <tpd_copy_to_tp_firmware_data+0x44>
		0000000000020b18:  R_AARCH64_CALL26	strlen
   20b1c: 0b0002c9     	add	w9, w22, w0
   20b20: 4b160268     	sub	w8, w19, w22
   20b24: aa1403e1     	mov	x1, x20
   20b28: eb09027f     	cmp	x19, x9
   20b2c: f9462ea9     	ldr	x9, [x21, #0xc58]
   20b30: 1a803113     	csel	w19, w8, w0, lo
   20b34: f9400528     	ldr	x8, [x9, #0x8]
   20b38: b9444aa9     	ldr	w9, [x21, #0x448]
   20b3c: 93407e62     	sxtw	x2, w19
   20b40: 8b090100     	add	x0, x8, x9
   20b44: 94000000     	bl	0x20b44 <tpd_copy_to_tp_firmware_data+0x70>
		0000000000020b44:  R_AARCH64_CALL26	memcpy
   20b48: b9444aa8     	ldr	w8, [x21, #0x448]
   20b4c: 0b130108     	add	w8, w8, w19
   20b50: b9044aa8     	str	w8, [x21, #0x448]
   20b54: 1400000c     	b	0x20b84 <tpd_copy_to_tp_firmware_data+0xb0>
   20b58: 2a1f03f3     	mov	w19, wzr
   20b5c: 1400000a     	b	0x20b84 <tpd_copy_to_tp_firmware_data+0xb0>
   20b60: 90000000     	adrp	x0, 0x20000 <tp_single_game_read+0x30>
		0000000000020b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51e3
   20b64: 91000000     	add	x0, x0, #0x0
		0000000000020b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51e3
   20b68: 94000000     	bl	0x20b68 <tpd_copy_to_tp_firmware_data+0x94>
		0000000000020b68:  R_AARCH64_CALL26	_printk
   20b6c: 12800173     	mov	w19, #-0xc              // =-12
   20b70: 14000005     	b	0x20b84 <tpd_copy_to_tp_firmware_data+0xb0>
   20b74: 90000000     	adrp	x0, 0x20000 <tp_single_game_read+0x30>
		0000000000020b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x430d
   20b78: 91000000     	add	x0, x0, #0x0
		0000000000020b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x430d
   20b7c: 94000000     	bl	0x20b7c <tpd_copy_to_tp_firmware_data+0xa8>
		0000000000020b7c:  R_AARCH64_CALL26	_printk
   20b80: 128002b3     	mov	w19, #-0x16             // =-22
   20b84: 2a1303e0     	mov	w0, w19
   20b88: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   20b8c: a94157f6     	ldp	x22, x21, [sp, #0x10]
   20b90: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20b94: d50323bf     	autiasp
   20b98: d65f03c0     	ret
