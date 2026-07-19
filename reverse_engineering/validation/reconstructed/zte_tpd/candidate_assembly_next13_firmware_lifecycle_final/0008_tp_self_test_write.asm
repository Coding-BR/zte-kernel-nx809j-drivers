
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fb10 <tp_self_test_write>:
   1fb10: d503233f     	paciasp
   1fb14: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1fb18: f9000bf5     	str	x21, [sp, #0x10]
   1fb1c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1fb20: 910003fd     	mov	x29, sp
   1fb24: 90000015     	adrp	x21, 0x1f000 <tp_ghost_check_work+0x8>
		000000000001fb24:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1fb28: 52a00200     	mov	w0, #0x100000           // =1048576
   1fb2c: aa0203f3     	mov	x19, x2
   1fb30: f94002b4     	ldr	x20, [x21]
		000000000001fb30:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1fb34: 94000000     	bl	0x1fb34 <tp_self_test_write+0x24>
		000000000001fb34:  R_AARCH64_CALL26	tp_alloc_tp_firmware_data
   1fb38: 350002c0     	cbnz	w0, 0x1fb90 <tp_self_test_write+0x80>
   1fb3c: f947d288     	ldr	x8, [x20, #0xfa0]
   1fb40: b4000128     	cbz	x8, 0x1fb64 <tp_self_test_write+0x54>
   1fb44: aa1403e0     	mov	x0, x20
   1fb48: b85fc110     	ldur	w16, [x8, #-0x4]
   1fb4c: 7281af31     	movk	w17, #0xd79
   1fb50: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1fb54: 6b11021f     	cmp	w16, w17
   1fb58: 54000040     	b.eq	0x1fb60 <tp_self_test_write+0x50>
   1fb5c: d4304500     	brk	#0x8228
   1fb60: d63f0100     	blr	x8
   1fb64: f94002a8     	ldr	x8, [x21]
		000000000001fb64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1fb68: b9444909     	ldr	w9, [x8, #0x448]
   1fb6c: f9462d0a     	ldr	x10, [x8, #0xc58]
   1fb70: f9000149     	str	x9, [x10]
   1fb74: b904491f     	str	wzr, [x8, #0x448]
   1fb78: aa1303e0     	mov	x0, x19
   1fb7c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1fb80: f9400bf5     	ldr	x21, [sp, #0x10]
   1fb84: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1fb88: d50323bf     	autiasp
   1fb8c: d65f03c0     	ret
   1fb90: 90000000     	adrp	x0, 0x1f000 <tp_ghost_check_work+0x8>
		000000000001fb90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2157
   1fb94: 91000000     	add	x0, x0, #0x0
		000000000001fb94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2157
   1fb98: 94000000     	bl	0x1fb98 <tp_self_test_write+0x88>
		000000000001fb98:  R_AARCH64_CALL26	_printk
   1fb9c: 92800173     	mov	x19, #-0xc              // =-12
   1fba0: 17fffff6     	b	0x1fb78 <tp_self_test_write+0x68>
