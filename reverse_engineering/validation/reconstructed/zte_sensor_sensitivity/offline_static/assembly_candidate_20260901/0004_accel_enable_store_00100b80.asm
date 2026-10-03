
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005b0 <accel_enable_store>:
     5b0: d503233f     	paciasp
     5b4: d100c3ff     	sub	sp, sp, #0x30
     5b8: a9017bfd     	stp	x29, x30, [sp, #0x10]
     5bc: a9024ff4     	stp	x20, x19, [sp, #0x20]
     5c0: 910043fd     	add	x29, sp, #0x10
     5c4: d5384109     	mrs	x9, SP_EL0
     5c8: aa0203e8     	mov	x8, x2
     5cc: 910013e2     	add	x2, sp, #0x4
     5d0: f9438929     	ldr	x9, [x9, #0x710]
     5d4: 2a1f03e1     	mov	w1, wzr
     5d8: aa0303f3     	mov	x19, x3
     5dc: f90007e9     	str	x9, [sp, #0x8]
     5e0: f9404c14     	ldr	x20, [x0, #0x98]
     5e4: aa0803e0     	mov	x0, x8
     5e8: b90007ff     	str	wzr, [sp, #0x4]
     5ec: 94000000     	bl	0x5ec <accel_enable_store+0x3c>
		00000000000005ec:  R_AARCH64_CALL26	kstrtoint
     5f0: 35000100     	cbnz	w0, 0x610 <accel_enable_store+0x60>
     5f4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005f4:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     5f8: b9400108     	ldr	w8, [x8]
		00000000000005f8:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     5fc: 7100091f     	cmp	w8, #0x2
     600: 540002ea     	b.ge	0x65c <accel_enable_store+0xac>
     604: b94007e8     	ldr	w8, [sp, #0x4]
     608: 7100051f     	cmp	w8, #0x1
     60c: 540001a9     	b.ls	0x640 <accel_enable_store+0x90>
     610: 928002b3     	mov	x19, #-0x16             // =-22
     614: d5384108     	mrs	x8, SP_EL0
     618: f9438908     	ldr	x8, [x8, #0x710]
     61c: f94007e9     	ldr	x9, [sp, #0x8]
     620: eb09011f     	cmp	x8, x9
     624: 54000301     	b.ne	0x684 <accel_enable_store+0xd4>
     628: aa1303e0     	mov	x0, x19
     62c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     630: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     634: 9100c3ff     	add	sp, sp, #0x30
     638: d50323bf     	autiasp
     63c: d65f03c0     	ret
     640: 91004280     	add	x0, x20, #0x10
     644: 94000000     	bl	0x644 <accel_enable_store+0x94>
		0000000000000644:  R_AARCH64_CALL26	mutex_lock
     648: b94007e8     	ldr	w8, [sp, #0x4]
     64c: 91004280     	add	x0, x20, #0x10
     650: 39010288     	strb	w8, [x20, #0x40]
     654: 94000000     	bl	0x654 <accel_enable_store+0xa4>
		0000000000000654:  R_AARCH64_CALL26	mutex_unlock
     658: 17ffffef     	b	0x614 <accel_enable_store+0x64>
     65c: b94007e4     	ldr	w4, [sp, #0x4]
     660: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     664: 91000000     	add	x0, x0, #0x0
		0000000000000664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     668: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     66c: 91000021     	add	x1, x1, #0x0
		000000000000066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     670: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1
     674: 91000042     	add	x2, x2, #0x0
		0000000000000674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1
     678: 52800a23     	mov	w3, #0x51               // =81
     67c: 94000000     	bl	0x67c <accel_enable_store+0xcc>
		000000000000067c:  R_AARCH64_CALL26	_printk
     680: 17ffffe1     	b	0x604 <accel_enable_store+0x54>
     684: 94000000     	bl	0x684 <accel_enable_store+0xd4>
		0000000000000684:  R_AARCH64_CALL26	__stack_chk_fail
