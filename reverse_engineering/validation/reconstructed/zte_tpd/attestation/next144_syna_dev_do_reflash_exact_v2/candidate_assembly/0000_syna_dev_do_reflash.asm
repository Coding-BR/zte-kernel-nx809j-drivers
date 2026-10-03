
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b61c <syna_dev_do_reflash>:
    b61c: d503233f     	paciasp
    b620: d100c3ff     	sub	sp, sp, #0x30
    b624: a9017bfd     	stp	x29, x30, [sp, #0x10]
    b628: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b62c: 910043fd     	add	x29, sp, #0x10
    b630: d5384108     	mrs	x8, SP_EL0
    b634: f9438908     	ldr	x8, [x8, #0x710]
    b638: f90007e8     	str	x8, [sp, #0x8]
    b63c: f90003ff     	str	xzr, [sp]
    b640: b5000180     	cbnz	x0, 0xb670 <syna_dev_do_reflash+0x54>
    b644: 128002a0     	mov	w0, #-0x16              // =-22
    b648: d5384108     	mrs	x8, SP_EL0
    b64c: f9438908     	ldr	x8, [x8, #0x710]
    b650: f94007e9     	ldr	x9, [sp, #0x8]
    b654: eb09011f     	cmp	x8, x9
    b658: 54000621     	b.ne	0xb71c <syna_dev_do_reflash+0x100>
    b65c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b660: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    b664: 9100c3ff     	add	sp, sp, #0x30
    b668: d50323bf     	autiasp
    b66c: d65f03c0     	ret
    b670: a9402013     	ldp	x19, x8, [x0]
    b674: 2a0103f4     	mov	w20, w1
    b678: 90000001     	adrp	x1, 0xb000 <syna_cdev_create+0xbc>
		000000000000b678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4ff
    b67c: 91000021     	add	x1, x1, #0x0
		000000000000b67c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4ff
    b680: 910003e0     	mov	x0, sp
    b684: f9403902     	ldr	x2, [x8, #0x70]
    b688: 94000000     	bl	0xb688 <syna_dev_do_reflash+0x6c>
		000000000000b688:  R_AARCH64_CALL26	request_firmware
    b68c: 36f80180     	tbz	w0, #0x1f, 0xb6bc <syna_dev_do_reflash+0xa0>
    b690: 90000008     	adrp	x8, 0xb000 <syna_cdev_create+0xbc>
		000000000000b690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a877
    b694: 91000108     	add	x8, x8, #0x0
		000000000000b694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a877
    b698: 90000001     	adrp	x1, 0xb000 <syna_cdev_create+0xbc>
		000000000000b698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccea
    b69c: 91000021     	add	x1, x1, #0x0
		000000000000b69c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccea
    b6a0: 90000002     	adrp	x2, 0xb000 <syna_cdev_create+0xbc>
		000000000000b6a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4ff
    b6a4: 91000042     	add	x2, x2, #0x0
		000000000000b6a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4ff
    b6a8: 2a0003f3     	mov	w19, w0
    b6ac: aa0803e0     	mov	x0, x8
    b6b0: 94000000     	bl	0xb6b0 <syna_dev_do_reflash+0x94>
		000000000000b6b0:  R_AARCH64_CALL26	_printk
    b6b4: 2a1303e0     	mov	w0, w19
    b6b8: 17ffffe4     	b	0xb648 <syna_dev_do_reflash+0x2c>
    b6bc: f94003e8     	ldr	x8, [sp]
    b6c0: 12000284     	and	w4, w20, #0x1
    b6c4: aa1303e0     	mov	x0, x19
    b6c8: 2a1f03e3     	mov	w3, wzr
    b6cc: f9400501     	ldr	x1, [x8, #0x8]
    b6d0: b9400102     	ldr	w2, [x8]
    b6d4: 94000000     	bl	0xb6d4 <syna_dev_do_reflash+0xb8>
		000000000000b6d4:  R_AARCH64_CALL26	syna_tcm_do_fw_update
    b6d8: 2a0003f4     	mov	w20, w0
    b6dc: 36f800c0     	tbz	w0, #0x1f, 0xb6f4 <syna_dev_do_reflash+0xd8>
    b6e0: 90000000     	adrp	x0, 0xb000 <syna_cdev_create+0xbc>
		000000000000b6e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x178c7
    b6e4: 91000000     	add	x0, x0, #0x0
		000000000000b6e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x178c7
    b6e8: 90000001     	adrp	x1, 0xb000 <syna_cdev_create+0xbc>
		000000000000b6e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccea
    b6ec: 91000021     	add	x1, x1, #0x0
		000000000000b6ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccea
    b6f0: 94000000     	bl	0xb6f0 <syna_dev_do_reflash+0xd4>
		000000000000b6f0:  R_AARCH64_CALL26	_printk
    b6f4: 39402662     	ldrb	w2, [x19, #0x9]
    b6f8: 90000000     	adrp	x0, 0xb000 <syna_cdev_create+0xbc>
		000000000000b6f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e8a
    b6fc: 91000000     	add	x0, x0, #0x0
		000000000000b6fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e8a
    b700: 90000001     	adrp	x1, 0xb000 <syna_cdev_create+0xbc>
		000000000000b700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccea
    b704: 91000021     	add	x1, x1, #0x0
		000000000000b704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccea
    b708: 94000000     	bl	0xb708 <syna_dev_do_reflash+0xec>
		000000000000b708:  R_AARCH64_CALL26	_printk
    b70c: f94003e0     	ldr	x0, [sp]
    b710: 94000000     	bl	0xb710 <syna_dev_do_reflash+0xf4>
		000000000000b710:  R_AARCH64_CALL26	release_firmware
    b714: 2a1403e0     	mov	w0, w20
    b718: 17ffffcc     	b	0xb648 <syna_dev_do_reflash+0x2c>
    b71c: 94000000     	bl	0xb71c <syna_dev_do_reflash+0x100>
		000000000000b71c:  R_AARCH64_CALL26	__stack_chk_fail
