
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ba4 <gyro_enable_store>:
     ba4: d503233f     	paciasp
     ba8: d10103ff     	sub	sp, sp, #0x40
     bac: a9017bfd     	stp	x29, x30, [sp, #0x10]
     bb0: f90013f5     	str	x21, [sp, #0x20]
     bb4: a9034ff4     	stp	x20, x19, [sp, #0x30]
     bb8: 910043fd     	add	x29, sp, #0x10
     bbc: d5384109     	mrs	x9, SP_EL0
     bc0: aa0203e8     	mov	x8, x2
     bc4: 910013e2     	add	x2, sp, #0x4
     bc8: f9438929     	ldr	x9, [x9, #0x710]
     bcc: 2a1f03e1     	mov	w1, wzr
     bd0: aa0303f3     	mov	x19, x3
     bd4: f90007e9     	str	x9, [sp, #0x8]
     bd8: f9404c14     	ldr	x20, [x0, #0x98]
     bdc: aa0803e0     	mov	x0, x8
     be0: b90007ff     	str	wzr, [sp, #0x4]
     be4: 94000000     	bl	0xbe4 <gyro_enable_store+0x40>
		0000000000000be4:  R_AARCH64_CALL26	kstrtoint
     be8: 34000060     	cbz	w0, 0xbf4 <gyro_enable_store+0x50>
     bec: 928002b3     	mov	x19, #-0x16             // =-22
     bf0: 1400001c     	b	0xc60 <gyro_enable_store+0xbc>
     bf4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bf4:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     bf8: b9400108     	ldr	w8, [x8]
		0000000000000bf8:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     bfc: 7100091f     	cmp	w8, #0x2
     c00: 540000ea     	b.ge	0xc1c <gyro_enable_store+0x78>
     c04: b94007e8     	ldr	w8, [sp, #0x4]
     c08: 34000208     	cbz	w8, 0xc48 <gyro_enable_store+0xa4>
     c0c: 7100051f     	cmp	w8, #0x1
     c10: 54fffee1     	b.ne	0xbec <gyro_enable_store+0x48>
     c14: 52800035     	mov	w21, #0x1               // =1
     c18: 1400000d     	b	0xc4c <gyro_enable_store+0xa8>
     c1c: b94007e4     	ldr	w4, [sp, #0x4]
     c20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139
     c24: 91000000     	add	x0, x0, #0x0
		0000000000000c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139
     c28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     c2c: 91000021     	add	x1, x1, #0x0
		0000000000000c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     c30: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x603
     c34: 91000042     	add	x2, x2, #0x0
		0000000000000c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x603
     c38: 52801ae3     	mov	w3, #0xd7               // =215
     c3c: 94000000     	bl	0xc3c <gyro_enable_store+0x98>
		0000000000000c3c:  R_AARCH64_CALL26	_printk
     c40: b94007e8     	ldr	w8, [sp, #0x4]
     c44: 35fffe48     	cbnz	w8, 0xc0c <gyro_enable_store+0x68>
     c48: 2a1f03f5     	mov	w21, wzr
     c4c: 91004280     	add	x0, x20, #0x10
     c50: 94000000     	bl	0xc50 <gyro_enable_store+0xac>
		0000000000000c50:  R_AARCH64_CALL26	mutex_lock
     c54: 91004280     	add	x0, x20, #0x10
     c58: 39014295     	strb	w21, [x20, #0x50]
     c5c: 94000000     	bl	0xc5c <gyro_enable_store+0xb8>
		0000000000000c5c:  R_AARCH64_CALL26	mutex_unlock
     c60: d5384108     	mrs	x8, SP_EL0
     c64: f9438908     	ldr	x8, [x8, #0x710]
     c68: f94007e9     	ldr	x9, [sp, #0x8]
     c6c: eb09011f     	cmp	x8, x9
     c70: 54000101     	b.ne	0xc90 <gyro_enable_store+0xec>
     c74: aa1303e0     	mov	x0, x19
     c78: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     c7c: f94013f5     	ldr	x21, [sp, #0x20]
     c80: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     c84: 910103ff     	add	sp, sp, #0x40
     c88: d50323bf     	autiasp
     c8c: d65f03c0     	ret
     c90: 94000000     	bl	0xc90 <gyro_enable_store+0xec>
		0000000000000c90:  R_AARCH64_CALL26	__stack_chk_fail
