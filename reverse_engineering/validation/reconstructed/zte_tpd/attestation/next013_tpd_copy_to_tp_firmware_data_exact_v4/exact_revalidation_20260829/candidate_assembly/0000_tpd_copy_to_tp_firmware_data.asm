
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c9d8 <tpd_copy_to_tp_firmware_data>:
    c9d8: d503233f     	paciasp
    c9dc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    c9e0: a90157f6     	stp	x22, x21, [sp, #0x10]
    c9e4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    c9e8: 910003fd     	mov	x29, sp
    c9ec: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c9ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c9f0: f9400115     	ldr	x21, [x8]
		000000000000c9f0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c9f4: f9462ea8     	ldr	x8, [x21, #0xc58]
    c9f8: b4000368     	cbz	x8, 0xca64 <tpd_copy_to_tp_firmware_data+0x8c>
    c9fc: f9400509     	ldr	x9, [x8, #0x8]
    ca00: b4000329     	cbz	x9, 0xca64 <tpd_copy_to_tp_firmware_data+0x8c>
    ca04: f9400113     	ldr	x19, [x8]
    ca08: b4000393     	cbz	x19, 0xca78 <tpd_copy_to_tp_firmware_data+0xa0>
    ca0c: b9444ab6     	ldr	w22, [x21, #0x448]
    ca10: eb16027f     	cmp	x19, x22
    ca14: 54000249     	b.ls	0xca5c <tpd_copy_to_tp_firmware_data+0x84>
    ca18: aa0003f4     	mov	x20, x0
    ca1c: 94000000     	bl	0xca1c <tpd_copy_to_tp_firmware_data+0x44>
		000000000000ca1c:  R_AARCH64_CALL26	strlen
    ca20: 0b0002c9     	add	w9, w22, w0
    ca24: 4b160268     	sub	w8, w19, w22
    ca28: aa1403e1     	mov	x1, x20
    ca2c: eb09027f     	cmp	x19, x9
    ca30: f9462ea9     	ldr	x9, [x21, #0xc58]
    ca34: 1a803113     	csel	w19, w8, w0, lo
    ca38: f9400528     	ldr	x8, [x9, #0x8]
    ca3c: b9444aa9     	ldr	w9, [x21, #0x448]
    ca40: 93407e62     	sxtw	x2, w19
    ca44: 8b090100     	add	x0, x8, x9
    ca48: 94000000     	bl	0xca48 <tpd_copy_to_tp_firmware_data+0x70>
		000000000000ca48:  R_AARCH64_CALL26	memcpy
    ca4c: b9444aa8     	ldr	w8, [x21, #0x448]
    ca50: 0b130108     	add	w8, w8, w19
    ca54: b9044aa8     	str	w8, [x21, #0x448]
    ca58: 1400000c     	b	0xca88 <tpd_copy_to_tp_firmware_data+0xb0>
    ca5c: 2a1f03f3     	mov	w19, wzr
    ca60: 1400000a     	b	0xca88 <tpd_copy_to_tp_firmware_data+0xb0>
    ca64: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ca64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfaa
    ca68: 91000000     	add	x0, x0, #0x0
		000000000000ca68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfaa
    ca6c: 94000000     	bl	0xca6c <tpd_copy_to_tp_firmware_data+0x94>
		000000000000ca6c:  R_AARCH64_CALL26	_printk
    ca70: 12800173     	mov	w19, #-0xc              // =-12
    ca74: 14000005     	b	0xca88 <tpd_copy_to_tp_firmware_data+0xb0>
    ca78: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ca78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1c9
    ca7c: 91000000     	add	x0, x0, #0x0
		000000000000ca7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1c9
    ca80: 94000000     	bl	0xca80 <tpd_copy_to_tp_firmware_data+0xa8>
		000000000000ca80:  R_AARCH64_CALL26	_printk
    ca84: 128002b3     	mov	w19, #-0x16             // =-22
    ca88: 2a1303e0     	mov	w0, w19
    ca8c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    ca90: a94157f6     	ldp	x22, x21, [sp, #0x10]
    ca94: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    ca98: d50323bf     	autiasp
    ca9c: d65f03c0     	ret
