
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b18 <aw22xxx_irq>:
     b18: d503233f     	paciasp
     b1c: d100c3ff     	sub	sp, sp, #0x30
     b20: a9017bfd     	stp	x29, x30, [sp, #0x10]
     b24: a9024ff4     	stp	x20, x19, [sp, #0x20]
     b28: 910043fd     	add	x29, sp, #0x10
     b2c: d5384108     	mrs	x8, SP_EL0
     b30: 90000014     	adrp	x20, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x144c
     b34: 91000294     	add	x20, x20, #0x0
		0000000000000b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x144c
     b38: f9438908     	ldr	x8, [x8, #0x710]
     b3c: aa0103f3     	mov	x19, x1
     b40: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1305
     b44: 91000000     	add	x0, x0, #0x0
		0000000000000b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1305
     b48: aa1403e1     	mov	x1, x20
     b4c: f90007e8     	str	x8, [sp, #0x8]
     b50: 390013ff     	strb	wzr, [sp, #0x4]
     b54: 94000000     	bl	0xb54 <aw22xxx_irq+0x3c>
		0000000000000b54:  R_AARCH64_CALL26	_printk
     b58: 910013e2     	add	x2, sp, #0x4
     b5c: aa1303e0     	mov	x0, x19
     b60: 52800141     	mov	w1, #0xa                // =10
     b64: 9400022f     	bl	0x1420 <aw22xxx_i2c_read>
     b68: 394013e2     	ldrb	w2, [sp, #0x4]
     b6c: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     b70: 91000000     	add	x0, x0, #0x0
		0000000000000b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     b74: aa1403e1     	mov	x1, x20
     b78: 94000000     	bl	0xb78 <aw22xxx_irq+0x60>
		0000000000000b78:  R_AARCH64_CALL26	_printk
     b7c: 394013e8     	ldrb	w8, [sp, #0x4]
     b80: 36200268     	tbz	w8, #0x4, 0xbcc <aw22xxx_irq+0xb4>
     b84: 90000008     	adrp	x8, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000b84:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     b88: 91094262     	add	x2, x19, #0x250
     b8c: 52800400     	mov	w0, #0x20               // =32
     b90: f9400101     	ldr	x1, [x8]
		0000000000000b90:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     b94: 94000000     	bl	0xb94 <aw22xxx_irq+0x7c>
		0000000000000b94:  R_AARCH64_CALL26	queue_work_on
     b98: b942fa61     	ldr	w1, [x19, #0x2f8]
     b9c: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a0
     ba0: 91000000     	add	x0, x0, #0x0
		0000000000000ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a0
     ba4: 94000000     	bl	0xba4 <aw22xxx_irq+0x8c>
		0000000000000ba4:  R_AARCH64_CALL26	_printk
     ba8: f941aa60     	ldr	x0, [x19, #0x350]
     bac: b942fa62     	ldr	w2, [x19, #0x2f8]
     bb0: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131a
     bb4: 91000021     	add	x1, x1, #0x0
		0000000000000bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131a
     bb8: 94000000     	bl	0xbb8 <aw22xxx_irq+0xa0>
		0000000000000bb8:  R_AARCH64_CALL26	zlog_client_record
     bbc: f941aa60     	ldr	x0, [x19, #0x350]
     bc0: 52804b21     	mov	w1, #0x259              // =601
     bc4: 72a00801     	movk	w1, #0x40, lsl #16
     bc8: 94000000     	bl	0xbc8 <aw22xxx_irq+0xb0>
		0000000000000bc8:  R_AARCH64_CALL26	zlog_client_notify
     bcc: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x171e
     bd0: 91000000     	add	x0, x0, #0x0
		0000000000000bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x171e
     bd4: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x144c
     bd8: 91000021     	add	x1, x1, #0x0
		0000000000000bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x144c
     bdc: 94000000     	bl	0xbdc <aw22xxx_irq+0xc4>
		0000000000000bdc:  R_AARCH64_CALL26	_printk
     be0: d5384108     	mrs	x8, SP_EL0
     be4: f9438908     	ldr	x8, [x8, #0x710]
     be8: f94007e9     	ldr	x9, [sp, #0x8]
     bec: eb09011f     	cmp	x8, x9
     bf0: 540000e1     	b.ne	0xc0c <aw22xxx_irq+0xf4>
     bf4: 52800020     	mov	w0, #0x1                // =1
     bf8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     bfc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     c00: 9100c3ff     	add	sp, sp, #0x30
     c04: d50323bf     	autiasp
     c08: d65f03c0     	ret
     c0c: 94000000     	bl	0xc0c <aw22xxx_irq+0xf4>
		0000000000000c0c:  R_AARCH64_CALL26	__stack_chk_fail
