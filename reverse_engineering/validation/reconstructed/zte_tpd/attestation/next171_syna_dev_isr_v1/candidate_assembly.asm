
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000086a8 <syna_dev_isr>:
    86a8: d503233f     	paciasp
    86ac: d100c3ff     	sub	sp, sp, #0x30
    86b0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    86b4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    86b8: 910043fd     	add	x29, sp, #0x10
    86bc: d5384108     	mrs	x8, SP_EL0
    86c0: aa0103f3     	mov	x19, x1
    86c4: f9438908     	ldr	x8, [x8, #0x710]
    86c8: f90007e8     	str	x8, [sp, #0x8]
    86cc: b9457c28     	ldr	w8, [x1, #0x57c]
    86d0: f9413834     	ldr	x20, [x1, #0x270]
    86d4: 390013ff     	strb	wzr, [sp, #0x4]
    86d8: 7100051f     	cmp	w8, #0x1
    86dc: 54000100     	b.eq	0x86fc <syna_dev_isr+0x54>
    86e0: 3955e268     	ldrb	w8, [x19, #0x578]
    86e4: 7100051f     	cmp	w8, #0x1
    86e8: 540000a1     	b.ne	0x86fc <syna_dev_isr+0x54>
    86ec: 91156260     	add	x0, x19, #0x558
    86f0: 528015e1     	mov	w1, #0xaf               // =175
    86f4: 94000000     	bl	0x86f4 <syna_dev_isr+0x4c>
		00000000000086f4:  R_AARCH64_CALL26	wait_for_completion_timeout
    86f8: 340003a0     	cbz	w0, 0x876c <syna_dev_isr+0xc4>
    86fc: b940aa80     	ldr	w0, [x20, #0xa8]
    8700: 94000000     	bl	0x8700 <syna_dev_isr+0x58>
		0000000000008700:  R_AARCH64_CALL26	gpio_to_desc
    8704: 94000000     	bl	0x8704 <syna_dev_isr+0x5c>
		0000000000008704:  R_AARCH64_CALL26	gpiod_get_raw_value
    8708: b940ae88     	ldr	w8, [x20, #0xac]
    870c: 6b08001f     	cmp	w0, w8
    8710: 54000121     	b.ne	0x8734 <syna_dev_isr+0x8c>
    8714: d5384108     	mrs	x8, SP_EL0
    8718: f9400260     	ldr	x0, [x19]
    871c: 910013e1     	add	x1, sp, #0x4
    8720: b9470908     	ldr	w8, [x8, #0x708]
    8724: 910aa262     	add	x2, x19, #0x2a8
    8728: b902f268     	str	w8, [x19, #0x2f0]
    872c: 94000000     	bl	0x872c <syna_dev_isr+0x84>
		000000000000872c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    8730: 37f80180     	tbnz	w0, #0x1f, 0x8760 <syna_dev_isr+0xb8>
    8734: d5384108     	mrs	x8, SP_EL0
    8738: f9438908     	ldr	x8, [x8, #0x710]
    873c: f94007e9     	ldr	x9, [sp, #0x8]
    8740: eb09011f     	cmp	x8, x9
    8744: 54000201     	b.ne	0x8784 <syna_dev_isr+0xdc>
    8748: 52800020     	mov	w0, #0x1                // =1
    874c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8750: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8754: 9100c3ff     	add	sp, sp, #0x30
    8758: d50323bf     	autiasp
    875c: d65f03c0     	ret
    8760: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x18c>
		0000000000008760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2852
    8764: 91000000     	add	x0, x0, #0x0
		0000000000008764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2852
    8768: 14000003     	b	0x8774 <syna_dev_isr+0xcc>
    876c: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x18c>
		000000000000876c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e6
    8770: 91000000     	add	x0, x0, #0x0
		0000000000008770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e6
    8774: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x18c>
		0000000000008774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x567f
    8778: 91000021     	add	x1, x1, #0x0
		0000000000008778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x567f
    877c: 94000000     	bl	0x877c <syna_dev_isr+0xd4>
		000000000000877c:  R_AARCH64_CALL26	_printk
    8780: 17ffffed     	b	0x8734 <syna_dev_isr+0x8c>
    8784: 94000000     	bl	0x8784 <syna_dev_isr+0xdc>
		0000000000008784:  R_AARCH64_CALL26	__stack_chk_fail
