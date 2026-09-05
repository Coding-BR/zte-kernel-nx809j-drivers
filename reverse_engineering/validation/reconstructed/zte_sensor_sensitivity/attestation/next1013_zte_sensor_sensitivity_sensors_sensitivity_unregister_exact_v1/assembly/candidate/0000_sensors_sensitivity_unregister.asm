
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a68 <sensors_sensitivity_unregister>:
     a68: d503233f     	paciasp
     a6c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     a70: f9000bf5     	str	x21, [sp, #0x10]
     a74: a9024ff4     	stp	x20, x19, [sp, #0x20]
     a78: 910003fd     	mov	x29, sp
     a7c: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000a7c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     a80: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000a80:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8
     a84: 91000294     	add	x20, x20, #0x0
		0000000000000a84:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8
     a88: f94002a8     	ldr	x8, [x21]
		0000000000000a88:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     a8c: aa1403e1     	mov	x1, x20
     a90: f9400113     	ldr	x19, [x8]
     a94: aa1303e0     	mov	x0, x19
     a98: 94000000     	bl	0xa98 <sensors_sensitivity_unregister+0x30>
		0000000000000a98:  R_AARCH64_CALL26	device_remove_file
     a9c: 91008281     	add	x1, x20, #0x20
     aa0: aa1303e0     	mov	x0, x19
     aa4: 94000000     	bl	0xaa4 <sensors_sensitivity_unregister+0x3c>
		0000000000000aa4:  R_AARCH64_CALL26	device_remove_file
     aa8: 91010281     	add	x1, x20, #0x40
     aac: aa1303e0     	mov	x0, x19
     ab0: 94000000     	bl	0xab0 <sensors_sensitivity_unregister+0x48>
		0000000000000ab0:  R_AARCH64_CALL26	device_remove_file
     ab4: 91018281     	add	x1, x20, #0x60
     ab8: aa1303e0     	mov	x0, x19
     abc: 94000000     	bl	0xabc <sensors_sensitivity_unregister+0x54>
		0000000000000abc:  R_AARCH64_CALL26	device_remove_file
     ac0: f94002a8     	ldr	x8, [x21]
		0000000000000ac0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     ac4: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000ac4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
     ac8: 91000294     	add	x20, x20, #0x0
		0000000000000ac8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x88
     acc: aa1403e1     	mov	x1, x20
     ad0: f9400513     	ldr	x19, [x8, #0x8]
     ad4: aa1303e0     	mov	x0, x19
     ad8: 94000000     	bl	0xad8 <sensors_sensitivity_unregister+0x70>
		0000000000000ad8:  R_AARCH64_CALL26	device_remove_file
     adc: 91008281     	add	x1, x20, #0x20
     ae0: aa1303e0     	mov	x0, x19
     ae4: 94000000     	bl	0xae4 <sensors_sensitivity_unregister+0x7c>
		0000000000000ae4:  R_AARCH64_CALL26	device_remove_file
     ae8: 91010281     	add	x1, x20, #0x40
     aec: aa1303e0     	mov	x0, x19
     af0: 94000000     	bl	0xaf0 <sensors_sensitivity_unregister+0x88>
		0000000000000af0:  R_AARCH64_CALL26	device_remove_file
     af4: 91018281     	add	x1, x20, #0x60
     af8: aa1303e0     	mov	x0, x19
     afc: 94000000     	bl	0xafc <sensors_sensitivity_unregister+0x94>
		0000000000000afc:  R_AARCH64_CALL26	device_remove_file
     b00: f94002a0     	ldr	x0, [x21]
		0000000000000b00:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     b04: 94000000     	bl	0xb04 <sensors_sensitivity_unregister+0x9c>
		0000000000000b04:  R_AARCH64_CALL26	kfree
     b08: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     b0c: f9400bf5     	ldr	x21, [sp, #0x10]
     b10: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     b14: d50323bf     	autiasp
     b18: d65f03c0     	ret
