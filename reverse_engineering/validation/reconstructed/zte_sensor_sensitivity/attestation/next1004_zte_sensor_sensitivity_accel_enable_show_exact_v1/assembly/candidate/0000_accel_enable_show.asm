
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <accel_enable_show>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: a9014ff4     	stp	x20, x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
      18: f9404c13     	ldr	x19, [x0, #0x98]
      1c: aa0203e0     	mov	x0, x2
      20: b9400108     	ldr	w8, [x8]
		0000000000000020:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
      24: 7100091f     	cmp	w8, #0x2
      28: 5400014a     	b.ge	0x50 <accel_enable_show+0x4c>
      2c: 39410262     	ldrb	w2, [x19, #0x40]
      30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e
      34: 91000021     	add	x1, x1, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e
      38: 94000000     	bl	0x38 <accel_enable_show+0x34>
		0000000000000038:  R_AARCH64_CALL26	sprintf
      3c: 93407c00     	sxtw	x0, w0
      40: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      44: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      48: d50323bf     	autiasp
      4c: d65f03c0     	ret
      50: 39410264     	ldrb	w4, [x19, #0x40]
      54: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      58: 91000108     	add	x8, x8, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      5c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68
      60: 91000021     	add	x1, x1, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68
      64: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x652
      68: 91000042     	add	x2, x2, #0x0
		0000000000000068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x652
      6c: aa0003f4     	mov	x20, x0
      70: aa0803e0     	mov	x0, x8
      74: 52800d23     	mov	w3, #0x69               // =105
      78: 94000000     	bl	0x78 <accel_enable_show+0x74>
		0000000000000078:  R_AARCH64_CALL26	_printk
      7c: aa1403e0     	mov	x0, x20
      80: 17ffffeb     	b	0x2c <accel_enable_show+0x28>
