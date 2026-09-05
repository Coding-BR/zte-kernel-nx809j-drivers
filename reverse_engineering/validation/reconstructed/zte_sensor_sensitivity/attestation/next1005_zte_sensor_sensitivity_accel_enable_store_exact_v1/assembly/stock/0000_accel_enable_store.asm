
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005d0 <accel_enable_store>:
     5d0: d503233f     	paciasp
     5d4: d10103ff     	sub	sp, sp, #0x40
     5d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
     5dc: f90013f5     	str	x21, [sp, #0x20]
     5e0: a9034ff4     	stp	x20, x19, [sp, #0x30]
     5e4: 910043fd     	add	x29, sp, #0x10
     5e8: d5384109     	mrs	x9, SP_EL0
     5ec: aa0203e8     	mov	x8, x2
     5f0: 910013e2     	add	x2, sp, #0x4
     5f4: f9438929     	ldr	x9, [x9, #0x710]
     5f8: 2a1f03e1     	mov	w1, wzr
     5fc: aa0303f3     	mov	x19, x3
     600: f90007e9     	str	x9, [sp, #0x8]
     604: f9404c14     	ldr	x20, [x0, #0x98]
     608: aa0803e0     	mov	x0, x8
     60c: b90007ff     	str	wzr, [sp, #0x4]
     610: 94000000     	bl	0x610 <accel_enable_store+0x40>
		0000000000000610:  R_AARCH64_CALL26	kstrtoint
     614: 34000060     	cbz	w0, 0x620 <accel_enable_store+0x50>
     618: 928002b3     	mov	x19, #-0x16             // =-22
     61c: 1400001c     	b	0x68c <accel_enable_store+0xbc>
     620: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000620:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     624: b9400108     	ldr	w8, [x8]
		0000000000000624:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     628: 7100091f     	cmp	w8, #0x2
     62c: 540000ea     	b.ge	0x648 <accel_enable_store+0x78>
     630: b94007e8     	ldr	w8, [sp, #0x4]
     634: 34000208     	cbz	w8, 0x674 <accel_enable_store+0xa4>
     638: 7100051f     	cmp	w8, #0x1
     63c: 54fffee1     	b.ne	0x618 <accel_enable_store+0x48>
     640: 52800035     	mov	w21, #0x1               // =1
     644: 1400000d     	b	0x678 <accel_enable_store+0xa8>
     648: b94007e4     	ldr	w4, [sp, #0x4]
     64c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000064c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139
     650: 91000000     	add	x0, x0, #0x0
		0000000000000650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139
     654: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     658: 91000021     	add	x1, x1, #0x0
		0000000000000658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     65c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000065c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c5
     660: 91000042     	add	x2, x2, #0x0
		0000000000000660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c5
     664: 52800a23     	mov	w3, #0x51               // =81
     668: 94000000     	bl	0x668 <accel_enable_store+0x98>
		0000000000000668:  R_AARCH64_CALL26	_printk
     66c: b94007e8     	ldr	w8, [sp, #0x4]
     670: 35fffe48     	cbnz	w8, 0x638 <accel_enable_store+0x68>
     674: 2a1f03f5     	mov	w21, wzr
     678: 91004280     	add	x0, x20, #0x10
     67c: 94000000     	bl	0x67c <accel_enable_store+0xac>
		000000000000067c:  R_AARCH64_CALL26	mutex_lock
     680: 91004280     	add	x0, x20, #0x10
     684: 39010295     	strb	w21, [x20, #0x40]
     688: 94000000     	bl	0x688 <accel_enable_store+0xb8>
		0000000000000688:  R_AARCH64_CALL26	mutex_unlock
     68c: d5384108     	mrs	x8, SP_EL0
     690: f9438908     	ldr	x8, [x8, #0x710]
     694: f94007e9     	ldr	x9, [sp, #0x8]
     698: eb09011f     	cmp	x8, x9
     69c: 54000101     	b.ne	0x6bc <accel_enable_store+0xec>
     6a0: aa1303e0     	mov	x0, x19
     6a4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     6a8: f94013f5     	ldr	x21, [sp, #0x20]
     6ac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     6b0: 910103ff     	add	sp, sp, #0x40
     6b4: d50323bf     	autiasp
     6b8: d65f03c0     	ret
     6bc: 94000000     	bl	0x6bc <accel_enable_store+0xec>
		00000000000006bc:  R_AARCH64_CALL26	__stack_chk_fail
