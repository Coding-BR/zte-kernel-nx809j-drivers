
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008998 <syna_dev_isr>:
    8998: d503233f     	paciasp
    899c: d100c3ff     	sub	sp, sp, #0x30
    89a0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    89a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    89a8: 910043fd     	add	x29, sp, #0x10
    89ac: d5384108     	mrs	x8, SP_EL0
    89b0: aa0103f3     	mov	x19, x1
    89b4: f9438908     	ldr	x8, [x8, #0x710]
    89b8: f90007e8     	str	x8, [sp, #0x8]
    89bc: b9457c28     	ldr	w8, [x1, #0x57c]
    89c0: f9413834     	ldr	x20, [x1, #0x270]
    89c4: 390013ff     	strb	wzr, [sp, #0x4]
    89c8: 7100051f     	cmp	w8, #0x1
    89cc: 54000100     	b.eq	0x89ec <syna_dev_isr+0x54>
    89d0: 3955e268     	ldrb	w8, [x19, #0x578]
    89d4: 7100051f     	cmp	w8, #0x1
    89d8: 540000a1     	b.ne	0x89ec <syna_dev_isr+0x54>
    89dc: 91156260     	add	x0, x19, #0x558
    89e0: 528015e1     	mov	w1, #0xaf               // =175
    89e4: 94000000     	bl	0x89e4 <syna_dev_isr+0x4c>
		00000000000089e4:  R_AARCH64_CALL26	wait_for_completion_timeout
    89e8: 340003a0     	cbz	w0, 0x8a5c <syna_dev_isr+0xc4>
    89ec: b940aa80     	ldr	w0, [x20, #0xa8]
    89f0: 94000000     	bl	0x89f0 <syna_dev_isr+0x58>
		00000000000089f0:  R_AARCH64_CALL26	gpio_to_desc
    89f4: 94000000     	bl	0x89f4 <syna_dev_isr+0x5c>
		00000000000089f4:  R_AARCH64_CALL26	gpiod_get_raw_value
    89f8: b940ae88     	ldr	w8, [x20, #0xac]
    89fc: 6b08001f     	cmp	w0, w8
    8a00: 54000121     	b.ne	0x8a24 <syna_dev_isr+0x8c>
    8a04: d5384108     	mrs	x8, SP_EL0
    8a08: f9400260     	ldr	x0, [x19]
    8a0c: 910013e1     	add	x1, sp, #0x4
    8a10: b9470908     	ldr	w8, [x8, #0x708]
    8a14: 910aa262     	add	x2, x19, #0x2a8
    8a18: b902f268     	str	w8, [x19, #0x2f0]
    8a1c: 94000000     	bl	0x8a1c <syna_dev_isr+0x84>
		0000000000008a1c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    8a20: 37f80180     	tbnz	w0, #0x1f, 0x8a50 <syna_dev_isr+0xb8>
    8a24: d5384108     	mrs	x8, SP_EL0
    8a28: f9438908     	ldr	x8, [x8, #0x710]
    8a2c: f94007e9     	ldr	x9, [sp, #0x8]
    8a30: eb09011f     	cmp	x8, x9
    8a34: 54000201     	b.ne	0x8a74 <syna_dev_isr+0xdc>
    8a38: 52800020     	mov	w0, #0x1                // =1
    8a3c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8a40: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8a44: 9100c3ff     	add	sp, sp, #0x30
    8a48: d50323bf     	autiasp
    8a4c: d65f03c0     	ret
    8a50: 90000000     	adrp	x0, 0x8000 <syna_dev_connect+0x2b8>
		0000000000008a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f39
    8a54: 91000000     	add	x0, x0, #0x0
		0000000000008a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f39
    8a58: 14000003     	b	0x8a64 <syna_dev_isr+0xcc>
    8a5c: 90000000     	adrp	x0, 0x8000 <syna_dev_connect+0x2b8>
		0000000000008a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8c
    8a60: 91000000     	add	x0, x0, #0x0
		0000000000008a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8c
    8a64: 90000001     	adrp	x1, 0x8000 <syna_dev_connect+0x2b8>
		0000000000008a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43e7
    8a68: 91000021     	add	x1, x1, #0x0
		0000000000008a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43e7
    8a6c: 94000000     	bl	0x8a6c <syna_dev_isr+0xd4>
		0000000000008a6c:  R_AARCH64_CALL26	_printk
    8a70: 17ffffed     	b	0x8a24 <syna_dev_isr+0x8c>
    8a74: 94000000     	bl	0x8a74 <syna_dev_isr+0xdc>
		0000000000008a74:  R_AARCH64_CALL26	__stack_chk_fail
