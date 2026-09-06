
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000065c <gyro_enable_store>:
     65c: d503233f     	paciasp
     660: d10103ff     	sub	sp, sp, #0x40
     664: a9017bfd     	stp	x29, x30, [sp, #0x10]
     668: f90013f5     	str	x21, [sp, #0x20]
     66c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     670: 910043fd     	add	x29, sp, #0x10
     674: d5384109     	mrs	x9, SP_EL0
     678: aa0203e8     	mov	x8, x2
     67c: 910013e2     	add	x2, sp, #0x4
     680: f9438929     	ldr	x9, [x9, #0x710]
     684: 2a1f03e1     	mov	w1, wzr
     688: aa0303f3     	mov	x19, x3
     68c: f90007e9     	str	x9, [sp, #0x8]
     690: f9404c14     	ldr	x20, [x0, #0x98]
     694: aa0803e0     	mov	x0, x8
     698: b90007ff     	str	wzr, [sp, #0x4]
     69c: 94000000     	bl	0x69c <gyro_enable_store+0x40>
		000000000000069c:  R_AARCH64_CALL26	kstrtoint
     6a0: 34000060     	cbz	w0, 0x6ac <gyro_enable_store+0x50>
     6a4: 928002b3     	mov	x19, #-0x16             // =-22
     6a8: 1400001c     	b	0x718 <gyro_enable_store+0xbc>
     6ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006ac:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     6b0: b9400108     	ldr	w8, [x8]
		00000000000006b0:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     6b4: 7100091f     	cmp	w8, #0x2
     6b8: 540000ea     	b.ge	0x6d4 <gyro_enable_store+0x78>
     6bc: b94007e8     	ldr	w8, [sp, #0x4]
     6c0: 34000208     	cbz	w8, 0x700 <gyro_enable_store+0xa4>
     6c4: 7100051f     	cmp	w8, #0x1
     6c8: 54fffee1     	b.ne	0x6a4 <gyro_enable_store+0x48>
     6cc: 52800035     	mov	w21, #0x1               // =1
     6d0: 1400000d     	b	0x704 <gyro_enable_store+0xa8>
     6d4: b94007e4     	ldr	w4, [sp, #0x4]
     6d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118
     6dc: 91000000     	add	x0, x0, #0x0
		00000000000006dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118
     6e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     6e4: 91000021     	add	x1, x1, #0x0
		00000000000006e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     6e8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x888
     6ec: 91000042     	add	x2, x2, #0x0
		00000000000006ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x888
     6f0: 52801ae3     	mov	w3, #0xd7               // =215
     6f4: 94000000     	bl	0x6f4 <gyro_enable_store+0x98>
		00000000000006f4:  R_AARCH64_CALL26	_printk
     6f8: b94007e8     	ldr	w8, [sp, #0x4]
     6fc: 35fffe48     	cbnz	w8, 0x6c4 <gyro_enable_store+0x68>
     700: 2a1f03f5     	mov	w21, wzr
     704: 91004280     	add	x0, x20, #0x10
     708: 94000000     	bl	0x708 <gyro_enable_store+0xac>
		0000000000000708:  R_AARCH64_CALL26	mutex_lock
     70c: 91004280     	add	x0, x20, #0x10
     710: 39014295     	strb	w21, [x20, #0x50]
     714: 94000000     	bl	0x714 <gyro_enable_store+0xb8>
		0000000000000714:  R_AARCH64_CALL26	mutex_unlock
     718: d5384108     	mrs	x8, SP_EL0
     71c: f9438908     	ldr	x8, [x8, #0x710]
     720: f94007e9     	ldr	x9, [sp, #0x8]
     724: eb09011f     	cmp	x8, x9
     728: 54000101     	b.ne	0x748 <gyro_enable_store+0xec>
     72c: aa1303e0     	mov	x0, x19
     730: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     734: f94013f5     	ldr	x21, [sp, #0x20]
     738: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     73c: 910103ff     	add	sp, sp, #0x40
     740: d50323bf     	autiasp
     744: d65f03c0     	ret
     748: 94000000     	bl	0x748 <gyro_enable_store+0xec>
		0000000000000748:  R_AARCH64_CALL26	__stack_chk_fail
