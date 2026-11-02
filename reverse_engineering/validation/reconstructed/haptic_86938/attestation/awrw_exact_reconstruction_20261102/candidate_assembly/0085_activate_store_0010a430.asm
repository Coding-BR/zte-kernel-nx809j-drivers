
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a83c <activate_store>:
    a83c: d503233f     	paciasp
    a840: d10103ff     	sub	sp, sp, #0x40
    a844: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a848: f90013f5     	str	x21, [sp, #0x20]
    a84c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a850: 910043fd     	add	x29, sp, #0x10
    a854: d5384109     	mrs	x9, SP_EL0
    a858: aa0203e8     	mov	x8, x2
    a85c: 910013e2     	add	x2, sp, #0x4
    a860: f9438929     	ldr	x9, [x9, #0x710]
    a864: 2a1f03e1     	mov	w1, wzr
    a868: aa0303f3     	mov	x19, x3
    a86c: f90007e9     	str	x9, [sp, #0x8]
    a870: f9404c15     	ldr	x21, [x0, #0x98]
    a874: aa0803e0     	mov	x0, x8
    a878: b90007ff     	str	wzr, [sp, #0x4]
    a87c: 94000000     	bl	0xa87c <activate_store+0x40>
		000000000000a87c:  R_AARCH64_CALL26	kstrtouint
    a880: 36f801c0     	tbz	w0, #0x1f, 0xa8b8 <activate_store+0x7c>
    a884: 93407c13     	sxtw	x19, w0
    a888: d5384108     	mrs	x8, SP_EL0
    a88c: f9438908     	ldr	x8, [x8, #0x710]
    a890: f94007e9     	ldr	x9, [sp, #0x8]
    a894: eb09011f     	cmp	x8, x9
    a898: 540006a1     	b.ne	0xa96c <activate_store+0x130>
    a89c: aa1303e0     	mov	x0, x19
    a8a0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    a8a4: f94013f5     	ldr	x21, [sp, #0x20]
    a8a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a8ac: 910103ff     	add	sp, sp, #0x40
    a8b0: d50323bf     	autiasp
    a8b4: d65f03c0     	ret
    a8b8: b94007e4     	ldr	w4, [sp, #0x4]
    a8bc: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a8bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d4c
    a8c0: 91000000     	add	x0, x0, #0x0
		000000000000a8c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d4c
    a8c4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a8c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a8c8: 91000021     	add	x1, x1, #0x0
		000000000000a8c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a8cc: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a8cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e90
    a8d0: 91000063     	add	x3, x3, #0x0
		000000000000a8d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e90
    a8d4: 52811c62     	mov	w2, #0x8e3              // =2275
    a8d8: 94000000     	bl	0xa8d8 <activate_store+0x9c>
		000000000000a8d8:  R_AARCH64_CALL26	_printk
    a8dc: 3855e2a8     	ldurb	w8, [x21, #-0xa2]
    a8e0: 36000348     	tbz	w8, #0x0, 0xa948 <activate_store+0x10c>
    a8e4: 910922a0     	add	x0, x21, #0x248
    a8e8: d102a2b4     	sub	x20, x21, #0xa8
    a8ec: 94000000     	bl	0xa8ec <activate_store+0xb0>
		000000000000a8ec:  R_AARCH64_CALL26	mutex_lock
    a8f0: f94292a8     	ldr	x8, [x21, #0x520]
    a8f4: aa1403e0     	mov	x0, x20
    a8f8: 52800021     	mov	w1, #0x1                // =1
    a8fc: f9404108     	ldr	x8, [x8, #0x80]
    a900: b85fc110     	ldur	w16, [x8, #-0x4]
    a904: 729bedd1     	movk	w17, #0xdf6e
    a908: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a90c: 6b11021f     	cmp	w16, w17
    a910: 54000040     	b.eq	0xa918 <activate_store+0xdc>
    a914: d4304500     	brk	#0x8228
    a918: d63f0100     	blr	x8
    a91c: 910a22a0     	add	x0, x21, #0x288
    a920: 94000000     	bl	0xa920 <activate_store+0xe4>
		000000000000a920:  R_AARCH64_CALL26	hrtimer_cancel
    a924: b94007e8     	ldr	w8, [sp, #0x4]
    a928: 910922a0     	add	x0, x21, #0x248
    a92c: b81982a8     	stur	w8, [x21, #-0x68]
    a930: 94000000     	bl	0xa930 <activate_store+0xf4>
		000000000000a930:  R_AARCH64_CALL26	mutex_unlock
    a934: f941d2a1     	ldr	x1, [x21, #0x3a0]
    a938: 910e02a2     	add	x2, x21, #0x380
    a93c: 52800400     	mov	w0, #0x20               // =32
    a940: 94000000     	bl	0xa940 <activate_store+0x104>
		000000000000a940:  R_AARCH64_CALL26	queue_work_on
    a944: 17ffffd1     	b	0xa888 <activate_store+0x4c>
    a948: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46f4
    a94c: 91000000     	add	x0, x0, #0x0
		000000000000a94c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46f4
    a950: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a954: 91000021     	add	x1, x1, #0x0
		000000000000a954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a958: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e90
    a95c: 91000063     	add	x3, x3, #0x0
		000000000000a95c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e90
    a960: 52811ca2     	mov	w2, #0x8e5              // =2277
    a964: 94000000     	bl	0xa964 <activate_store+0x128>
		000000000000a964:  R_AARCH64_CALL26	_printk
    a968: 17ffffc8     	b	0xa888 <activate_store+0x4c>
    a96c: 94000000     	bl	0xa96c <activate_store+0x130>
		000000000000a96c:  R_AARCH64_CALL26	__stack_chk_fail
