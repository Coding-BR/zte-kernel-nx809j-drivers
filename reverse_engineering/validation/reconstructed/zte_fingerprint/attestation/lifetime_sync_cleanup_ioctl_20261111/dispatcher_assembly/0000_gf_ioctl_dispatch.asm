
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007b4 <gf_ioctl_dispatch>:
     7b4: d503233f     	paciasp
     7b8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     7bc: f9000bf7     	str	x23, [sp, #0x10]
     7c0: a90257f6     	stp	x22, x21, [sp, #0x20]
     7c4: a9034ff4     	stp	x20, x19, [sp, #0x30]
     7c8: 910003fd     	mov	x29, sp
     7cc: f9401013     	ldr	x19, [x0, #0x20]
     7d0: b40001d3     	cbz	x19, 0x808 <gf_ioctl_dispatch+0x54>
     7d4: aa0003f6     	mov	x22, x0
     7d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     7dc: 91000000     	add	x0, x0, #0x0
		00000000000007dc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     7e0: 2a0103f4     	mov	w20, w1
     7e4: aa0203f5     	mov	x21, x2
     7e8: 94000000     	bl	0x7e8 <gf_ioctl_dispatch+0x34>
		00000000000007e8:  R_AARCH64_CALL26	mutex_lock
     7ec: 3941ce68     	ldrb	w8, [x19, #0x73]
     7f0: 340001c8     	cbz	w8, 0x828 <gf_ioctl_dispatch+0x74>
     7f4: 92800254     	mov	x20, #-0x13             // =-19
     7f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007f8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     7fc: 91000000     	add	x0, x0, #0x0
		00000000000007fc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     800: 94000000     	bl	0x800 <gf_ioctl_dispatch+0x4c>
		0000000000000800:  R_AARCH64_CALL26	mutex_unlock
     804: 14000002     	b	0x80c <gf_ioctl_dispatch+0x58>
     808: 928002b4     	mov	x20, #-0x16             // =-22
     80c: aa1403e0     	mov	x0, x20
     810: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     814: f9400bf7     	ldr	x23, [sp, #0x10]
     818: a94257f6     	ldp	x22, x21, [sp, #0x20]
     81c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     820: d50323bf     	autiasp
     824: d65f03c0     	ret
     828: b9400268     	ldr	w8, [x19]
     82c: 34fffe48     	cbz	w8, 0x7f4 <gf_ioctl_dispatch+0x40>
     830: f9401268     	ldr	x8, [x19, #0x20]
     834: b4fffe08     	cbz	x8, 0x7f4 <gf_ioctl_dispatch+0x40>
     838: 528ce197     	mov	w23, #0x670c            // =26380
     83c: 6b17029f     	cmp	w20, w23
     840: 54000101     	b.ne	0x860 <gf_ioctl_dispatch+0xac>
     844: 3941c268     	ldrb	w8, [x19, #0x70]
     848: 34fffd68     	cbz	w8, 0x7f4 <gf_ioctl_dispatch+0x40>
     84c: b9403a68     	ldr	w8, [x19, #0x38]
     850: 7100051f     	cmp	w8, #0x1
     854: 54000281     	b.ne	0x8a4 <gf_ioctl_dispatch+0xf0>
     858: aa1303e0     	mov	x0, x19
     85c: 94000235     	bl	0x1130 <gf_release_irq>
     860: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000860:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc14
     864: 91000108     	add	x8, x8, #0x0
		0000000000000864:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc14
     868: aa1603e0     	mov	x0, x22
     86c: 2a1403e1     	mov	w1, w20
     870: aa1503e2     	mov	x2, x21
     874: b85fc110     	ldur	w16, [x8, #-0x4]
     878: 7299b771     	movk	w17, #0xcdbb
     87c: 72a55ed1     	movk	w17, #0x2af6, lsl #16
     880: 6b11021f     	cmp	w16, w17
     884: 54000040     	b.eq	0x88c <gf_ioctl_dispatch+0xd8>
     888: d4304500     	brk	#0x8228
     88c: d63f0100     	blr	x8
     890: 6b17029f     	cmp	w20, w23
     894: aa0003f4     	mov	x20, x0
     898: 54fffb01     	b.ne	0x7f8 <gf_ioctl_dispatch+0x44>
     89c: 3901c27f     	strb	wzr, [x19, #0x70]
     8a0: 17ffffd6     	b	0x7f8 <gf_ioctl_dispatch+0x44>
     8a4: 928001f4     	mov	x20, #-0x10             // =-16
     8a8: 17ffffd4     	b	0x7f8 <gf_ioctl_dispatch+0x44>
