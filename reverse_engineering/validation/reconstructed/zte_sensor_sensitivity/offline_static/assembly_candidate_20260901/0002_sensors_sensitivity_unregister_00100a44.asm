
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000047c <sensors_sensitivity_unregister>:
     47c: d503233f     	paciasp
     480: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     484: f9000bf5     	str	x21, [sp, #0x10]
     488: a9024ff4     	stp	x20, x19, [sp, #0x20]
     48c: 910003fd     	mov	x29, sp
     490: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000490:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     494: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000494:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8
     498: 910002b5     	add	x21, x21, #0x0
		0000000000000498:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8
     49c: f9400113     	ldr	x19, [x8]
		000000000000049c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     4a0: aa1503e1     	mov	x1, x21
     4a4: f9400274     	ldr	x20, [x19]
     4a8: aa1403e0     	mov	x0, x20
     4ac: 94000000     	bl	0x4ac <sensors_sensitivity_unregister+0x30>
		00000000000004ac:  R_AARCH64_CALL26	device_remove_file
     4b0: 910082a1     	add	x1, x21, #0x20
     4b4: aa1403e0     	mov	x0, x20
     4b8: 94000000     	bl	0x4b8 <sensors_sensitivity_unregister+0x3c>
		00000000000004b8:  R_AARCH64_CALL26	device_remove_file
     4bc: 910102a1     	add	x1, x21, #0x40
     4c0: aa1403e0     	mov	x0, x20
     4c4: 94000000     	bl	0x4c4 <sensors_sensitivity_unregister+0x48>
		00000000000004c4:  R_AARCH64_CALL26	device_remove_file
     4c8: 910182a1     	add	x1, x21, #0x60
     4cc: aa1403e0     	mov	x0, x20
     4d0: 94000000     	bl	0x4d0 <sensors_sensitivity_unregister+0x54>
		00000000000004d0:  R_AARCH64_CALL26	device_remove_file
     4d4: f9400674     	ldr	x20, [x19, #0x8]
     4d8: 90000015     	adrp	x21, 0x0 <.text>
		00000000000004d8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
     4dc: 910002b5     	add	x21, x21, #0x0
		00000000000004dc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x88
     4e0: aa1503e1     	mov	x1, x21
     4e4: aa1403e0     	mov	x0, x20
     4e8: 94000000     	bl	0x4e8 <sensors_sensitivity_unregister+0x6c>
		00000000000004e8:  R_AARCH64_CALL26	device_remove_file
     4ec: 910082a1     	add	x1, x21, #0x20
     4f0: aa1403e0     	mov	x0, x20
     4f4: 94000000     	bl	0x4f4 <sensors_sensitivity_unregister+0x78>
		00000000000004f4:  R_AARCH64_CALL26	device_remove_file
     4f8: 910102a1     	add	x1, x21, #0x40
     4fc: aa1403e0     	mov	x0, x20
     500: 94000000     	bl	0x500 <sensors_sensitivity_unregister+0x84>
		0000000000000500:  R_AARCH64_CALL26	device_remove_file
     504: 910182a1     	add	x1, x21, #0x60
     508: aa1403e0     	mov	x0, x20
     50c: 94000000     	bl	0x50c <sensors_sensitivity_unregister+0x90>
		000000000000050c:  R_AARCH64_CALL26	device_remove_file
     510: aa1303e0     	mov	x0, x19
     514: 94000000     	bl	0x514 <sensors_sensitivity_unregister+0x98>
		0000000000000514:  R_AARCH64_CALL26	kfree
     518: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     51c: f9400bf5     	ldr	x21, [sp, #0x10]
     520: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     524: d50323bf     	autiasp
     528: d65f03c0     	ret
