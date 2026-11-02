
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000494 <sensors_sensitivity_unregister>:
     494: d503233f     	paciasp
     498: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     49c: f9000bf5     	str	x21, [sp, #0x10]
     4a0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     4a4: 910003fd     	mov	x29, sp
     4a8: 90000015     	adrp	x21, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     4ac: 90000014     	adrp	x20, 0x0 <.text>
		00000000000004ac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8
     4b0: 91000294     	add	x20, x20, #0x0
		00000000000004b0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8
     4b4: f94002a8     	ldr	x8, [x21]
		00000000000004b4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     4b8: aa1403e1     	mov	x1, x20
     4bc: f9400113     	ldr	x19, [x8]
     4c0: aa1303e0     	mov	x0, x19
     4c4: 94000000     	bl	0x4c4 <sensors_sensitivity_unregister+0x30>
		00000000000004c4:  R_AARCH64_CALL26	device_remove_file
     4c8: 91008281     	add	x1, x20, #0x20
     4cc: aa1303e0     	mov	x0, x19
     4d0: 94000000     	bl	0x4d0 <sensors_sensitivity_unregister+0x3c>
		00000000000004d0:  R_AARCH64_CALL26	device_remove_file
     4d4: 91010281     	add	x1, x20, #0x40
     4d8: aa1303e0     	mov	x0, x19
     4dc: 94000000     	bl	0x4dc <sensors_sensitivity_unregister+0x48>
		00000000000004dc:  R_AARCH64_CALL26	device_remove_file
     4e0: 91018281     	add	x1, x20, #0x60
     4e4: aa1303e0     	mov	x0, x19
     4e8: 94000000     	bl	0x4e8 <sensors_sensitivity_unregister+0x54>
		00000000000004e8:  R_AARCH64_CALL26	device_remove_file
     4ec: f94002a8     	ldr	x8, [x21]
		00000000000004ec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     4f0: 90000014     	adrp	x20, 0x0 <.text>
		00000000000004f0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
     4f4: 91000294     	add	x20, x20, #0x0
		00000000000004f4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x88
     4f8: aa1403e1     	mov	x1, x20
     4fc: f9400513     	ldr	x19, [x8, #0x8]
     500: aa1303e0     	mov	x0, x19
     504: 94000000     	bl	0x504 <sensors_sensitivity_unregister+0x70>
		0000000000000504:  R_AARCH64_CALL26	device_remove_file
     508: 91008281     	add	x1, x20, #0x20
     50c: aa1303e0     	mov	x0, x19
     510: 94000000     	bl	0x510 <sensors_sensitivity_unregister+0x7c>
		0000000000000510:  R_AARCH64_CALL26	device_remove_file
     514: 91010281     	add	x1, x20, #0x40
     518: aa1303e0     	mov	x0, x19
     51c: 94000000     	bl	0x51c <sensors_sensitivity_unregister+0x88>
		000000000000051c:  R_AARCH64_CALL26	device_remove_file
     520: 91018281     	add	x1, x20, #0x60
     524: aa1303e0     	mov	x0, x19
     528: 94000000     	bl	0x528 <sensors_sensitivity_unregister+0x94>
		0000000000000528:  R_AARCH64_CALL26	device_remove_file
     52c: f94002a0     	ldr	x0, [x21]
		000000000000052c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     530: 94000000     	bl	0x530 <sensors_sensitivity_unregister+0x9c>
		0000000000000530:  R_AARCH64_CALL26	kfree
     534: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     538: f9400bf5     	ldr	x21, [sp, #0x10]
     53c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     540: d50323bf     	autiasp
     544: d65f03c0     	ret
