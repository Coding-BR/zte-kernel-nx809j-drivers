
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a86c <activate_store>:
    a86c: d503233f     	paciasp
    a870: d10103ff     	sub	sp, sp, #0x40
    a874: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a878: f90013f5     	str	x21, [sp, #0x20]
    a87c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a880: 910043fd     	add	x29, sp, #0x10
    a884: d5384109     	mrs	x9, SP_EL0
    a888: aa0203e8     	mov	x8, x2
    a88c: 910013e2     	add	x2, sp, #0x4
    a890: f9438929     	ldr	x9, [x9, #0x710]
    a894: 2a1f03e1     	mov	w1, wzr
    a898: aa0303f3     	mov	x19, x3
    a89c: f90007e9     	str	x9, [sp, #0x8]
    a8a0: f9404c15     	ldr	x21, [x0, #0x98]
    a8a4: aa0803e0     	mov	x0, x8
    a8a8: b90007ff     	str	wzr, [sp, #0x4]
    a8ac: 94000000     	bl	0xa8ac <activate_store+0x40>
		000000000000a8ac:  R_AARCH64_CALL26	kstrtouint
    a8b0: 36f801c0     	tbz	w0, #0x1f, 0xa8e8 <activate_store+0x7c>
    a8b4: 93407c13     	sxtw	x19, w0
    a8b8: d5384108     	mrs	x8, SP_EL0
    a8bc: f9438908     	ldr	x8, [x8, #0x710]
    a8c0: f94007e9     	ldr	x9, [sp, #0x8]
    a8c4: eb09011f     	cmp	x8, x9
    a8c8: 540006a1     	b.ne	0xa99c <activate_store+0x130>
    a8cc: aa1303e0     	mov	x0, x19
    a8d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    a8d4: f94013f5     	ldr	x21, [sp, #0x20]
    a8d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a8dc: 910103ff     	add	sp, sp, #0x40
    a8e0: d50323bf     	autiasp
    a8e4: d65f03c0     	ret
    a8e8: b94007e4     	ldr	w4, [sp, #0x4]
    a8ec: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a8ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd8
    a8f0: 91000000     	add	x0, x0, #0x0
		000000000000a8f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd8
    a8f4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a8f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a8f8: 91000021     	add	x1, x1, #0x0
		000000000000a8f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a8fc: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a8fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1c
    a900: 91000063     	add	x3, x3, #0x0
		000000000000a900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1c
    a904: 52811c62     	mov	w2, #0x8e3              // =2275
    a908: 94000000     	bl	0xa908 <activate_store+0x9c>
		000000000000a908:  R_AARCH64_CALL26	_printk
    a90c: 3855e2a8     	ldurb	w8, [x21, #-0xa2]
    a910: 36000348     	tbz	w8, #0x0, 0xa978 <activate_store+0x10c>
    a914: 910922a0     	add	x0, x21, #0x248
    a918: d102a2b4     	sub	x20, x21, #0xa8
    a91c: 94000000     	bl	0xa91c <activate_store+0xb0>
		000000000000a91c:  R_AARCH64_CALL26	mutex_lock
    a920: f94292a8     	ldr	x8, [x21, #0x520]
    a924: aa1403e0     	mov	x0, x20
    a928: 52800021     	mov	w1, #0x1                // =1
    a92c: f9404108     	ldr	x8, [x8, #0x80]
    a930: b85fc110     	ldur	w16, [x8, #-0x4]
    a934: 729bedd1     	movk	w17, #0xdf6e
    a938: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a93c: 6b11021f     	cmp	w16, w17
    a940: 54000040     	b.eq	0xa948 <activate_store+0xdc>
    a944: d4304500     	brk	#0x8228
    a948: d63f0100     	blr	x8
    a94c: 910a22a0     	add	x0, x21, #0x288
    a950: 94000000     	bl	0xa950 <activate_store+0xe4>
		000000000000a950:  R_AARCH64_CALL26	hrtimer_cancel
    a954: b94007e8     	ldr	w8, [sp, #0x4]
    a958: 910922a0     	add	x0, x21, #0x248
    a95c: b81982a8     	stur	w8, [x21, #-0x68]
    a960: 94000000     	bl	0xa960 <activate_store+0xf4>
		000000000000a960:  R_AARCH64_CALL26	mutex_unlock
    a964: f941d2a1     	ldr	x1, [x21, #0x3a0]
    a968: 910e02a2     	add	x2, x21, #0x380
    a96c: 52800400     	mov	w0, #0x20               // =32
    a970: 94000000     	bl	0xa970 <activate_store+0x104>
		000000000000a970:  R_AARCH64_CALL26	queue_work_on
    a974: 17ffffd1     	b	0xa8b8 <activate_store+0x4c>
    a978: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4680
    a97c: 91000000     	add	x0, x0, #0x0
		000000000000a97c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4680
    a980: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a984: 91000021     	add	x1, x1, #0x0
		000000000000a984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    a988: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000a988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1c
    a98c: 91000063     	add	x3, x3, #0x0
		000000000000a98c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1c
    a990: 52811ca2     	mov	w2, #0x8e5              // =2277
    a994: 94000000     	bl	0xa994 <activate_store+0x128>
		000000000000a994:  R_AARCH64_CALL26	_printk
    a998: 17ffffc8     	b	0xa8b8 <activate_store+0x4c>
    a99c: 94000000     	bl	0xa99c <activate_store+0x130>
		000000000000a99c:  R_AARCH64_CALL26	__stack_chk_fail
