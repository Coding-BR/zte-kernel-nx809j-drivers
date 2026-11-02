
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029938 <syna_tcm_testing_check_frame_data>:
   29938: d503233f     	paciasp
   2993c: d101c3ff     	sub	sp, sp, #0x70
   29940: a9017bfd     	stp	x29, x30, [sp, #0x10]
   29944: a9026ffc     	stp	x28, x27, [sp, #0x20]
   29948: a90367fa     	stp	x26, x25, [sp, #0x30]
   2994c: a9045ff8     	stp	x24, x23, [sp, #0x40]
   29950: a90557f6     	stp	x22, x21, [sp, #0x50]
   29954: a9064ff4     	stp	x20, x19, [sp, #0x60]
   29958: 910043fd     	add	x29, sp, #0x10
   2995c: b9000be3     	str	w3, [sp, #0x8]
   29960: b4000844     	cbz	x4, 0x29a68 <syna_tcm_testing_check_frame_data+0x130>
   29964: aa0003f9     	mov	x25, x0
   29968: b4000800     	cbz	x0, 0x29a68 <syna_tcm_testing_check_frame_data+0x130>
   2996c: aa0503f5     	mov	x21, x5
   29970: b40007c5     	cbz	x5, 0x29a68 <syna_tcm_testing_check_frame_data+0x130>
   29974: b9400be8     	ldr	w8, [sp, #0x8]
   29978: aa0103f3     	mov	x19, x1
   2997c: 1b087c48     	mul	w8, w2, w8
   29980: 531f7903     	lsl	w3, w8, #1
   29984: eb01007f     	cmp	x3, x1
   29988: 540007e8     	b.hi	0x29a84 <syna_tcm_testing_check_frame_data+0x14c>
   2998c: 7100045f     	cmp	w2, #0x1
   29990: 5400056b     	b.lt	0x29a3c <syna_tcm_testing_check_frame_data+0x104>
   29994: b9400be8     	ldr	w8, [sp, #0x8]
   29998: aa0603f4     	mov	x20, x6
   2999c: aa0403f6     	mov	x22, x4
   299a0: 2a1f03e9     	mov	w9, wzr
   299a4: 2a1f03fa     	mov	w26, wzr
   299a8: 5280003c     	mov	w28, #0x1               // =1
   299ac: 531f790a     	lsl	w10, w8, #1
   299b0: 2a0803f7     	mov	w23, w8
   299b4: 29000bea     	stp	w10, w2, [sp]
   299b8: 14000007     	b	0x299d4 <syna_tcm_testing_check_frame_data+0x9c>
   299bc: 29400be8     	ldp	w8, w2, [sp]
   299c0: b85fc3a9     	ldur	w9, [x29, #-0x4]
   299c4: 1100075a     	add	w26, w26, #0x1
   299c8: 6b02035f     	cmp	w26, w2
   299cc: 0b080129     	add	w9, w9, w8
   299d0: 54000380     	b.eq	0x29a40 <syna_tcm_testing_check_frame_data+0x108>
   299d4: b9400be8     	ldr	w8, [sp, #0x8]
   299d8: b81fc3a9     	stur	w9, [x29, #-0x4]
   299dc: 7100051f     	cmp	w8, #0x1
   299e0: 54fffeeb     	b.lt	0x299bc <syna_tcm_testing_check_frame_data+0x84>
   299e4: aa1f03fb     	mov	x27, xzr
   299e8: 2a0903f8     	mov	w24, w9
   299ec: 93407f08     	sxtw	x8, w24
   299f0: eb13029f     	cmp	x20, x19
   299f4: 2a1b03e2     	mov	w2, w27
   299f8: 2a1a03e3     	mov	w3, w26
   299fc: 9a8833e9     	csel	x9, xzr, x8, lo
   29a00: 8b080320     	add	x0, x25, x8
   29a04: 8b0902a1     	add	x1, x21, x9
   29a08: b85fc2d0     	ldur	w16, [x22, #-0x4]
   29a0c: 7290be51     	movk	w17, #0x85f2
   29a10: 72b46651     	movk	w17, #0xa332, lsl #16
   29a14: 6b11021f     	cmp	w16, w17
   29a18: 54000040     	b.eq	0x29a20 <syna_tcm_testing_check_frame_data+0xe8>
   29a1c: d43046c0     	brk	#0x8236
   29a20: d63f02c0     	blr	x22
   29a24: 9100077b     	add	x27, x27, #0x1
   29a28: 0a1c001c     	and	w28, w0, w28
   29a2c: 11000b18     	add	w24, w24, #0x2
   29a30: eb1b02ff     	cmp	x23, x27
   29a34: 54fffdc1     	b.ne	0x299ec <syna_tcm_testing_check_frame_data+0xb4>
   29a38: 17ffffe1     	b	0x299bc <syna_tcm_testing_check_frame_data+0x84>
   29a3c: 5280003c     	mov	w28, #0x1               // =1
   29a40: 12000380     	and	w0, w28, #0x1
   29a44: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   29a48: a94557f6     	ldp	x22, x21, [sp, #0x50]
   29a4c: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   29a50: a94367fa     	ldp	x26, x25, [sp, #0x30]
   29a54: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   29a58: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   29a5c: 9101c3ff     	add	sp, sp, #0x70
   29a60: d50323bf     	autiasp
   29a64: d65f03c0     	ret
   29a68: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x2ec>
		0000000000029a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccb8
   29a6c: 91000000     	add	x0, x0, #0x0
		0000000000029a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccb8
   29a70: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_write+0x2ec>
		0000000000029a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccee
   29a74: 91000021     	add	x1, x1, #0x0
		0000000000029a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccee
   29a78: 94000000     	bl	0x29a78 <syna_tcm_testing_check_frame_data+0x140>
		0000000000029a78:  R_AARCH64_CALL26	_printk
   29a7c: 2a1f03fc     	mov	w28, wzr
   29a80: 17fffff0     	b	0x29a40 <syna_tcm_testing_check_frame_data+0x108>
   29a84: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x2ec>
		0000000000029a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd10
   29a88: 91000000     	add	x0, x0, #0x0
		0000000000029a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd10
   29a8c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_write+0x2ec>
		0000000000029a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccee
   29a90: 91000021     	add	x1, x1, #0x0
		0000000000029a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccee
   29a94: 2a1303e2     	mov	w2, w19
   29a98: 94000000     	bl	0x29a98 <syna_tcm_testing_check_frame_data+0x160>
		0000000000029a98:  R_AARCH64_CALL26	_printk
   29a9c: 2a1f03fc     	mov	w28, wzr
   29aa0: 17ffffe8     	b	0x29a40 <syna_tcm_testing_check_frame_data+0x108>
