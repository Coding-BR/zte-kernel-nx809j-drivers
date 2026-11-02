
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000082c8 <ram_update_show>:
    82c8: d503233f     	paciasp
    82cc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    82d0: a90157f6     	stp	x22, x21, [sp, #0x10]
    82d4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    82d8: 910003fd     	mov	x29, sp
    82dc: f9404c15     	ldr	x21, [x0, #0x98]
    82e0: aa0203f3     	mov	x19, x2
    82e4: f94292a8     	ldr	x8, [x21, #0x520]
    82e8: d102a2b4     	sub	x20, x21, #0xa8
    82ec: aa1403e0     	mov	x0, x20
    82f0: f9401d08     	ldr	x8, [x8, #0x38]
    82f4: b85fc110     	ldur	w16, [x8, #-0x4]
    82f8: 72810611     	movk	w17, #0x830
    82fc: 72b08f51     	movk	w17, #0x847a, lsl #16
    8300: 6b11021f     	cmp	w16, w17
    8304: 54000040     	b.eq	0x830c <ram_update_show+0x44>
    8308: d4304500     	brk	#0x8228
    830c: d63f0100     	blr	x8
    8310: f94292a8     	ldr	x8, [x21, #0x520]
    8314: aa1403e0     	mov	x0, x20
    8318: 52800021     	mov	w1, #0x1                // =1
    831c: f9403508     	ldr	x8, [x8, #0x68]
    8320: b85fc110     	ldur	w16, [x8, #-0x4]
    8324: 729bedd1     	movk	w17, #0xdf6e
    8328: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    832c: 6b11021f     	cmp	w16, w17
    8330: 54000040     	b.eq	0x8338 <ram_update_show+0x70>
    8334: d4304500     	brk	#0x8228
    8338: d63f0100     	blr	x8
    833c: f94292a8     	ldr	x8, [x21, #0x520]
    8340: aa1403e0     	mov	x0, x20
    8344: f9407d08     	ldr	x8, [x8, #0xf8]
    8348: b85fc110     	ldur	w16, [x8, #-0x4]
    834c: 72810611     	movk	w17, #0x830
    8350: 72b08f51     	movk	w17, #0x847a, lsl #16
    8354: 6b11021f     	cmp	w16, w17
    8358: 54000040     	b.eq	0x8360 <ram_update_show+0x98>
    835c: d4304500     	brk	#0x8228
    8360: d63f0100     	blr	x8
    8364: 90000008     	adrp	x8, 0x8000 <reg_show+0x10>
		0000000000008364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x276a
    8368: 91000108     	add	x8, x8, #0x0
		0000000000008368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x276a
    836c: aa1403e0     	mov	x0, x20
    8370: a9402109     	ldp	x9, x8, [x8]
    8374: aa1303e1     	mov	x1, x19
    8378: a9002269     	stp	x9, x8, [x19]
    837c: f94292a8     	ldr	x8, [x21, #0x520]
    8380: f940a108     	ldr	x8, [x8, #0x140]
    8384: b85fc110     	ldur	w16, [x8, #-0x4]
    8388: 72974991     	movk	w17, #0xba4c
    838c: 72a181b1     	movk	w17, #0xc0d, lsl #16
    8390: 6b11021f     	cmp	w16, w17
    8394: 54000040     	b.eq	0x839c <ram_update_show+0xd4>
    8398: d4304500     	brk	#0x8228
    839c: d63f0100     	blr	x8
    83a0: 5281fe28     	mov	w8, #0xff1              // =4081
    83a4: 91003c16     	add	x22, x0, #0xf
    83a8: 90000002     	adrp	x2, 0x8000 <reg_show+0x10>
		00000000000083a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b42
    83ac: 91000042     	add	x2, x2, #0x0
		00000000000083ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b42
    83b0: cb000101     	sub	x1, x8, x0
    83b4: 8b160260     	add	x0, x19, x22
    83b8: 94000000     	bl	0x83b8 <ram_update_show+0xf0>
		00000000000083b8:  R_AARCH64_CALL26	snprintf
    83bc: f94292a8     	ldr	x8, [x21, #0x520]
    83c0: 8b20c2d3     	add	x19, x22, w0, sxtw
    83c4: aa1403e0     	mov	x0, x20
    83c8: 2a1f03e1     	mov	w1, wzr
    83cc: f9403508     	ldr	x8, [x8, #0x68]
    83d0: b85fc110     	ldur	w16, [x8, #-0x4]
    83d4: 729bedd1     	movk	w17, #0xdf6e
    83d8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    83dc: 6b11021f     	cmp	w16, w17
    83e0: 54000040     	b.eq	0x83e8 <ram_update_show+0x120>
    83e4: d4304500     	brk	#0x8228
    83e8: d63f0100     	blr	x8
    83ec: aa1303e0     	mov	x0, x19
    83f0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    83f4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    83f8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    83fc: d50323bf     	autiasp
    8400: d65f03c0     	ret
