
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017e4c <syna_tcm_testing_check_frame_data>:
   17e4c: d503233f     	paciasp
   17e50: d101c3ff     	sub	sp, sp, #0x70
   17e54: a9017bfd     	stp	x29, x30, [sp, #0x10]
   17e58: a9026ffc     	stp	x28, x27, [sp, #0x20]
   17e5c: a90367fa     	stp	x26, x25, [sp, #0x30]
   17e60: a9045ff8     	stp	x24, x23, [sp, #0x40]
   17e64: a90557f6     	stp	x22, x21, [sp, #0x50]
   17e68: a9064ff4     	stp	x20, x19, [sp, #0x60]
   17e6c: 910043fd     	add	x29, sp, #0x10
   17e70: b9000be3     	str	w3, [sp, #0x8]
   17e74: b4000844     	cbz	x4, 0x17f7c <syna_tcm_testing_check_frame_data+0x130>
   17e78: aa0003f9     	mov	x25, x0
   17e7c: b4000800     	cbz	x0, 0x17f7c <syna_tcm_testing_check_frame_data+0x130>
   17e80: aa0503f5     	mov	x21, x5
   17e84: b40007c5     	cbz	x5, 0x17f7c <syna_tcm_testing_check_frame_data+0x130>
   17e88: b9400be8     	ldr	w8, [sp, #0x8]
   17e8c: aa0103f3     	mov	x19, x1
   17e90: 1b087c48     	mul	w8, w2, w8
   17e94: 531f7903     	lsl	w3, w8, #1
   17e98: eb01007f     	cmp	x3, x1
   17e9c: 540007e8     	b.hi	0x17f98 <syna_tcm_testing_check_frame_data+0x14c>
   17ea0: 7100045f     	cmp	w2, #0x1
   17ea4: 5400056b     	b.lt	0x17f50 <syna_tcm_testing_check_frame_data+0x104>
   17ea8: b9400be8     	ldr	w8, [sp, #0x8]
   17eac: aa0603f4     	mov	x20, x6
   17eb0: aa0403f6     	mov	x22, x4
   17eb4: 2a1f03e9     	mov	w9, wzr
   17eb8: 2a1f03fa     	mov	w26, wzr
   17ebc: 5280003c     	mov	w28, #0x1               // =1
   17ec0: 531f790a     	lsl	w10, w8, #1
   17ec4: 2a0803f7     	mov	w23, w8
   17ec8: 29000bea     	stp	w10, w2, [sp]
   17ecc: 14000007     	b	0x17ee8 <syna_tcm_testing_check_frame_data+0x9c>
   17ed0: 29400be8     	ldp	w8, w2, [sp]
   17ed4: b85fc3a9     	ldur	w9, [x29, #-0x4]
   17ed8: 1100075a     	add	w26, w26, #0x1
   17edc: 6b02035f     	cmp	w26, w2
   17ee0: 0b080129     	add	w9, w9, w8
   17ee4: 54000380     	b.eq	0x17f54 <syna_tcm_testing_check_frame_data+0x108>
   17ee8: b9400be8     	ldr	w8, [sp, #0x8]
   17eec: b81fc3a9     	stur	w9, [x29, #-0x4]
   17ef0: 7100051f     	cmp	w8, #0x1
   17ef4: 54fffeeb     	b.lt	0x17ed0 <syna_tcm_testing_check_frame_data+0x84>
   17ef8: aa1f03fb     	mov	x27, xzr
   17efc: 2a0903f8     	mov	w24, w9
   17f00: 93407f08     	sxtw	x8, w24
   17f04: eb13029f     	cmp	x20, x19
   17f08: 2a1b03e2     	mov	w2, w27
   17f0c: 2a1a03e3     	mov	w3, w26
   17f10: 9a8833e9     	csel	x9, xzr, x8, lo
   17f14: 8b080320     	add	x0, x25, x8
   17f18: 8b0902a1     	add	x1, x21, x9
   17f1c: b85fc2d0     	ldur	w16, [x22, #-0x4]
   17f20: 7290be51     	movk	w17, #0x85f2
   17f24: 72b46651     	movk	w17, #0xa332, lsl #16
   17f28: 6b11021f     	cmp	w16, w17
   17f2c: 54000040     	b.eq	0x17f34 <syna_tcm_testing_check_frame_data+0xe8>
   17f30: d43046c0     	brk	#0x8236
   17f34: d63f02c0     	blr	x22
   17f38: 9100077b     	add	x27, x27, #0x1
   17f3c: 0a1c001c     	and	w28, w0, w28
   17f40: 11000b18     	add	w24, w24, #0x2
   17f44: eb1b02ff     	cmp	x23, x27
   17f48: 54fffdc1     	b.ne	0x17f00 <syna_tcm_testing_check_frame_data+0xb4>
   17f4c: 17ffffe1     	b	0x17ed0 <syna_tcm_testing_check_frame_data+0x84>
   17f50: 5280003c     	mov	w28, #0x1               // =1
   17f54: 12000380     	and	w0, w28, #0x1
   17f58: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   17f5c: a94557f6     	ldp	x22, x21, [sp, #0x50]
   17f60: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   17f64: a94367fa     	ldp	x26, x25, [sp, #0x30]
   17f68: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   17f6c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   17f70: 9101c3ff     	add	sp, sp, #0x70
   17f74: d50323bf     	autiasp
   17f78: d65f03c0     	ret
   17f7c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2205
   17f80: 91000000     	add	x0, x0, #0x0
		0000000000017f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2205
   17f84: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
   17f88: 91000021     	add	x1, x1, #0x0
		0000000000017f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
   17f8c: 94000000     	bl	0x17f8c <syna_tcm_testing_check_frame_data+0x140>
		0000000000017f8c:  R_AARCH64_CALL26	_printk
   17f90: 2a1f03fc     	mov	w28, wzr
   17f94: 17fffff0     	b	0x17f54 <syna_tcm_testing_check_frame_data+0x108>
   17f98: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8318
   17f9c: 91000000     	add	x0, x0, #0x0
		0000000000017f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8318
   17fa0: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
   17fa4: 91000021     	add	x1, x1, #0x0
		0000000000017fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
   17fa8: 2a1303e2     	mov	w2, w19
   17fac: 94000000     	bl	0x17fac <syna_tcm_testing_check_frame_data+0x160>
		0000000000017fac:  R_AARCH64_CALL26	_printk
   17fb0: 2a1f03fc     	mov	w28, wzr
   17fb4: 17ffffe8     	b	0x17f54 <syna_tcm_testing_check_frame_data+0x108>
