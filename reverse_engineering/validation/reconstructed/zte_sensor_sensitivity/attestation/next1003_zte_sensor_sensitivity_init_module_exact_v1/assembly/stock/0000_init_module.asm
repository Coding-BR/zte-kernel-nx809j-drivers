
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
      14: b9400108     	ldr	w8, [x8]
		0000000000000014:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
      18: 7100091f     	cmp	w8, #0x2
      1c: 540000ca     	b.ge	0x34 <init_module+0x30>
      20: 94000000     	bl	0x20 <init_module+0x1c>
		0000000000000020:  R_AARCH64_CALL26	sensors_sensitivity_register
      24: 2a1f03e0     	mov	w0, wzr
      28: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      2c: d50323bf     	autiasp
      30: d65f03c0     	ret
      34: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55a
      38: 91000000     	add	x0, x0, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55a
      3c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
      40: 91000021     	add	x1, x1, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
      44: 90000002     	adrp	x2, 0x0 <.init.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x347
      48: 91000042     	add	x2, x2, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x347
      4c: 52803503     	mov	w3, #0x1a8              // =424
      50: 94000000     	bl	0x50 <init_module+0x4c>
		0000000000000050:  R_AARCH64_CALL26	_printk
      54: 17fffff3     	b	0x20 <init_module+0x1c>
