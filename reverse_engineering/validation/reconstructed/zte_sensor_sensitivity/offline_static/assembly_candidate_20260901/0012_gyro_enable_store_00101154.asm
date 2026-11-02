
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b5c <gyro_enable_store>:
     b5c: d503233f     	paciasp
     b60: d100c3ff     	sub	sp, sp, #0x30
     b64: a9017bfd     	stp	x29, x30, [sp, #0x10]
     b68: a9024ff4     	stp	x20, x19, [sp, #0x20]
     b6c: 910043fd     	add	x29, sp, #0x10
     b70: d5384109     	mrs	x9, SP_EL0
     b74: aa0203e8     	mov	x8, x2
     b78: 910013e2     	add	x2, sp, #0x4
     b7c: f9438929     	ldr	x9, [x9, #0x710]
     b80: 2a1f03e1     	mov	w1, wzr
     b84: aa0303f3     	mov	x19, x3
     b88: f90007e9     	str	x9, [sp, #0x8]
     b8c: f9404c14     	ldr	x20, [x0, #0x98]
     b90: aa0803e0     	mov	x0, x8
     b94: b90007ff     	str	wzr, [sp, #0x4]
     b98: 94000000     	bl	0xb98 <gyro_enable_store+0x3c>
		0000000000000b98:  R_AARCH64_CALL26	kstrtoint
     b9c: 35000100     	cbnz	w0, 0xbbc <gyro_enable_store+0x60>
     ba0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ba0:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     ba4: b9400108     	ldr	w8, [x8]
		0000000000000ba4:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     ba8: 7100091f     	cmp	w8, #0x2
     bac: 540002ea     	b.ge	0xc08 <gyro_enable_store+0xac>
     bb0: b94007e8     	ldr	w8, [sp, #0x4]
     bb4: 7100051f     	cmp	w8, #0x1
     bb8: 540001a9     	b.ls	0xbec <gyro_enable_store+0x90>
     bbc: 928002b3     	mov	x19, #-0x16             // =-22
     bc0: d5384108     	mrs	x8, SP_EL0
     bc4: f9438908     	ldr	x8, [x8, #0x710]
     bc8: f94007e9     	ldr	x9, [sp, #0x8]
     bcc: eb09011f     	cmp	x8, x9
     bd0: 54000301     	b.ne	0xc30 <gyro_enable_store+0xd4>
     bd4: aa1303e0     	mov	x0, x19
     bd8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     bdc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     be0: 9100c3ff     	add	sp, sp, #0x30
     be4: d50323bf     	autiasp
     be8: d65f03c0     	ret
     bec: 91004280     	add	x0, x20, #0x10
     bf0: 94000000     	bl	0xbf0 <gyro_enable_store+0x94>
		0000000000000bf0:  R_AARCH64_CALL26	mutex_lock
     bf4: b94007e8     	ldr	w8, [sp, #0x4]
     bf8: 91004280     	add	x0, x20, #0x10
     bfc: 39014288     	strb	w8, [x20, #0x50]
     c00: 94000000     	bl	0xc00 <gyro_enable_store+0xa4>
		0000000000000c00:  R_AARCH64_CALL26	mutex_unlock
     c04: 17ffffef     	b	0xbc0 <gyro_enable_store+0x64>
     c08: b94007e4     	ldr	w4, [sp, #0x4]
     c0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     c10: 91000000     	add	x0, x0, #0x0
		0000000000000c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     c14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     c18: 91000021     	add	x1, x1, #0x0
		0000000000000c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     c1c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48c
     c20: 91000042     	add	x2, x2, #0x0
		0000000000000c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48c
     c24: 52800a23     	mov	w3, #0x51               // =81
     c28: 94000000     	bl	0xc28 <gyro_enable_store+0xcc>
		0000000000000c28:  R_AARCH64_CALL26	_printk
     c2c: 17ffffe1     	b	0xbb0 <gyro_enable_store+0x54>
     c30: 94000000     	bl	0xc30 <gyro_enable_store+0xd4>
		0000000000000c30:  R_AARCH64_CALL26	__stack_chk_fail
