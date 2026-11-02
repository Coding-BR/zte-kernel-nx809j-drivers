
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f1fc <syna_tcm_buf_alloc_0>:
    f1fc: d503233f     	paciasp
    f200: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    f204: a9014ff4     	stp	x20, x19, [sp, #0x10]
    f208: 910003fd     	mov	x29, sp
    f20c: b9400814     	ldr	w20, [x0, #0x8]
    f210: aa0003f3     	mov	x19, x0
    f214: f9400000     	ldr	x0, [x0]
    f218: 71003e9f     	cmp	w20, #0xf
    f21c: 54000208     	b.hi	0xf25c <syna_tcm_buf_alloc_0+0x60>
    f220: b40000c0     	cbz	x0, 0xf238 <syna_tcm_buf_alloc_0+0x3c>
    f224: aa0003f4     	mov	x20, x0
    f228: 94000000     	bl	0xf228 <syna_tcm_buf_alloc_0+0x2c>
		000000000000f228:  R_AARCH64_CALL26	syna_request_managed_device
    f22c: b40002a0     	cbz	x0, 0xf280 <syna_tcm_buf_alloc_0+0x84>
    f230: aa1403e1     	mov	x1, x20
    f234: 94000000     	bl	0xf234 <syna_tcm_buf_alloc_0+0x38>
		000000000000f234:  R_AARCH64_CALL26	devm_kfree
    f238: 94000000     	bl	0xf238 <syna_tcm_buf_alloc_0+0x3c>
		000000000000f238:  R_AARCH64_CALL26	syna_request_managed_device
    f23c: b4000300     	cbz	x0, 0xf29c <syna_tcm_buf_alloc_0+0xa0>
    f240: 52800201     	mov	w1, #0x10               // =16
    f244: 5281b802     	mov	w2, #0xdc0              // =3520
    f248: 52800214     	mov	w20, #0x10              // =16
    f24c: 94000000     	bl	0xf24c <syna_tcm_buf_alloc_0+0x50>
		000000000000f24c:  R_AARCH64_CALL26	devm_kmalloc
    f250: f9000260     	str	x0, [x19]
    f254: b4000300     	cbz	x0, 0xf2b4 <syna_tcm_buf_alloc_0+0xb8>
    f258: b9000a74     	str	w20, [x19, #0x8]
    f25c: 2a1403e2     	mov	w2, w20
    f260: 2a1f03e1     	mov	w1, wzr
    f264: 94000000     	bl	0xf264 <syna_tcm_buf_alloc_0+0x68>
		000000000000f264:  R_AARCH64_CALL26	memset
    f268: 2a1f03e0     	mov	w0, wzr
    f26c: b9000e7f     	str	wzr, [x19, #0xc]
    f270: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    f274: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    f278: d50323bf     	autiasp
    f27c: d65f03c0     	ret
    f280: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
    f284: 91000000     	add	x0, x0, #0x0
		000000000000f284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
    f288: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
    f28c: 91000021     	add	x1, x1, #0x0
		000000000000f28c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
    f290: 94000000     	bl	0xf290 <syna_tcm_buf_alloc_0+0x94>
		000000000000f290:  R_AARCH64_CALL26	_printk
    f294: 94000000     	bl	0xf294 <syna_tcm_buf_alloc_0+0x98>
		000000000000f294:  R_AARCH64_CALL26	syna_request_managed_device
    f298: b5fffd40     	cbnz	x0, 0xf240 <syna_tcm_buf_alloc_0+0x44>
    f29c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f29c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
    f2a0: 91000000     	add	x0, x0, #0x0
		000000000000f2a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
    f2a4: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f2a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
    f2a8: 91000021     	add	x1, x1, #0x0
		000000000000f2a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
    f2ac: 94000000     	bl	0xf2ac <syna_tcm_buf_alloc_0+0xb0>
		000000000000f2ac:  R_AARCH64_CALL26	_printk
    f2b0: f900027f     	str	xzr, [x19]
    f2b4: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f2b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
    f2b8: 91000000     	add	x0, x0, #0x0
		000000000000f2b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
    f2bc: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f2bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
    f2c0: 91000021     	add	x1, x1, #0x0
		000000000000f2c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
    f2c4: 52800202     	mov	w2, #0x10               // =16
    f2c8: 94000000     	bl	0xf2c8 <syna_tcm_buf_alloc_0+0xcc>
		000000000000f2c8:  R_AARCH64_CALL26	_printk
    f2cc: b9000a7f     	str	wzr, [x19, #0x8]
    f2d0: 12801e40     	mov	w0, #-0xf3              // =-243
    f2d4: 17ffffe6     	b	0xf26c <syna_tcm_buf_alloc_0+0x70>
