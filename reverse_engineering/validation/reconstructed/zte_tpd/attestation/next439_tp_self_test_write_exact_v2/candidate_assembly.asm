
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ebc8 <tp_self_test_write>:
   1ebc8: d503233f     	paciasp
   1ebcc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1ebd0: f9000bf5     	str	x21, [sp, #0x10]
   1ebd4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1ebd8: 910003fd     	mov	x29, sp
   1ebdc: 90000015     	adrp	x21, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001ebdc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1ebe0: 52a00200     	mov	w0, #0x100000           // =1048576
   1ebe4: aa0203f3     	mov	x19, x2
   1ebe8: f94002b4     	ldr	x20, [x21]
		000000000001ebe8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1ebec: 94000000     	bl	0x1ebec <tp_self_test_write+0x24>
		000000000001ebec:  R_AARCH64_CALL26	tp_alloc_tp_firmware_data
   1ebf0: 350002c0     	cbnz	w0, 0x1ec48 <tp_self_test_write+0x80>
   1ebf4: f947d288     	ldr	x8, [x20, #0xfa0]
   1ebf8: b4000128     	cbz	x8, 0x1ec1c <tp_self_test_write+0x54>
   1ebfc: aa1403e0     	mov	x0, x20
   1ec00: b85fc110     	ldur	w16, [x8, #-0x4]
   1ec04: 7281af31     	movk	w17, #0xd79
   1ec08: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1ec0c: 6b11021f     	cmp	w16, w17
   1ec10: 54000040     	b.eq	0x1ec18 <tp_self_test_write+0x50>
   1ec14: d4304500     	brk	#0x8228
   1ec18: d63f0100     	blr	x8
   1ec1c: f94002a8     	ldr	x8, [x21]
		000000000001ec1c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1ec20: b9444909     	ldr	w9, [x8, #0x448]
   1ec24: f9462d0a     	ldr	x10, [x8, #0xc58]
   1ec28: f9000149     	str	x9, [x10]
   1ec2c: b904491f     	str	wzr, [x8, #0x448]
   1ec30: aa1303e0     	mov	x0, x19
   1ec34: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1ec38: f9400bf5     	ldr	x21, [sp, #0x10]
   1ec3c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1ec40: d50323bf     	autiasp
   1ec44: d65f03c0     	ret
   1ec48: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001ec48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2703
   1ec4c: 91000000     	add	x0, x0, #0x0
		000000000001ec4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2703
   1ec50: 94000000     	bl	0x1ec50 <tp_self_test_write+0x88>
		000000000001ec50:  R_AARCH64_CALL26	_printk
   1ec54: 92800173     	mov	x19, #-0xc              // =-12
   1ec58: 17fffff6     	b	0x1ec30 <tp_self_test_write+0x68>
