
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a868 <syna_dev_free_input_events>:
    a868: d503233f     	paciasp
    a86c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a870: f9000bf5     	str	x21, [sp, #0x10]
    a874: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a878: 910003fd     	mov	x29, sp
    a87c: f941d814     	ldr	x20, [x0, #0x3b0]
    a880: b4000674     	cbz	x20, 0xa94c <syna_dev_free_input_events+0xe4>
    a884: aa0003f3     	mov	x19, x0
    a888: 9109e000     	add	x0, x0, #0x278
    a88c: 94000000     	bl	0xa88c <syna_dev_free_input_events+0x24>
		000000000000a88c:  R_AARCH64_CALL26	mutex_lock
    a890: 2a1f03f5     	mov	w21, wzr
    a894: aa1403e0     	mov	x0, x20
    a898: 52800061     	mov	w1, #0x3                // =3
    a89c: 528005e2     	mov	w2, #0x2f               // =47
    a8a0: 2a1503e3     	mov	w3, w21
    a8a4: 94000000     	bl	0xa8a4 <syna_dev_free_input_events+0x3c>
		000000000000a8a4:  R_AARCH64_CALL26	input_event
    a8a8: aa1403e0     	mov	x0, x20
    a8ac: 2a1f03e1     	mov	w1, wzr
    a8b0: 2a1f03e2     	mov	w2, wzr
    a8b4: 94000000     	bl	0xa8b4 <syna_dev_free_input_events+0x4c>
		000000000000a8b4:  R_AARCH64_CALL26	input_mt_report_slot_state
    a8b8: aa1403e0     	mov	x0, x20
    a8bc: 2a1503e1     	mov	w1, w21
    a8c0: 94000000     	bl	0xa8c0 <syna_dev_free_input_events+0x58>
		000000000000a8c0:  R_AARCH64_CALL26	tpd_touch_release
    a8c4: 2a1f03e0     	mov	w0, wzr
    a8c8: 12800001     	mov	w1, #-0x1               // =-1
    a8cc: 12800002     	mov	w2, #-0x1               // =-1
    a8d0: 2a1503e3     	mov	w3, w21
    a8d4: 94000000     	bl	0xa8d4 <syna_dev_free_input_events+0x6c>
		000000000000a8d4:  R_AARCH64_CALL26	one_key_report
    a8d8: 110006b5     	add	w21, w21, #0x1
    a8dc: 71002abf     	cmp	w21, #0xa
    a8e0: 54fffda1     	b.ne	0xa894 <syna_dev_free_input_events+0x2c>
    a8e4: aa1403e0     	mov	x0, x20
    a8e8: 52800021     	mov	w1, #0x1                // =1
    a8ec: 52802942     	mov	w2, #0x14a              // =330
    a8f0: 2a1f03e3     	mov	w3, wzr
    a8f4: 52800035     	mov	w21, #0x1               // =1
    a8f8: 94000000     	bl	0xa8f8 <syna_dev_free_input_events+0x90>
		000000000000a8f8:  R_AARCH64_CALL26	input_event
    a8fc: aa1403e0     	mov	x0, x20
    a900: 52800021     	mov	w1, #0x1                // =1
    a904: 528028a2     	mov	w2, #0x145              // =325
    a908: 2a1f03e3     	mov	w3, wzr
    a90c: 94000000     	bl	0xa90c <syna_dev_free_input_events+0xa4>
		000000000000a90c:  R_AARCH64_CALL26	input_event
    a910: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a910:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    a914: 91000108     	add	x8, x8, #0x0
		000000000000a914:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    a918: 39400109     	ldrb	w9, [x8]
    a91c: 39400508     	ldrb	w8, [x8, #0x1]
    a920: 2a090108     	orr	w8, w8, w9
    a924: 350001e8     	cbnz	w8, 0xa960 <syna_dev_free_input_events+0xf8>
    a928: 2a1f03e0     	mov	w0, wzr
    a92c: 94000000     	bl	0xa92c <syna_dev_free_input_events+0xc4>
		000000000000a92c:  R_AARCH64_CALL26	report_ufp_uevent
    a930: aa1403e0     	mov	x0, x20
    a934: 2a1f03e1     	mov	w1, wzr
    a938: 2a1f03e2     	mov	w2, wzr
    a93c: 2a1f03e3     	mov	w3, wzr
    a940: 94000000     	bl	0xa940 <syna_dev_free_input_events+0xd8>
		000000000000a940:  R_AARCH64_CALL26	input_event
    a944: 9109e260     	add	x0, x19, #0x278
    a948: 94000000     	bl	0xa948 <syna_dev_free_input_events+0xe0>
		000000000000a948:  R_AARCH64_CALL26	mutex_unlock
    a94c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a950: f9400bf5     	ldr	x21, [sp, #0x10]
    a954: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a958: d50323bf     	autiasp
    a95c: d65f03c0     	ret
    a960: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a960:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa2
    a964: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f64
    a968: 91000000     	add	x0, x0, #0x0
		000000000000a968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f64
    a96c: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a96c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac93
    a970: 91000021     	add	x1, x1, #0x0
		000000000000a970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac93
    a974: 39000115     	strb	w21, [x8]
		000000000000a974:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    a978: 94000000     	bl	0xa978 <syna_dev_free_input_events+0x110>
		000000000000a978:  R_AARCH64_CALL26	_printk
    a97c: 17ffffeb     	b	0xa928 <syna_dev_free_input_events+0xc0>
