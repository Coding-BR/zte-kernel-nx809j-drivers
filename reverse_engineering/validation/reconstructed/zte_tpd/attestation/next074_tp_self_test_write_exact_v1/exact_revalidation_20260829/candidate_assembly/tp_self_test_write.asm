
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c86c <tp_self_test_write>:
    c86c: d503233f     	paciasp
    c870: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    c874: f9000bf5     	str	x21, [sp, #0x10]
    c878: a9024ff4     	stp	x20, x19, [sp, #0x20]
    c87c: 910003fd     	mov	x29, sp
    c880: 90000015     	adrp	x21, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c880:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c884: 52a00200     	mov	w0, #0x100000           // =1048576
    c888: aa0203f3     	mov	x19, x2
    c88c: f94002b4     	ldr	x20, [x21]
		000000000000c88c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c890: 94000000     	bl	0xc890 <tp_self_test_write+0x24>
		000000000000c890:  R_AARCH64_CALL26	tp_alloc_tp_firmware_data
    c894: 350002c0     	cbnz	w0, 0xc8ec <tp_self_test_write+0x80>
    c898: f947d288     	ldr	x8, [x20, #0xfa0]
    c89c: b4000128     	cbz	x8, 0xc8c0 <tp_self_test_write+0x54>
    c8a0: aa1403e0     	mov	x0, x20
    c8a4: b85fc110     	ldur	w16, [x8, #-0x4]
    c8a8: 7281af31     	movk	w17, #0xd79
    c8ac: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    c8b0: 6b11021f     	cmp	w16, w17
    c8b4: 54000040     	b.eq	0xc8bc <tp_self_test_write+0x50>
    c8b8: d4304500     	brk	#0x8228
    c8bc: d63f0100     	blr	x8
    c8c0: f94002a8     	ldr	x8, [x21]
		000000000000c8c0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c8c4: b9444909     	ldr	w9, [x8, #0x448]
    c8c8: f9462d0a     	ldr	x10, [x8, #0xc58]
    c8cc: f9000149     	str	x9, [x10]
    c8d0: b904491f     	str	wzr, [x8, #0x448]
    c8d4: aa1303e0     	mov	x0, x19
    c8d8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    c8dc: f9400bf5     	ldr	x21, [sp, #0x10]
    c8e0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    c8e4: d50323bf     	autiasp
    c8e8: d65f03c0     	ret
    c8ec: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c8ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f5d
    c8f0: 91000000     	add	x0, x0, #0x0
		000000000000c8f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f5d
    c8f4: 94000000     	bl	0xc8f4 <tp_self_test_write+0x88>
		000000000000c8f4:  R_AARCH64_CALL26	_printk
    c8f8: 92800173     	mov	x19, #-0xc              // =-12
    c8fc: 17fffff6     	b	0xc8d4 <tp_self_test_write+0x68>
