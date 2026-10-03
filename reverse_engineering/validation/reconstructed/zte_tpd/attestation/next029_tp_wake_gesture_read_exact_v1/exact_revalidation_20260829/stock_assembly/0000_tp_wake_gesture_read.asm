
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000031a0 <tp_wake_gesture_read>:
    31a0: d503233f     	paciasp
    31a4: d10143ff     	sub	sp, sp, #0x50
    31a8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    31ac: a90357f6     	stp	x22, x21, [sp, #0x30]
    31b0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    31b4: 910083fd     	add	x29, sp, #0x20
    31b8: d5384108     	mrs	x8, SP_EL0
    31bc: aa1f03e0     	mov	x0, xzr
    31c0: f9438908     	ldr	x8, [x8, #0x710]
    31c4: f81f83a8     	stur	x8, [x29, #-0x8]
    31c8: f9400068     	ldr	x8, [x3]
    31cc: 790023ff     	strh	wzr, [sp, #0x10]
    31d0: f90007ff     	str	xzr, [sp, #0x8]
    31d4: b4000188     	cbz	x8, 0x3204 <tp_wake_gesture_read+0x64>
    31d8: d5384108     	mrs	x8, SP_EL0
    31dc: f9438908     	ldr	x8, [x8, #0x710]
    31e0: f85f83a9     	ldur	x9, [x29, #-0x8]
    31e4: eb09011f     	cmp	x8, x9
    31e8: 54000521     	b.ne	0x328c <tp_wake_gesture_read+0xec>
    31ec: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    31f0: a94357f6     	ldp	x22, x21, [sp, #0x30]
    31f4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    31f8: 910143ff     	add	sp, sp, #0x50
    31fc: d50323bf     	autiasp
    3200: d65f03c0     	ret
    3204: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003204:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3208: aa0103f5     	mov	x21, x1
    320c: aa0203f4     	mov	x20, x2
    3210: f9400116     	ldr	x22, [x8]
		0000000000003210:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3214: aa0303f3     	mov	x19, x3
    3218: f94716c8     	ldr	x8, [x22, #0xe28]
    321c: b4000128     	cbz	x8, 0x3240 <tp_wake_gesture_read+0xa0>
    3220: aa1603e0     	mov	x0, x22
    3224: b85fc110     	ldur	w16, [x8, #-0x4]
    3228: 7281af31     	movk	w17, #0xd79
    322c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    3230: 6b11021f     	cmp	w16, w17
    3234: 54000040     	b.eq	0x323c <tp_wake_gesture_read+0x9c>
    3238: d4304500     	brk	#0x8228
    323c: d63f0100     	blr	x8
    3240: b94002c2     	ldr	w2, [x22]
    3244: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    3248: 91000000     	add	x0, x0, #0x0
		0000000000003248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    324c: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		000000000000324c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3781
    3250: 91000021     	add	x1, x1, #0x0
		0000000000003250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3781
    3254: 94000000     	bl	0x3254 <tp_wake_gesture_read+0xb4>
		0000000000003254:  R_AARCH64_CALL26	_printk
    3258: b94002c3     	ldr	w3, [x22]
    325c: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		000000000000325c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    3260: 91000042     	add	x2, x2, #0x0
		0000000000003260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    3264: 910023e0     	add	x0, sp, #0x8
    3268: 52800141     	mov	w1, #0xa                // =10
    326c: 94000000     	bl	0x326c <tp_wake_gesture_read+0xcc>
		000000000000326c:  R_AARCH64_CALL26	snprintf
    3270: 93407c04     	sxtw	x4, w0
    3274: 910023e3     	add	x3, sp, #0x8
    3278: aa1403e1     	mov	x1, x20
    327c: aa1503e0     	mov	x0, x21
    3280: aa1303e2     	mov	x2, x19
    3284: 94000000     	bl	0x3284 <tp_wake_gesture_read+0xe4>
		0000000000003284:  R_AARCH64_CALL26	simple_read_from_buffer
    3288: 17ffffd4     	b	0x31d8 <tp_wake_gesture_read+0x38>
    328c: 94000000     	bl	0x328c <tp_wake_gesture_read+0xec>
		000000000000328c:  R_AARCH64_CALL26	__stack_chk_fail
