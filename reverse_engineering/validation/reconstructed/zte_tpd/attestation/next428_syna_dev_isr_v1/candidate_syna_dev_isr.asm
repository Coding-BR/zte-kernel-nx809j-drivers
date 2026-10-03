
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000086bc <syna_dev_isr>:
    86bc: d503233f     	paciasp
    86c0: d100c3ff     	sub	sp, sp, #0x30
    86c4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    86c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    86cc: 910043fd     	add	x29, sp, #0x10
    86d0: d5384108     	mrs	x8, SP_EL0
    86d4: aa0103f3     	mov	x19, x1
    86d8: f9438908     	ldr	x8, [x8, #0x710]
    86dc: f90007e8     	str	x8, [sp, #0x8]
    86e0: b9457c28     	ldr	w8, [x1, #0x57c]
    86e4: f9413834     	ldr	x20, [x1, #0x270]
    86e8: 390013ff     	strb	wzr, [sp, #0x4]
    86ec: 7100051f     	cmp	w8, #0x1
    86f0: 54000100     	b.eq	0x8710 <syna_dev_isr+0x54>
    86f4: 3955e268     	ldrb	w8, [x19, #0x578]
    86f8: 7100051f     	cmp	w8, #0x1
    86fc: 540000a1     	b.ne	0x8710 <syna_dev_isr+0x54>
    8700: 91156260     	add	x0, x19, #0x558
    8704: 528015e1     	mov	w1, #0xaf               // =175
    8708: 94000000     	bl	0x8708 <syna_dev_isr+0x4c>
		0000000000008708:  R_AARCH64_CALL26	wait_for_completion_timeout
    870c: 340003a0     	cbz	w0, 0x8780 <syna_dev_isr+0xc4>
    8710: b940aa80     	ldr	w0, [x20, #0xa8]
    8714: 94000000     	bl	0x8714 <syna_dev_isr+0x58>
		0000000000008714:  R_AARCH64_CALL26	gpio_to_desc
    8718: 94000000     	bl	0x8718 <syna_dev_isr+0x5c>
		0000000000008718:  R_AARCH64_CALL26	gpiod_get_raw_value
    871c: b940ae88     	ldr	w8, [x20, #0xac]
    8720: 6b08001f     	cmp	w0, w8
    8724: 54000121     	b.ne	0x8748 <syna_dev_isr+0x8c>
    8728: d5384108     	mrs	x8, SP_EL0
    872c: f9400260     	ldr	x0, [x19]
    8730: 910013e1     	add	x1, sp, #0x4
    8734: b9470908     	ldr	w8, [x8, #0x708]
    8738: 910aa262     	add	x2, x19, #0x2a8
    873c: b902f268     	str	w8, [x19, #0x2f0]
    8740: 94000000     	bl	0x8740 <syna_dev_isr+0x84>
		0000000000008740:  R_AARCH64_CALL26	syna_tcm_get_event_data
    8744: 37f80180     	tbnz	w0, #0x1f, 0x8774 <syna_dev_isr+0xb8>
    8748: d5384108     	mrs	x8, SP_EL0
    874c: f9438908     	ldr	x8, [x8, #0x710]
    8750: f94007e9     	ldr	x9, [sp, #0x8]
    8754: eb09011f     	cmp	x8, x9
    8758: 54000201     	b.ne	0x8798 <syna_dev_isr+0xdc>
    875c: 52800020     	mov	w0, #0x1                // =1
    8760: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8764: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8768: 9100c3ff     	add	sp, sp, #0x30
    876c: d50323bf     	autiasp
    8770: d65f03c0     	ret
    8774: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2852
    8778: 91000000     	add	x0, x0, #0x0
		0000000000008778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2852
    877c: 14000003     	b	0x8788 <syna_dev_isr+0xcc>
    8780: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e6
    8784: 91000000     	add	x0, x0, #0x0
		0000000000008784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e6
    8788: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x190>
		0000000000008788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x569f
    878c: 91000021     	add	x1, x1, #0x0
		000000000000878c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x569f
    8790: 94000000     	bl	0x8790 <syna_dev_isr+0xd4>
		0000000000008790:  R_AARCH64_CALL26	_printk
    8794: 17ffffed     	b	0x8748 <syna_dev_isr+0x8c>
    8798: 94000000     	bl	0x8798 <syna_dev_isr+0xdc>
		0000000000008798:  R_AARCH64_CALL26	__stack_chk_fail
