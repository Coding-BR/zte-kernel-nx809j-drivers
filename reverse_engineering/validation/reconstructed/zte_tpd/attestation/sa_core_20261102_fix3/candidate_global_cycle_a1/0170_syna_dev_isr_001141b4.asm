
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cc64 <syna_dev_isr>:
   1cc64: d503233f     	paciasp
   1cc68: d100c3ff     	sub	sp, sp, #0x30
   1cc6c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1cc70: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1cc74: 910043fd     	add	x29, sp, #0x10
   1cc78: d5384108     	mrs	x8, SP_EL0
   1cc7c: aa0103f3     	mov	x19, x1
   1cc80: f9438908     	ldr	x8, [x8, #0x710]
   1cc84: f90007e8     	str	x8, [sp, #0x8]
   1cc88: b9457c28     	ldr	w8, [x1, #0x57c]
   1cc8c: f9413834     	ldr	x20, [x1, #0x270]
   1cc90: 390013ff     	strb	wzr, [sp, #0x4]
   1cc94: 7100051f     	cmp	w8, #0x1
   1cc98: 54000100     	b.eq	0x1ccb8 <syna_dev_isr+0x54>
   1cc9c: 3955e268     	ldrb	w8, [x19, #0x578]
   1cca0: 7100051f     	cmp	w8, #0x1
   1cca4: 540000a1     	b.ne	0x1ccb8 <syna_dev_isr+0x54>
   1cca8: 91156260     	add	x0, x19, #0x558
   1ccac: 528015e1     	mov	w1, #0xaf               // =175
   1ccb0: 94000000     	bl	0x1ccb0 <syna_dev_isr+0x4c>
		000000000001ccb0:  R_AARCH64_CALL26	wait_for_completion_timeout
   1ccb4: 340003a0     	cbz	w0, 0x1cd28 <syna_dev_isr+0xc4>
   1ccb8: b940aa80     	ldr	w0, [x20, #0xa8]
   1ccbc: 94000000     	bl	0x1ccbc <syna_dev_isr+0x58>
		000000000001ccbc:  R_AARCH64_CALL26	gpio_to_desc
   1ccc0: 94000000     	bl	0x1ccc0 <syna_dev_isr+0x5c>
		000000000001ccc0:  R_AARCH64_CALL26	gpiod_get_raw_value
   1ccc4: b940ae88     	ldr	w8, [x20, #0xac]
   1ccc8: 6b08001f     	cmp	w0, w8
   1cccc: 54000121     	b.ne	0x1ccf0 <syna_dev_isr+0x8c>
   1ccd0: d5384108     	mrs	x8, SP_EL0
   1ccd4: f9400260     	ldr	x0, [x19]
   1ccd8: 910013e1     	add	x1, sp, #0x4
   1ccdc: b9470908     	ldr	w8, [x8, #0x708]
   1cce0: 910aa262     	add	x2, x19, #0x2a8
   1cce4: b902f268     	str	w8, [x19, #0x2f0]
   1cce8: 94000000     	bl	0x1cce8 <syna_dev_isr+0x84>
		000000000001cce8:  R_AARCH64_CALL26	syna_tcm_get_event_data
   1ccec: 37f80180     	tbnz	w0, #0x1f, 0x1cd1c <syna_dev_isr+0xb8>
   1ccf0: d5384108     	mrs	x8, SP_EL0
   1ccf4: f9438908     	ldr	x8, [x8, #0x710]
   1ccf8: f94007e9     	ldr	x9, [sp, #0x8]
   1ccfc: eb09011f     	cmp	x8, x9
   1cd00: 54000201     	b.ne	0x1cd40 <syna_dev_isr+0xdc>
   1cd04: 52800020     	mov	w0, #0x1                // =1
   1cd08: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1cd0c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1cd10: 9100c3ff     	add	sp, sp, #0x30
   1cd14: d50323bf     	autiasp
   1cd18: d65f03c0     	ret
   1cd1c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cd1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4652
   1cd20: 91000000     	add	x0, x0, #0x0
		000000000001cd20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4652
   1cd24: 14000003     	b	0x1cd30 <syna_dev_isr+0xcc>
   1cd28: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cd28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fde
   1cd2c: 91000000     	add	x0, x0, #0x0
		000000000001cd2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fde
   1cd30: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cd30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99ac
   1cd34: 91000021     	add	x1, x1, #0x0
		000000000001cd34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99ac
   1cd38: 94000000     	bl	0x1cd38 <syna_dev_isr+0xd4>
		000000000001cd38:  R_AARCH64_CALL26	_printk
   1cd3c: 17ffffed     	b	0x1ccf0 <syna_dev_isr+0x8c>
   1cd40: 94000000     	bl	0x1cd40 <syna_dev_isr+0xdc>
		000000000001cd40:  R_AARCH64_CALL26	__stack_chk_fail
