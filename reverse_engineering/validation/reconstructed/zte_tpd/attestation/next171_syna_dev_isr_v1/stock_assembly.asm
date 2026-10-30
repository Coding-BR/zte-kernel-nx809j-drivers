
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d92c <syna_dev_isr>:
    d92c: d503233f     	paciasp
    d930: d100c3ff     	sub	sp, sp, #0x30
    d934: a9017bfd     	stp	x29, x30, [sp, #0x10]
    d938: a9024ff4     	stp	x20, x19, [sp, #0x20]
    d93c: 910043fd     	add	x29, sp, #0x10
    d940: d5384108     	mrs	x8, SP_EL0
    d944: aa0103f3     	mov	x19, x1
    d948: f9438908     	ldr	x8, [x8, #0x710]
    d94c: f90007e8     	str	x8, [sp, #0x8]
    d950: b9457c28     	ldr	w8, [x1, #0x57c]
    d954: f9413834     	ldr	x20, [x1, #0x270]
    d958: 390013ff     	strb	wzr, [sp, #0x4]
    d95c: 7100051f     	cmp	w8, #0x1
    d960: 54000100     	b.eq	0xd980 <syna_dev_isr+0x54>
    d964: 3955e268     	ldrb	w8, [x19, #0x578]
    d968: 7100051f     	cmp	w8, #0x1
    d96c: 540000a1     	b.ne	0xd980 <syna_dev_isr+0x54>
    d970: 91156260     	add	x0, x19, #0x558
    d974: 528015e1     	mov	w1, #0xaf               // =175
    d978: 94000000     	bl	0xd978 <syna_dev_isr+0x4c>
		000000000000d978:  R_AARCH64_CALL26	wait_for_completion_timeout
    d97c: 340003a0     	cbz	w0, 0xd9f0 <syna_dev_isr+0xc4>
    d980: b940aa80     	ldr	w0, [x20, #0xa8]
    d984: 94000000     	bl	0xd984 <syna_dev_isr+0x58>
		000000000000d984:  R_AARCH64_CALL26	gpio_to_desc
    d988: 94000000     	bl	0xd988 <syna_dev_isr+0x5c>
		000000000000d988:  R_AARCH64_CALL26	gpiod_get_raw_value
    d98c: b940ae88     	ldr	w8, [x20, #0xac]
    d990: 6b08001f     	cmp	w0, w8
    d994: 54000121     	b.ne	0xd9b8 <syna_dev_isr+0x8c>
    d998: d5384108     	mrs	x8, SP_EL0
    d99c: f9400260     	ldr	x0, [x19]
    d9a0: 910013e1     	add	x1, sp, #0x4
    d9a4: b9470908     	ldr	w8, [x8, #0x708]
    d9a8: 910aa262     	add	x2, x19, #0x2a8
    d9ac: b902f268     	str	w8, [x19, #0x2f0]
    d9b0: 94000000     	bl	0xd9b0 <syna_dev_isr+0x84>
		000000000000d9b0:  R_AARCH64_CALL26	syna_tcm_get_event_data
    d9b4: 37f80180     	tbnz	w0, #0x1f, 0xd9e4 <syna_dev_isr+0xb8>
    d9b8: d5384108     	mrs	x8, SP_EL0
    d9bc: f9438908     	ldr	x8, [x8, #0x710]
    d9c0: f94007e9     	ldr	x9, [sp, #0x8]
    d9c4: eb09011f     	cmp	x8, x9
    d9c8: 54000201     	b.ne	0xda08 <syna_dev_isr+0xdc>
    d9cc: 52800020     	mov	w0, #0x1                // =1
    d9d0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d9d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    d9d8: 9100c3ff     	add	sp, sp, #0x30
    d9dc: d50323bf     	autiasp
    d9e0: d65f03c0     	ret
    d9e4: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d9e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4554
    d9e8: 91000000     	add	x0, x0, #0x0
		000000000000d9e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4554
    d9ec: 14000003     	b	0xd9f8 <syna_dev_isr+0xcc>
    d9f0: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d9f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6b
    d9f4: 91000000     	add	x0, x0, #0x0
		000000000000d9f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6b
    d9f8: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d9f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9747
    d9fc: 91000021     	add	x1, x1, #0x0
		000000000000d9fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9747
    da00: 94000000     	bl	0xda00 <syna_dev_isr+0xd4>
		000000000000da00:  R_AARCH64_CALL26	_printk
    da04: 17ffffed     	b	0xd9b8 <syna_dev_isr+0x8c>
    da08: 94000000     	bl	0xda08 <syna_dev_isr+0xdc>
		000000000000da08:  R_AARCH64_CALL26	__stack_chk_fail
