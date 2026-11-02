
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020290 <syna_tcm_buf_alloc_0>:
   20290: d503233f     	paciasp
   20294: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   20298: a9014ff4     	stp	x20, x19, [sp, #0x10]
   2029c: 910003fd     	mov	x29, sp
   202a0: b9400814     	ldr	w20, [x0, #0x8]
   202a4: aa0003f3     	mov	x19, x0
   202a8: f9400000     	ldr	x0, [x0]
   202ac: 71003e9f     	cmp	w20, #0xf
   202b0: 54000208     	b.hi	0x202f0 <syna_tcm_buf_alloc_0+0x60>
   202b4: b40000c0     	cbz	x0, 0x202cc <syna_tcm_buf_alloc_0+0x3c>
   202b8: aa0003f4     	mov	x20, x0
   202bc: 94000000     	bl	0x202bc <syna_tcm_buf_alloc_0+0x2c>
		00000000000202bc:  R_AARCH64_CALL26	syna_request_managed_device
   202c0: b40002a0     	cbz	x0, 0x20314 <syna_tcm_buf_alloc_0+0x84>
   202c4: aa1403e1     	mov	x1, x20
   202c8: 94000000     	bl	0x202c8 <syna_tcm_buf_alloc_0+0x38>
		00000000000202c8:  R_AARCH64_CALL26	devm_kfree
   202cc: 94000000     	bl	0x202cc <syna_tcm_buf_alloc_0+0x3c>
		00000000000202cc:  R_AARCH64_CALL26	syna_request_managed_device
   202d0: b4000300     	cbz	x0, 0x20330 <syna_tcm_buf_alloc_0+0xa0>
   202d4: 52800201     	mov	w1, #0x10               // =16
   202d8: 5281b802     	mov	w2, #0xdc0              // =3520
   202dc: 52800214     	mov	w20, #0x10              // =16
   202e0: 94000000     	bl	0x202e0 <syna_tcm_buf_alloc_0+0x50>
		00000000000202e0:  R_AARCH64_CALL26	devm_kmalloc
   202e4: f9000260     	str	x0, [x19]
   202e8: b4000300     	cbz	x0, 0x20348 <syna_tcm_buf_alloc_0+0xb8>
   202ec: b9000a74     	str	w20, [x19, #0x8]
   202f0: 2a1403e2     	mov	w2, w20
   202f4: 2a1f03e1     	mov	w1, wzr
   202f8: 94000000     	bl	0x202f8 <syna_tcm_buf_alloc_0+0x68>
		00000000000202f8:  R_AARCH64_CALL26	memset
   202fc: 2a1f03e0     	mov	w0, wzr
   20300: b9000e7f     	str	wzr, [x19, #0xc]
   20304: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   20308: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   2030c: d50323bf     	autiasp
   20310: d65f03c0     	ret
   20314: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x5d8>
		0000000000020314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11089
   20318: 91000000     	add	x0, x0, #0x0
		0000000000020318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11089
   2031c: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x5d8>
		000000000002031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10800
   20320: 91000021     	add	x1, x1, #0x0
		0000000000020320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10800
   20324: 94000000     	bl	0x20324 <syna_tcm_buf_alloc_0+0x94>
		0000000000020324:  R_AARCH64_CALL26	_printk
   20328: 94000000     	bl	0x20328 <syna_tcm_buf_alloc_0+0x98>
		0000000000020328:  R_AARCH64_CALL26	syna_request_managed_device
   2032c: b5fffd40     	cbnz	x0, 0x202d4 <syna_tcm_buf_alloc_0+0x44>
   20330: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x5d8>
		0000000000020330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11089
   20334: 91000000     	add	x0, x0, #0x0
		0000000000020334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11089
   20338: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x5d8>
		0000000000020338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd89d
   2033c: 91000021     	add	x1, x1, #0x0
		000000000002033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd89d
   20340: 94000000     	bl	0x20340 <syna_tcm_buf_alloc_0+0xb0>
		0000000000020340:  R_AARCH64_CALL26	_printk
   20344: f900027f     	str	xzr, [x19]
   20348: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x5d8>
		0000000000020348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe481
   2034c: 91000000     	add	x0, x0, #0x0
		000000000002034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe481
   20350: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x5d8>
		0000000000020350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef21
   20354: 91000021     	add	x1, x1, #0x0
		0000000000020354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef21
   20358: 52800202     	mov	w2, #0x10               // =16
   2035c: 94000000     	bl	0x2035c <syna_tcm_buf_alloc_0+0xcc>
		000000000002035c:  R_AARCH64_CALL26	_printk
   20360: b9000a7f     	str	wzr, [x19, #0x8]
   20364: 12801e40     	mov	w0, #-0xf3              // =-243
   20368: 17ffffe6     	b	0x20300 <syna_tcm_buf_alloc_0+0x70>
