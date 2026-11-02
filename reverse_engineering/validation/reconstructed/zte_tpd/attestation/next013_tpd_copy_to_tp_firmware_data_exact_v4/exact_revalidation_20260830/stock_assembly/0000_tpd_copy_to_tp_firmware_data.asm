
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001630 <tpd_copy_to_tp_firmware_data>:
    1630: d503233f     	paciasp
    1634: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1638: a90157f6     	stp	x22, x21, [sp, #0x10]
    163c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1640: 910003fd     	mov	x29, sp
    1644: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001644:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1648: f9400115     	ldr	x21, [x8]
		0000000000001648:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    164c: f9462ea8     	ldr	x8, [x21, #0xc58]
    1650: b4000368     	cbz	x8, 0x16bc <tpd_copy_to_tp_firmware_data+0x8c>
    1654: f9400509     	ldr	x9, [x8, #0x8]
    1658: b4000329     	cbz	x9, 0x16bc <tpd_copy_to_tp_firmware_data+0x8c>
    165c: f9400113     	ldr	x19, [x8]
    1660: b4000393     	cbz	x19, 0x16d0 <tpd_copy_to_tp_firmware_data+0xa0>
    1664: b9444ab6     	ldr	w22, [x21, #0x448]
    1668: eb16027f     	cmp	x19, x22
    166c: 54000249     	b.ls	0x16b4 <tpd_copy_to_tp_firmware_data+0x84>
    1670: aa0003f4     	mov	x20, x0
    1674: 94000000     	bl	0x1674 <tpd_copy_to_tp_firmware_data+0x44>
		0000000000001674:  R_AARCH64_CALL26	strlen
    1678: 0b0002c9     	add	w9, w22, w0
    167c: 4b160268     	sub	w8, w19, w22
    1680: aa1403e1     	mov	x1, x20
    1684: eb09027f     	cmp	x19, x9
    1688: f9462ea9     	ldr	x9, [x21, #0xc58]
    168c: 1a803113     	csel	w19, w8, w0, lo
    1690: f9400528     	ldr	x8, [x9, #0x8]
    1694: b9444aa9     	ldr	w9, [x21, #0x448]
    1698: 93407e62     	sxtw	x2, w19
    169c: 8b090100     	add	x0, x8, x9
    16a0: 94000000     	bl	0x16a0 <tpd_copy_to_tp_firmware_data+0x70>
		00000000000016a0:  R_AARCH64_CALL26	memcpy
    16a4: b9444aa8     	ldr	w8, [x21, #0x448]
    16a8: 0b130108     	add	w8, w8, w19
    16ac: b9044aa8     	str	w8, [x21, #0x448]
    16b0: 1400000c     	b	0x16e0 <tpd_copy_to_tp_firmware_data+0xb0>
    16b4: 2a1f03f3     	mov	w19, wzr
    16b8: 1400000a     	b	0x16e0 <tpd_copy_to_tp_firmware_data+0xb0>
    16bc: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000016bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab8b
    16c0: 91000000     	add	x0, x0, #0x0
		00000000000016c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab8b
    16c4: 94000000     	bl	0x16c4 <tpd_copy_to_tp_firmware_data+0x94>
		00000000000016c4:  R_AARCH64_CALL26	_printk
    16c8: 12800173     	mov	w19, #-0xc              // =-12
    16cc: 14000005     	b	0x16e0 <tpd_copy_to_tp_firmware_data+0xb0>
    16d0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000016d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a95
    16d4: 91000000     	add	x0, x0, #0x0
		00000000000016d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a95
    16d8: 94000000     	bl	0x16d8 <tpd_copy_to_tp_firmware_data+0xa8>
		00000000000016d8:  R_AARCH64_CALL26	_printk
    16dc: 128002b3     	mov	w19, #-0x16             // =-22
    16e0: 2a1303e0     	mov	w0, w19
    16e4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    16e8: a94157f6     	ldp	x22, x21, [sp, #0x10]
    16ec: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    16f0: d50323bf     	autiasp
    16f4: d65f03c0     	ret
