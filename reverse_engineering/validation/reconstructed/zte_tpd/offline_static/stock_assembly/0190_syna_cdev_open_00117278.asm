
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000109f0 <syna_cdev_open>:
   109f0: d503233f     	paciasp
   109f4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   109f8: a90157f6     	stp	x22, x21, [sp, #0x10]
   109fc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   10a00: 910003fd     	mov	x29, sp
   10a04: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010a04:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c0
   10a08: 91000000     	add	x0, x0, #0x0
		0000000000010a08:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c0
   10a0c: f8450408     	ldr	x8, [x0], #0x50
   10a10: f9405514     	ldr	x20, [x8, #0xa8]
   10a14: 94000000     	bl	0x10a14 <syna_cdev_open+0x24>
		0000000000010a14:  R_AARCH64_CALL26	mutex_lock
   10a18: b9438682     	ldr	w2, [x20, #0x384]
   10a1c: 35000062     	cbnz	w2, 0x10a28 <syna_cdev_open+0x38>
   10a20: 52800028     	mov	w8, #0x1                // =1
   10a24: 14000008     	b	0x10a44 <syna_cdev_open+0x54>
   10a28: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5260
   10a2c: 91000000     	add	x0, x0, #0x0
		0000000000010a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5260
   10a30: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaea2
   10a34: 91000021     	add	x1, x1, #0x0
		0000000000010a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaea2
   10a38: 94000000     	bl	0x10a38 <syna_cdev_open+0x48>
		0000000000010a38:  R_AARCH64_CALL26	_printk
   10a3c: b9438688     	ldr	w8, [x20, #0x384]
   10a40: 11000508     	add	w8, w8, #0x1
   10a44: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010a44:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x840
   10a48: 91000000     	add	x0, x0, #0x0
		0000000000010a48:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x840
   10a4c: b9038688     	str	w8, [x20, #0x384]
   10a50: f900181f     	str	xzr, [x0, #0x30]
   10a54: b900381f     	str	wzr, [x0, #0x38]
   10a58: f9400289     	ldr	x9, [x20]
   10a5c: b9403d28     	ldr	w8, [x9, #0x3c]
   10a60: b9004008     	str	w8, [x0, #0x40]
   10a64: f9400288     	ldr	x8, [x20]
   10a68: b9403908     	ldr	w8, [x8, #0x38]
   10a6c: b9003c08     	str	w8, [x0, #0x3c]
   10a70: f9400288     	ldr	x8, [x20]
   10a74: 390de91f     	strb	wzr, [x8, #0x37a]
   10a78: 3916129f     	strb	wzr, [x20, #0x584]
   10a7c: 94000000     	bl	0x10a7c <syna_cdev_open+0x8c>
		0000000000010a7c:  R_AARCH64_CALL26	mutex_lock
   10a80: f9427e93     	ldr	x19, [x20, #0x4f8]
   10a84: 9113e295     	add	x21, x20, #0x4f8
   10a88: eb15027f     	cmp	x19, x21
   10a8c: 54000281     	b.ne	0x10adc <syna_cdev_open+0xec>
   10a90: 90000013     	adrp	x19, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010a90:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x810
   10a94: 91000273     	add	x19, x19, #0x0
		0000000000010a94:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x810
   10a98: 9100c260     	add	x0, x19, #0x30
   10a9c: 94000000     	bl	0x10a9c <syna_cdev_open+0xac>
		0000000000010a9c:  R_AARCH64_CALL26	mutex_unlock
   10aa0: f9400280     	ldr	x0, [x20]
   10aa4: 94000000     	bl	0x10aa4 <syna_cdev_open+0xb4>
		0000000000010aa4:  R_AARCH64_CALL26	syna_tcm_clear_data_duplicator
   10aa8: aa1303e0     	mov	x0, x19
   10aac: 94000000     	bl	0x10aac <syna_cdev_open+0xbc>
		0000000000010aac:  R_AARCH64_CALL26	mutex_unlock
   10ab0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x394c
   10ab4: 91000000     	add	x0, x0, #0x0
		0000000000010ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x394c
   10ab8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaea2
   10abc: 91000021     	add	x1, x1, #0x0
		0000000000010abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaea2
   10ac0: 94000000     	bl	0x10ac0 <syna_cdev_open+0xd0>
		0000000000010ac0:  R_AARCH64_CALL26	_printk
   10ac4: 2a1f03e0     	mov	w0, wzr
   10ac8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   10acc: a94157f6     	ldp	x22, x21, [sp, #0x10]
   10ad0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   10ad4: d50323bf     	autiasp
   10ad8: d65f03c0     	ret
   10adc: d2802016     	mov	x22, #0x100             // =256
   10ae0: f2fbd5b6     	movk	x22, #0xdead, lsl #48
   10ae4: 14000004     	b	0x10af4 <syna_cdev_open+0x104>
   10ae8: f94002b3     	ldr	x19, [x21]
   10aec: eb15027f     	cmp	x19, x21
   10af0: 54fffd00     	b.eq	0x10a90 <syna_cdev_open+0xa0>
   10af4: f9400668     	ldr	x8, [x19, #0x8]
   10af8: f9400109     	ldr	x9, [x8]
   10afc: eb13013f     	cmp	x9, x19
   10b00: 54000241     	b.ne	0x10b48 <syna_cdev_open+0x158>
   10b04: f9400269     	ldr	x9, [x19]
   10b08: f940052a     	ldr	x10, [x9, #0x8]
   10b0c: eb13015f     	cmp	x10, x19
   10b10: 540001c1     	b.ne	0x10b48 <syna_cdev_open+0x158>
   10b14: f9000528     	str	x8, [x9, #0x8]
   10b18: f9000109     	str	x9, [x8]
   10b1c: f9400a60     	ldr	x0, [x19, #0x10]
   10b20: 91008ac8     	add	x8, x22, #0x22
   10b24: a9002276     	stp	x22, x8, [x19]
   10b28: 94000000     	bl	0x10b28 <syna_cdev_open+0x138>
		0000000000010b28:  R_AARCH64_CALL26	kfree
   10b2c: aa1303e0     	mov	x0, x19
   10b30: 94000000     	bl	0x10b30 <syna_cdev_open+0x140>
		0000000000010b30:  R_AARCH64_CALL26	kfree
   10b34: b944f288     	ldr	w8, [x20, #0x4f0]
   10b38: 34fffd88     	cbz	w8, 0x10ae8 <syna_cdev_open+0xf8>
   10b3c: 51000508     	sub	w8, w8, #0x1
   10b40: b904f288     	str	w8, [x20, #0x4f0]
   10b44: 17ffffe9     	b	0x10ae8 <syna_cdev_open+0xf8>
   10b48: aa1303e0     	mov	x0, x19
   10b4c: 94000000     	bl	0x10b4c <syna_cdev_open+0x15c>
		0000000000010b4c:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   10b50: 17fffff3     	b	0x10b1c <syna_cdev_open+0x12c>
