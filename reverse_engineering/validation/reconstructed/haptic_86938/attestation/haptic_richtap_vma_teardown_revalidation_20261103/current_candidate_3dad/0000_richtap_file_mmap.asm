
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007960 <richtap_file_mmap>:
    7960: d503233f     	paciasp
    7964: d10143ff     	sub	sp, sp, #0x50
    7968: a9027bfd     	stp	x29, x30, [sp, #0x20]
    796c: f9001bf5     	str	x21, [sp, #0x30]
    7970: a9044ff4     	stp	x20, x19, [sp, #0x40]
    7974: 910083fd     	add	x29, sp, #0x20
    7978: d5384108     	mrs	x8, SP_EL0
    797c: f9438908     	ldr	x8, [x8, #0x710]
    7980: f81f83a8     	stur	x8, [x29, #-0x8]
    7984: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    7988: 1400004a     	b	0x7ab0 <richtap_file_mmap+0x150>
    798c: d503201f     	nop
    7990: d503201f     	nop
    7994: d503201f     	nop
    7998: aa0103f4     	mov	x20, x1
    799c: aa0103f3     	mov	x19, x1
    79a0: 910043e1     	add	x1, sp, #0x10
    79a4: 910023e2     	add	x2, sp, #0x8
    79a8: 94000000     	bl	0x79a8 <richtap_file_mmap+0x48>
		00000000000079a8:  R_AARCH64_CALL26	haptic_lifetime_enter_file
    79ac: 350005c0     	cbnz	w0, 0x7a64 <richtap_file_mmap+0x104>
    79b0: b40007f4     	cbz	x20, 0x7aac <richtap_file_mmap+0x14c>
    79b4: d5384108     	mrs	x8, SP_EL0
    79b8: 52801f69     	mov	w9, #0xfb               // =251
    79bc: f94007f4     	ldr	x20, [sp, #0x8]
    79c0: f9434508     	ldr	x8, [x8, #0x688]
    79c4: f9400e75     	ldr	x21, [x19, #0x18]
    79c8: f9409508     	ldr	x8, [x8, #0x128]
    79cc: aa090100     	orr	x0, x8, x9
    79d0: 94000000     	bl	0x79d0 <richtap_file_mmap+0x70>
		00000000000079d0:  R_AARCH64_CALL26	vm_get_page_prot
    79d4: eb0002bf     	cmp	x21, x0
    79d8: 540003a1     	b.ne	0x7a4c <richtap_file_mmap+0xec>
    79dc: a9402261     	ldp	x1, x8, [x19]
    79e0: cb010108     	sub	x8, x8, x1
    79e4: f140111f     	cmp	x8, #0x4, lsl #12       // =0x4000
    79e8: 54000361     	b.ne	0x7a54 <richtap_file_mmap+0xf4>
    79ec: f9430a88     	ldr	x8, [x20, #0x610]
    79f0: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    79f4: 9000000a     	adrp	x10, 0x7000 <haptic_lifetime_retire_state+0x16c>
		00000000000079f4:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
    79f8: 9000000b     	adrp	x11, 0x7000 <haptic_lifetime_retire_state+0x16c>
		00000000000079f8:  R_AARCH64_ADR_PREL_PG_HI21	kimage_voffset
    79fc: f940014a     	ldr	x10, [x10]
		00000000000079fc:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
    7a00: f9400e64     	ldr	x4, [x19, #0x18]
    7a04: 9340dd08     	sbfx	x8, x8, #0, #56
    7a08: f940016b     	ldr	x11, [x11]
		0000000000007a08:  R_AARCH64_LDST64_ABS_LO12_NC	kimage_voffset
    7a0c: aa1303e0     	mov	x0, x19
    7a10: 52880003     	mov	w3, #0x4000             // =16384
    7a14: 8b090109     	add	x9, x8, x9
    7a18: cb0b0108     	sub	x8, x8, x11
    7a1c: d366fd2c     	lsr	x12, x9, #38
    7a20: 8b0a0129     	add	x9, x9, x10
    7a24: f100019f     	cmp	x12, #0x0
    7a28: 9a880128     	csel	x8, x9, x8, eq
    7a2c: d34cfd02     	lsr	x2, x8, #12
    7a30: 94000000     	bl	0x7a30 <richtap_file_mmap+0xd0>
		0000000000007a30:  R_AARCH64_CALL26	remap_pfn_range
    7a34: 350002e0     	cbnz	w0, 0x7a90 <richtap_file_mmap+0x130>
    7a38: f9400be0     	ldr	x0, [sp, #0x10]
    7a3c: aa1303e1     	mov	x1, x19
    7a40: 94000000     	bl	0x7a40 <richtap_file_mmap+0xe0>
		0000000000007a40:  R_AARCH64_CALL26	haptic_lifetime_attach_vma
    7a44: 2a1f03f3     	mov	w19, wzr
    7a48: 14000004     	b	0x7a58 <richtap_file_mmap+0xf8>
    7a4c: 12800013     	mov	w19, #-0x1              // =-1
    7a50: 14000002     	b	0x7a58 <richtap_file_mmap+0xf8>
    7a54: 12800173     	mov	w19, #-0xc              // =-12
    7a58: f9400be0     	ldr	x0, [sp, #0x10]
    7a5c: 94000000     	bl	0x7a5c <richtap_file_mmap+0xfc>
		0000000000007a5c:  R_AARCH64_CALL26	haptic_lifetime_exit_file
    7a60: 2a1303e0     	mov	w0, w19
    7a64: d5384108     	mrs	x8, SP_EL0
    7a68: f9438908     	ldr	x8, [x8, #0x710]
    7a6c: f85f83a9     	ldur	x9, [x29, #-0x8]
    7a70: eb09011f     	cmp	x8, x9
    7a74: 540001a1     	b.ne	0x7aa8 <richtap_file_mmap+0x148>
    7a78: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    7a7c: f9401bf5     	ldr	x21, [sp, #0x30]
    7a80: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    7a84: 910143ff     	add	sp, sp, #0x50
    7a88: d50323bf     	autiasp
    7a8c: d65f03c0     	ret
    7a90: 2a0003f3     	mov	w19, w0
    7a94: f9419280     	ldr	x0, [x20, #0x320]
    7a98: 90000001     	adrp	x1, 0x7000 <haptic_lifetime_retire_state+0x16c>
		0000000000007a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf75
    7a9c: 91000021     	add	x1, x1, #0x0
		0000000000007a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf75
    7aa0: 94000000     	bl	0x7aa0 <richtap_file_mmap+0x140>
		0000000000007aa0:  R_AARCH64_CALL26	_dev_err
    7aa4: 17ffffed     	b	0x7a58 <richtap_file_mmap+0xf8>
    7aa8: 94000000     	bl	0x7aa8 <richtap_file_mmap+0x148>
		0000000000007aa8:  R_AARCH64_CALL26	__stack_chk_fail
    7aac: d4200020     	brk	#0x1
    7ab0: d4210000     	brk	#0x800
