
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000fafc <syna_tcm_testing_check_frame_data_0>:
    fafc: d503233f     	paciasp
    fb00: d101c3ff     	sub	sp, sp, #0x70
    fb04: a9017bfd     	stp	x29, x30, [sp, #0x10]
    fb08: a9026ffc     	stp	x28, x27, [sp, #0x20]
    fb0c: a90367fa     	stp	x26, x25, [sp, #0x30]
    fb10: a9045ff8     	stp	x24, x23, [sp, #0x40]
    fb14: a90557f6     	stp	x22, x21, [sp, #0x50]
    fb18: a9064ff4     	stp	x20, x19, [sp, #0x60]
    fb1c: 910043fd     	add	x29, sp, #0x10
    fb20: b9000be3     	str	w3, [sp, #0x8]
    fb24: b4000844     	cbz	x4, 0xfc2c <syna_tcm_testing_check_frame_data_0+0x130>
    fb28: aa0003f9     	mov	x25, x0
    fb2c: b4000800     	cbz	x0, 0xfc2c <syna_tcm_testing_check_frame_data_0+0x130>
    fb30: aa0503f5     	mov	x21, x5
    fb34: b40007c5     	cbz	x5, 0xfc2c <syna_tcm_testing_check_frame_data_0+0x130>
    fb38: b9400be8     	ldr	w8, [sp, #0x8]
    fb3c: aa0103f3     	mov	x19, x1
    fb40: 1b087c48     	mul	w8, w2, w8
    fb44: 531f7903     	lsl	w3, w8, #1
    fb48: eb01007f     	cmp	x3, x1
    fb4c: 540007e8     	b.hi	0xfc48 <syna_tcm_testing_check_frame_data_0+0x14c>
    fb50: 7100045f     	cmp	w2, #0x1
    fb54: 5400056b     	b.lt	0xfc00 <syna_tcm_testing_check_frame_data_0+0x104>
    fb58: b9400be8     	ldr	w8, [sp, #0x8]
    fb5c: aa0603f4     	mov	x20, x6
    fb60: aa0403f6     	mov	x22, x4
    fb64: 2a1f03e9     	mov	w9, wzr
    fb68: 2a1f03fa     	mov	w26, wzr
    fb6c: 5280003c     	mov	w28, #0x1               // =1
    fb70: 531f790a     	lsl	w10, w8, #1
    fb74: 2a0803f7     	mov	w23, w8
    fb78: 29000bea     	stp	w10, w2, [sp]
    fb7c: 14000007     	b	0xfb98 <syna_tcm_testing_check_frame_data_0+0x9c>
    fb80: 29400be8     	ldp	w8, w2, [sp]
    fb84: b85fc3a9     	ldur	w9, [x29, #-0x4]
    fb88: 1100075a     	add	w26, w26, #0x1
    fb8c: 6b02035f     	cmp	w26, w2
    fb90: 0b080129     	add	w9, w9, w8
    fb94: 54000380     	b.eq	0xfc04 <syna_tcm_testing_check_frame_data_0+0x108>
    fb98: b9400be8     	ldr	w8, [sp, #0x8]
    fb9c: b81fc3a9     	stur	w9, [x29, #-0x4]
    fba0: 7100051f     	cmp	w8, #0x1
    fba4: 54fffeeb     	b.lt	0xfb80 <syna_tcm_testing_check_frame_data_0+0x84>
    fba8: aa1f03fb     	mov	x27, xzr
    fbac: 2a0903f8     	mov	w24, w9
    fbb0: 93407f08     	sxtw	x8, w24
    fbb4: eb13029f     	cmp	x20, x19
    fbb8: 2a1b03e2     	mov	w2, w27
    fbbc: 2a1a03e3     	mov	w3, w26
    fbc0: 9a8833e9     	csel	x9, xzr, x8, lo
    fbc4: 8b080320     	add	x0, x25, x8
    fbc8: 8b0902a1     	add	x1, x21, x9
    fbcc: b85fc2d0     	ldur	w16, [x22, #-0x4]
    fbd0: 7290be51     	movk	w17, #0x85f2
    fbd4: 72b46651     	movk	w17, #0xa332, lsl #16
    fbd8: 6b11021f     	cmp	w16, w17
    fbdc: 54000040     	b.eq	0xfbe4 <syna_tcm_testing_check_frame_data_0+0xe8>
    fbe0: d43046c0     	brk	#0x8236
    fbe4: d63f02c0     	blr	x22
    fbe8: 9100077b     	add	x27, x27, #0x1
    fbec: 0a1c001c     	and	w28, w0, w28
    fbf0: 11000b18     	add	w24, w24, #0x2
    fbf4: eb1b02ff     	cmp	x23, x27
    fbf8: 54fffdc1     	b.ne	0xfbb0 <syna_tcm_testing_check_frame_data_0+0xb4>
    fbfc: 17ffffe1     	b	0xfb80 <syna_tcm_testing_check_frame_data_0+0x84>
    fc00: 5280003c     	mov	w28, #0x1               // =1
    fc04: 12000380     	and	w0, w28, #0x1
    fc08: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    fc0c: a94557f6     	ldp	x22, x21, [sp, #0x50]
    fc10: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    fc14: a94367fa     	ldp	x26, x25, [sp, #0x30]
    fc18: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    fc1c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    fc20: 9101c3ff     	add	sp, sp, #0x70
    fc24: d50323bf     	autiasp
    fc28: d65f03c0     	ret
    fc2c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fc2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c9e4
    fc30: 91000000     	add	x0, x0, #0x0
		000000000000fc30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c9e4
    fc34: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fc34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca1a
    fc38: 91000021     	add	x1, x1, #0x0
		000000000000fc38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca1a
    fc3c: 94000000     	bl	0xfc3c <syna_tcm_testing_check_frame_data_0+0x140>
		000000000000fc3c:  R_AARCH64_CALL26	_printk
    fc40: 2a1f03fc     	mov	w28, wzr
    fc44: 17fffff0     	b	0xfc04 <syna_tcm_testing_check_frame_data_0+0x108>
    fc48: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fc48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca3c
    fc4c: 91000000     	add	x0, x0, #0x0
		000000000000fc4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca3c
    fc50: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000fc50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca1a
    fc54: 91000021     	add	x1, x1, #0x0
		000000000000fc54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca1a
    fc58: 2a1303e2     	mov	w2, w19
    fc5c: 94000000     	bl	0xfc5c <syna_tcm_testing_check_frame_data_0+0x160>
		000000000000fc5c:  R_AARCH64_CALL26	_printk
    fc60: 2a1f03fc     	mov	w28, wzr
    fc64: 17ffffe8     	b	0xfc04 <syna_tcm_testing_check_frame_data_0+0x108>
