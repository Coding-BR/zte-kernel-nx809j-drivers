
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000065c8 <richtap_file_mmap>:
    65c8: d503233f     	paciasp
    65cc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    65d0: f9000bf5     	str	x21, [sp, #0x10]
    65d4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    65d8: 910003fd     	mov	x29, sp
    65dc: f9401014     	ldr	x20, [x0, #0x20]
    65e0: 14000037     	b	0x66bc <richtap_file_mmap+0xf4>
    65e4: d503201f     	nop
    65e8: d503201f     	nop
    65ec: d503201f     	nop
    65f0: aa0103f3     	mov	x19, x1
    65f4: b4000621     	cbz	x1, 0x66b8 <richtap_file_mmap+0xf0>
    65f8: d5384108     	mrs	x8, SP_EL0
    65fc: 52801f69     	mov	w9, #0xfb               // =251
    6600: f9400e75     	ldr	x21, [x19, #0x18]
    6604: f9434508     	ldr	x8, [x8, #0x688]
    6608: f9409508     	ldr	x8, [x8, #0x128]
    660c: aa090100     	orr	x0, x8, x9
    6610: 94000000     	bl	0x6610 <richtap_file_mmap+0x48>
		0000000000006610:  R_AARCH64_CALL26	vm_get_page_prot
    6614: eb0002bf     	cmp	x21, x0
    6618: 54000401     	b.ne	0x6698 <richtap_file_mmap+0xd0>
    661c: a9402261     	ldp	x1, x8, [x19]
    6620: cb010108     	sub	x8, x8, x1
    6624: f140111f     	cmp	x8, #0x4, lsl #12       // =0x4000
    6628: 540003c1     	b.ne	0x66a0 <richtap_file_mmap+0xd8>
    662c: f9430a88     	ldr	x8, [x20, #0x610]
    6630: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    6634: 9000000a     	adrp	x10, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006634:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
    6638: 9000000b     	adrp	x11, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006638:  R_AARCH64_ADR_PREL_PG_HI21	kimage_voffset
    663c: f940014a     	ldr	x10, [x10]
		000000000000663c:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
    6640: f9400e64     	ldr	x4, [x19, #0x18]
    6644: 9340dd08     	sbfx	x8, x8, #0, #56
    6648: f940016b     	ldr	x11, [x11]
		0000000000006648:  R_AARCH64_LDST64_ABS_LO12_NC	kimage_voffset
    664c: aa1303e0     	mov	x0, x19
    6650: 52880003     	mov	w3, #0x4000             // =16384
    6654: 8b090109     	add	x9, x8, x9
    6658: cb0b0108     	sub	x8, x8, x11
    665c: d366fd2c     	lsr	x12, x9, #38
    6660: 8b0a0129     	add	x9, x9, x10
    6664: f100019f     	cmp	x12, #0x0
    6668: 9a880128     	csel	x8, x9, x8, eq
    666c: d34cfd02     	lsr	x2, x8, #12
    6670: 94000000     	bl	0x6670 <richtap_file_mmap+0xa8>
		0000000000006670:  R_AARCH64_CALL26	remap_pfn_range
    6674: 34000180     	cbz	w0, 0x66a4 <richtap_file_mmap+0xdc>
    6678: f9419288     	ldr	x8, [x20, #0x320]
    667c: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		000000000000667c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef0
    6680: 91000021     	add	x1, x1, #0x0
		0000000000006680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef0
    6684: 2a0003f3     	mov	w19, w0
    6688: aa0803e0     	mov	x0, x8
    668c: 94000000     	bl	0x668c <richtap_file_mmap+0xc4>
		000000000000668c:  R_AARCH64_CALL26	_dev_err
    6690: 2a1303e0     	mov	w0, w19
    6694: 14000004     	b	0x66a4 <richtap_file_mmap+0xdc>
    6698: 12800000     	mov	w0, #-0x1               // =-1
    669c: 14000002     	b	0x66a4 <richtap_file_mmap+0xdc>
    66a0: 12800160     	mov	w0, #-0xc               // =-12
    66a4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    66a8: f9400bf5     	ldr	x21, [sp, #0x10]
    66ac: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    66b0: d50323bf     	autiasp
    66b4: d65f03c0     	ret
    66b8: d4200020     	brk	#0x1
    66bc: d4210000     	brk	#0x800
