
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000082f4 <syna_dev_do_reflash>:
    82f4: d503233f     	paciasp
    82f8: d100c3ff     	sub	sp, sp, #0x30
    82fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8300: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8304: 910043fd     	add	x29, sp, #0x10
    8308: d5384108     	mrs	x8, SP_EL0
    830c: f9438908     	ldr	x8, [x8, #0x710]
    8310: f90007e8     	str	x8, [sp, #0x8]
    8314: f90003ff     	str	xzr, [sp]
    8318: b5000180     	cbnz	x0, 0x8348 <syna_dev_do_reflash+0x54>
    831c: 128002a0     	mov	w0, #-0x16              // =-22
    8320: d5384108     	mrs	x8, SP_EL0
    8324: f9438908     	ldr	x8, [x8, #0x710]
    8328: f94007e9     	ldr	x9, [sp, #0x8]
    832c: eb09011f     	cmp	x8, x9
    8330: 54000621     	b.ne	0x83f4 <syna_dev_do_reflash+0x100>
    8334: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8338: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    833c: 9100c3ff     	add	sp, sp, #0x30
    8340: d50323bf     	autiasp
    8344: d65f03c0     	ret
    8348: a9402013     	ldp	x19, x8, [x0]
    834c: 2a0103f4     	mov	w20, w1
    8350: 90000001     	adrp	x1, 0x8000 <syna_dev_connect+0x2e8>
		0000000000008350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ae4
    8354: 91000021     	add	x1, x1, #0x0
		0000000000008354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ae4
    8358: 910003e0     	mov	x0, sp
    835c: f9403902     	ldr	x2, [x8, #0x70]
    8360: 94000000     	bl	0x8360 <syna_dev_do_reflash+0x6c>
		0000000000008360:  R_AARCH64_CALL26	request_firmware
    8364: 36f80180     	tbz	w0, #0x1f, 0x8394 <syna_dev_do_reflash+0xa0>
    8368: 90000008     	adrp	x8, 0x8000 <syna_dev_connect+0x2e8>
		0000000000008368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e90
    836c: 91000108     	add	x8, x8, #0x0
		000000000000836c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e90
    8370: 90000001     	adrp	x1, 0x8000 <syna_dev_connect+0x2e8>
		0000000000008370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d30
    8374: 91000021     	add	x1, x1, #0x0
		0000000000008374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d30
    8378: 90000002     	adrp	x2, 0x8000 <syna_dev_connect+0x2e8>
		0000000000008378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ae4
    837c: 91000042     	add	x2, x2, #0x0
		000000000000837c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ae4
    8380: 2a0003f3     	mov	w19, w0
    8384: aa0803e0     	mov	x0, x8
    8388: 94000000     	bl	0x8388 <syna_dev_do_reflash+0x94>
		0000000000008388:  R_AARCH64_CALL26	_printk
    838c: 2a1303e0     	mov	w0, w19
    8390: 17ffffe4     	b	0x8320 <syna_dev_do_reflash+0x2c>
    8394: f94003e8     	ldr	x8, [sp]
    8398: 12000284     	and	w4, w20, #0x1
    839c: aa1303e0     	mov	x0, x19
    83a0: 2a1f03e3     	mov	w3, wzr
    83a4: f9400501     	ldr	x1, [x8, #0x8]
    83a8: b9400102     	ldr	w2, [x8]
    83ac: 94000000     	bl	0x83ac <syna_dev_do_reflash+0xb8>
		00000000000083ac:  R_AARCH64_CALL26	syna_tcm_do_fw_update
    83b0: 2a0003f4     	mov	w20, w0
    83b4: 36f800c0     	tbz	w0, #0x1f, 0x83cc <syna_dev_do_reflash+0xd8>
    83b8: 90000000     	adrp	x0, 0x8000 <syna_dev_connect+0x2e8>
		00000000000083b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58f
    83bc: 91000000     	add	x0, x0, #0x0
		00000000000083bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58f
    83c0: 90000001     	adrp	x1, 0x8000 <syna_dev_connect+0x2e8>
		00000000000083c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d30
    83c4: 91000021     	add	x1, x1, #0x0
		00000000000083c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d30
    83c8: 94000000     	bl	0x83c8 <syna_dev_do_reflash+0xd4>
		00000000000083c8:  R_AARCH64_CALL26	_printk
    83cc: 39402662     	ldrb	w2, [x19, #0x9]
    83d0: 90000000     	adrp	x0, 0x8000 <syna_dev_connect+0x2e8>
		00000000000083d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1713
    83d4: 91000000     	add	x0, x0, #0x0
		00000000000083d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1713
    83d8: 90000001     	adrp	x1, 0x8000 <syna_dev_connect+0x2e8>
		00000000000083d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d30
    83dc: 91000021     	add	x1, x1, #0x0
		00000000000083dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d30
    83e0: 94000000     	bl	0x83e0 <syna_dev_do_reflash+0xec>
		00000000000083e0:  R_AARCH64_CALL26	_printk
    83e4: f94003e0     	ldr	x0, [sp]
    83e8: 94000000     	bl	0x83e8 <syna_dev_do_reflash+0xf4>
		00000000000083e8:  R_AARCH64_CALL26	release_firmware
    83ec: 2a1403e0     	mov	w0, w20
    83f0: 17ffffcc     	b	0x8320 <syna_dev_do_reflash+0x2c>
    83f4: 94000000     	bl	0x83f4 <syna_dev_do_reflash+0x100>
		00000000000083f4:  R_AARCH64_CALL26	__stack_chk_fail
