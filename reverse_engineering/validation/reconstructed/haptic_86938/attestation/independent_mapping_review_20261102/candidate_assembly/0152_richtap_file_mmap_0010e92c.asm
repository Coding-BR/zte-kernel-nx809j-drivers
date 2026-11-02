
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000065f8 <richtap_file_mmap>:
    65f8: d503233f     	paciasp
    65fc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    6600: f9000bf5     	str	x21, [sp, #0x10]
    6604: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6608: 910003fd     	mov	x29, sp
    660c: f9401014     	ldr	x20, [x0, #0x20]
    6610: 14000037     	b	0x66ec <richtap_file_mmap+0xf4>
    6614: d503201f     	nop
    6618: d503201f     	nop
    661c: d503201f     	nop
    6620: aa0103f3     	mov	x19, x1
    6624: b4000621     	cbz	x1, 0x66e8 <richtap_file_mmap+0xf0>
    6628: d5384108     	mrs	x8, SP_EL0
    662c: 52801f69     	mov	w9, #0xfb               // =251
    6630: f9400e75     	ldr	x21, [x19, #0x18]
    6634: f9434508     	ldr	x8, [x8, #0x688]
    6638: f9409508     	ldr	x8, [x8, #0x128]
    663c: aa090100     	orr	x0, x8, x9
    6640: 94000000     	bl	0x6640 <richtap_file_mmap+0x48>
		0000000000006640:  R_AARCH64_CALL26	vm_get_page_prot
    6644: eb0002bf     	cmp	x21, x0
    6648: 54000401     	b.ne	0x66c8 <richtap_file_mmap+0xd0>
    664c: a9402261     	ldp	x1, x8, [x19]
    6650: cb010108     	sub	x8, x8, x1
    6654: f140111f     	cmp	x8, #0x4, lsl #12       // =0x4000
    6658: 540003c1     	b.ne	0x66d0 <richtap_file_mmap+0xd8>
    665c: f9430a88     	ldr	x8, [x20, #0x610]
    6660: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    6664: 9000000a     	adrp	x10, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006664:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
    6668: 9000000b     	adrp	x11, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006668:  R_AARCH64_ADR_PREL_PG_HI21	kimage_voffset
    666c: f940014a     	ldr	x10, [x10]
		000000000000666c:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
    6670: f9400e64     	ldr	x4, [x19, #0x18]
    6674: 9340dd08     	sbfx	x8, x8, #0, #56
    6678: f940016b     	ldr	x11, [x11]
		0000000000006678:  R_AARCH64_LDST64_ABS_LO12_NC	kimage_voffset
    667c: aa1303e0     	mov	x0, x19
    6680: 52880003     	mov	w3, #0x4000             // =16384
    6684: 8b090109     	add	x9, x8, x9
    6688: cb0b0108     	sub	x8, x8, x11
    668c: d366fd2c     	lsr	x12, x9, #38
    6690: 8b0a0129     	add	x9, x9, x10
    6694: f100019f     	cmp	x12, #0x0
    6698: 9a880128     	csel	x8, x9, x8, eq
    669c: d34cfd02     	lsr	x2, x8, #12
    66a0: 94000000     	bl	0x66a0 <richtap_file_mmap+0xa8>
		00000000000066a0:  R_AARCH64_CALL26	remap_pfn_range
    66a4: 34000180     	cbz	w0, 0x66d4 <richtap_file_mmap+0xdc>
    66a8: f9419288     	ldr	x8, [x20, #0x320]
    66ac: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000066ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef0
    66b0: 91000021     	add	x1, x1, #0x0
		00000000000066b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef0
    66b4: 2a0003f3     	mov	w19, w0
    66b8: aa0803e0     	mov	x0, x8
    66bc: 94000000     	bl	0x66bc <richtap_file_mmap+0xc4>
		00000000000066bc:  R_AARCH64_CALL26	_dev_err
    66c0: 2a1303e0     	mov	w0, w19
    66c4: 14000004     	b	0x66d4 <richtap_file_mmap+0xdc>
    66c8: 12800000     	mov	w0, #-0x1               // =-1
    66cc: 14000002     	b	0x66d4 <richtap_file_mmap+0xdc>
    66d0: 12800160     	mov	w0, #-0xc               // =-12
    66d4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    66d8: f9400bf5     	ldr	x21, [sp, #0x10]
    66dc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    66e0: d50323bf     	autiasp
    66e4: d65f03c0     	ret
    66e8: d4200020     	brk	#0x1
    66ec: d4210000     	brk	#0x800
