
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000088 <accel_enable_store>:
      88: d503233f     	paciasp
      8c: d10103ff     	sub	sp, sp, #0x40
      90: a9017bfd     	stp	x29, x30, [sp, #0x10]
      94: f90013f5     	str	x21, [sp, #0x20]
      98: a9034ff4     	stp	x20, x19, [sp, #0x30]
      9c: 910043fd     	add	x29, sp, #0x10
      a0: d5384109     	mrs	x9, SP_EL0
      a4: aa0203e8     	mov	x8, x2
      a8: 910013e2     	add	x2, sp, #0x4
      ac: f9438929     	ldr	x9, [x9, #0x710]
      b0: 2a1f03e1     	mov	w1, wzr
      b4: aa0303f3     	mov	x19, x3
      b8: f90007e9     	str	x9, [sp, #0x8]
      bc: f9404c14     	ldr	x20, [x0, #0x98]
      c0: aa0803e0     	mov	x0, x8
      c4: b90007ff     	str	wzr, [sp, #0x4]
      c8: 94000000     	bl	0xc8 <accel_enable_store+0x40>
		00000000000000c8:  R_AARCH64_CALL26	kstrtoint
      cc: 34000060     	cbz	w0, 0xd8 <accel_enable_store+0x50>
      d0: 928002b3     	mov	x19, #-0x16             // =-22
      d4: 1400001c     	b	0x144 <accel_enable_store+0xbc>
      d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
      dc: b9400108     	ldr	w8, [x8]
		00000000000000dc:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
      e0: 7100091f     	cmp	w8, #0x2
      e4: 540000ea     	b.ge	0x100 <accel_enable_store+0x78>
      e8: b94007e8     	ldr	w8, [sp, #0x4]
      ec: 34000208     	cbz	w8, 0x12c <accel_enable_store+0xa4>
      f0: 7100051f     	cmp	w8, #0x1
      f4: 54fffee1     	b.ne	0xd0 <accel_enable_store+0x48>
      f8: 52800035     	mov	w21, #0x1               // =1
      fc: 1400000d     	b	0x130 <accel_enable_store+0xa8>
     100: b94007e4     	ldr	w4, [sp, #0x4]
     104: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c
     108: 91000000     	add	x0, x0, #0x0
		0000000000000108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c
     10c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68
     110: 91000021     	add	x1, x1, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68
     114: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c
     118: 91000042     	add	x2, x2, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c
     11c: 52800a23     	mov	w3, #0x51               // =81
     120: 94000000     	bl	0x120 <accel_enable_store+0x98>
		0000000000000120:  R_AARCH64_CALL26	_printk
     124: b94007e8     	ldr	w8, [sp, #0x4]
     128: 35fffe48     	cbnz	w8, 0xf0 <accel_enable_store+0x68>
     12c: 2a1f03f5     	mov	w21, wzr
     130: 91004280     	add	x0, x20, #0x10
     134: 94000000     	bl	0x134 <accel_enable_store+0xac>
		0000000000000134:  R_AARCH64_CALL26	mutex_lock
     138: 91004280     	add	x0, x20, #0x10
     13c: 39010295     	strb	w21, [x20, #0x40]
     140: 94000000     	bl	0x140 <accel_enable_store+0xb8>
		0000000000000140:  R_AARCH64_CALL26	mutex_unlock
     144: d5384108     	mrs	x8, SP_EL0
     148: f9438908     	ldr	x8, [x8, #0x710]
     14c: f94007e9     	ldr	x9, [sp, #0x8]
     150: eb09011f     	cmp	x8, x9
     154: 54000101     	b.ne	0x174 <accel_enable_store+0xec>
     158: aa1303e0     	mov	x0, x19
     15c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     160: f94013f5     	ldr	x21, [sp, #0x20]
     164: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     168: 910103ff     	add	sp, sp, #0x40
     16c: d50323bf     	autiasp
     170: d65f03c0     	ret
     174: 94000000     	bl	0x174 <accel_enable_store+0xec>
		0000000000000174:  R_AARCH64_CALL26	__stack_chk_fail
