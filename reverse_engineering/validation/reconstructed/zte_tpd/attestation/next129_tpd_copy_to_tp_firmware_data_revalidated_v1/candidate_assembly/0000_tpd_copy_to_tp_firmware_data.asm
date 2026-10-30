
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000210a4 <tpd_copy_to_tp_firmware_data>:
   210a4: d503233f     	paciasp
   210a8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   210ac: a90157f6     	stp	x22, x21, [sp, #0x10]
   210b0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   210b4: 910003fd     	mov	x29, sp
   210b8: 90000008     	adrp	x8, 0x21000 <tpd_clean_all_event+0x54>
		00000000000210b8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   210bc: f9400115     	ldr	x21, [x8]
		00000000000210bc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   210c0: f9462ea8     	ldr	x8, [x21, #0xc58]
   210c4: b4000368     	cbz	x8, 0x21130 <tpd_copy_to_tp_firmware_data+0x8c>
   210c8: f9400509     	ldr	x9, [x8, #0x8]
   210cc: b4000329     	cbz	x9, 0x21130 <tpd_copy_to_tp_firmware_data+0x8c>
   210d0: f9400113     	ldr	x19, [x8]
   210d4: b4000393     	cbz	x19, 0x21144 <tpd_copy_to_tp_firmware_data+0xa0>
   210d8: b9444ab6     	ldr	w22, [x21, #0x448]
   210dc: eb16027f     	cmp	x19, x22
   210e0: 54000249     	b.ls	0x21128 <tpd_copy_to_tp_firmware_data+0x84>
   210e4: aa0003f4     	mov	x20, x0
   210e8: 94000000     	bl	0x210e8 <tpd_copy_to_tp_firmware_data+0x44>
		00000000000210e8:  R_AARCH64_CALL26	strlen
   210ec: 0b0002c9     	add	w9, w22, w0
   210f0: 4b160268     	sub	w8, w19, w22
   210f4: aa1403e1     	mov	x1, x20
   210f8: eb09027f     	cmp	x19, x9
   210fc: f9462ea9     	ldr	x9, [x21, #0xc58]
   21100: 1a803113     	csel	w19, w8, w0, lo
   21104: f9400528     	ldr	x8, [x9, #0x8]
   21108: b9444aa9     	ldr	w9, [x21, #0x448]
   2110c: 93407e62     	sxtw	x2, w19
   21110: 8b090100     	add	x0, x8, x9
   21114: 94000000     	bl	0x21114 <tpd_copy_to_tp_firmware_data+0x70>
		0000000000021114:  R_AARCH64_CALL26	memcpy
   21118: b9444aa8     	ldr	w8, [x21, #0x448]
   2111c: 0b130108     	add	w8, w8, w19
   21120: b9044aa8     	str	w8, [x21, #0x448]
   21124: 1400000c     	b	0x21154 <tpd_copy_to_tp_firmware_data+0xb0>
   21128: 2a1f03f3     	mov	w19, wzr
   2112c: 1400000a     	b	0x21154 <tpd_copy_to_tp_firmware_data+0xb0>
   21130: 90000000     	adrp	x0, 0x21000 <tpd_clean_all_event+0x54>
		0000000000021130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5215
   21134: 91000000     	add	x0, x0, #0x0
		0000000000021134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5215
   21138: 94000000     	bl	0x21138 <tpd_copy_to_tp_firmware_data+0x94>
		0000000000021138:  R_AARCH64_CALL26	_printk
   2113c: 12800173     	mov	w19, #-0xc              // =-12
   21140: 14000005     	b	0x21154 <tpd_copy_to_tp_firmware_data+0xb0>
   21144: 90000000     	adrp	x0, 0x21000 <tpd_clean_all_event+0x54>
		0000000000021144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x430f
   21148: 91000000     	add	x0, x0, #0x0
		0000000000021148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x430f
   2114c: 94000000     	bl	0x2114c <tpd_copy_to_tp_firmware_data+0xa8>
		000000000002114c:  R_AARCH64_CALL26	_printk
   21150: 128002b3     	mov	w19, #-0x16             // =-22
   21154: 2a1303e0     	mov	w0, w19
   21158: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   2115c: a94157f6     	ldp	x22, x21, [sp, #0x10]
   21160: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   21164: d50323bf     	autiasp
   21168: d65f03c0     	ret
