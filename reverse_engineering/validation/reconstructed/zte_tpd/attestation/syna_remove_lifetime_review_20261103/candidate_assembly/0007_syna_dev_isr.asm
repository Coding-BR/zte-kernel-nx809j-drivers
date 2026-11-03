
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001eba8 <syna_dev_isr>:
   1eba8: d503233f     	paciasp
   1ebac: d100c3ff     	sub	sp, sp, #0x30
   1ebb0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1ebb4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1ebb8: 910043fd     	add	x29, sp, #0x10
   1ebbc: d5384108     	mrs	x8, SP_EL0
   1ebc0: aa0103f3     	mov	x19, x1
   1ebc4: f9438908     	ldr	x8, [x8, #0x710]
   1ebc8: f90007e8     	str	x8, [sp, #0x8]
   1ebcc: b9457c28     	ldr	w8, [x1, #0x57c]
   1ebd0: f9413834     	ldr	x20, [x1, #0x270]
   1ebd4: 390013ff     	strb	wzr, [sp, #0x4]
   1ebd8: 7100051f     	cmp	w8, #0x1
   1ebdc: 54000100     	b.eq	0x1ebfc <syna_dev_isr+0x54>
   1ebe0: 3955e268     	ldrb	w8, [x19, #0x578]
   1ebe4: 7100051f     	cmp	w8, #0x1
   1ebe8: 540000a1     	b.ne	0x1ebfc <syna_dev_isr+0x54>
   1ebec: 91156260     	add	x0, x19, #0x558
   1ebf0: 528015e1     	mov	w1, #0xaf               // =175
   1ebf4: 94000000     	bl	0x1ebf4 <syna_dev_isr+0x4c>
		000000000001ebf4:  R_AARCH64_CALL26	wait_for_completion_timeout
   1ebf8: 340003a0     	cbz	w0, 0x1ec6c <syna_dev_isr+0xc4>
   1ebfc: b940aa80     	ldr	w0, [x20, #0xa8]
   1ec00: 94000000     	bl	0x1ec00 <syna_dev_isr+0x58>
		000000000001ec00:  R_AARCH64_CALL26	gpio_to_desc
   1ec04: 94000000     	bl	0x1ec04 <syna_dev_isr+0x5c>
		000000000001ec04:  R_AARCH64_CALL26	gpiod_get_raw_value
   1ec08: b940ae88     	ldr	w8, [x20, #0xac]
   1ec0c: 6b08001f     	cmp	w0, w8
   1ec10: 54000121     	b.ne	0x1ec34 <syna_dev_isr+0x8c>
   1ec14: d5384108     	mrs	x8, SP_EL0
   1ec18: f9400260     	ldr	x0, [x19]
   1ec1c: 910013e1     	add	x1, sp, #0x4
   1ec20: b9470908     	ldr	w8, [x8, #0x708]
   1ec24: 910aa262     	add	x2, x19, #0x2a8
   1ec28: b902f268     	str	w8, [x19, #0x2f0]
   1ec2c: 94000000     	bl	0x1ec2c <syna_dev_isr+0x84>
		000000000001ec2c:  R_AARCH64_CALL26	syna_tcm_get_event_data
   1ec30: 37f80180     	tbnz	w0, #0x1f, 0x1ec60 <syna_dev_isr+0xb8>
   1ec34: d5384108     	mrs	x8, SP_EL0
   1ec38: f9438908     	ldr	x8, [x8, #0x710]
   1ec3c: f94007e9     	ldr	x9, [sp, #0x8]
   1ec40: eb09011f     	cmp	x8, x9
   1ec44: 54000201     	b.ne	0x1ec84 <syna_dev_isr+0xdc>
   1ec48: 52800020     	mov	w0, #0x1                // =1
   1ec4c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1ec50: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1ec54: 9100c3ff     	add	sp, sp, #0x30
   1ec58: d50323bf     	autiasp
   1ec5c: d65f03c0     	ret
   1ec60: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001ec60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4652
   1ec64: 91000000     	add	x0, x0, #0x0
		000000000001ec64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4652
   1ec68: 14000003     	b	0x1ec74 <syna_dev_isr+0xcc>
   1ec6c: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001ec6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fde
   1ec70: 91000000     	add	x0, x0, #0x0
		000000000001ec70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fde
   1ec74: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001ec74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99ac
   1ec78: 91000021     	add	x1, x1, #0x0
		000000000001ec78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99ac
   1ec7c: 94000000     	bl	0x1ec7c <syna_dev_isr+0xd4>
		000000000001ec7c:  R_AARCH64_CALL26	_printk
   1ec80: 17ffffed     	b	0x1ec34 <syna_dev_isr+0x8c>
   1ec84: 94000000     	bl	0x1ec84 <syna_dev_isr+0xdc>
		000000000001ec84:  R_AARCH64_CALL26	__stack_chk_fail
