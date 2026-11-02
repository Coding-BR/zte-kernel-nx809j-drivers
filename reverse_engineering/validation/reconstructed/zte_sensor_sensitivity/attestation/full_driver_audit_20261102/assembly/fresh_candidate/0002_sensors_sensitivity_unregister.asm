
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000103c <sensors_sensitivity_unregister>:
    103c: d503233f     	paciasp
    1040: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1044: f9000bf5     	str	x21, [sp, #0x10]
    1048: a9024ff4     	stp	x20, x19, [sp, #0x20]
    104c: 910003fd     	mov	x29, sp
    1050: 90000015     	adrp	x21, 0x1000 <sensors_sensitivity_register+0x358>
		0000000000001050:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
    1054: 90000014     	adrp	x20, 0x1000 <sensors_sensitivity_register+0x358>
		0000000000001054:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8
    1058: 91000294     	add	x20, x20, #0x0
		0000000000001058:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8
    105c: f94002a8     	ldr	x8, [x21]
		000000000000105c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    1060: aa1403e1     	mov	x1, x20
    1064: f9400113     	ldr	x19, [x8]
    1068: aa1303e0     	mov	x0, x19
    106c: 94000000     	bl	0x106c <sensors_sensitivity_unregister+0x30>
		000000000000106c:  R_AARCH64_CALL26	device_remove_file
    1070: 91008281     	add	x1, x20, #0x20
    1074: aa1303e0     	mov	x0, x19
    1078: 94000000     	bl	0x1078 <sensors_sensitivity_unregister+0x3c>
		0000000000001078:  R_AARCH64_CALL26	device_remove_file
    107c: 91010281     	add	x1, x20, #0x40
    1080: aa1303e0     	mov	x0, x19
    1084: 94000000     	bl	0x1084 <sensors_sensitivity_unregister+0x48>
		0000000000001084:  R_AARCH64_CALL26	device_remove_file
    1088: 91018281     	add	x1, x20, #0x60
    108c: aa1303e0     	mov	x0, x19
    1090: 94000000     	bl	0x1090 <sensors_sensitivity_unregister+0x54>
		0000000000001090:  R_AARCH64_CALL26	device_remove_file
    1094: f94002a8     	ldr	x8, [x21]
		0000000000001094:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    1098: 90000014     	adrp	x20, 0x1000 <sensors_sensitivity_register+0x358>
		0000000000001098:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
    109c: 91000294     	add	x20, x20, #0x0
		000000000000109c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x88
    10a0: aa1403e1     	mov	x1, x20
    10a4: f9400513     	ldr	x19, [x8, #0x8]
    10a8: aa1303e0     	mov	x0, x19
    10ac: 94000000     	bl	0x10ac <sensors_sensitivity_unregister+0x70>
		00000000000010ac:  R_AARCH64_CALL26	device_remove_file
    10b0: 91008281     	add	x1, x20, #0x20
    10b4: aa1303e0     	mov	x0, x19
    10b8: 94000000     	bl	0x10b8 <sensors_sensitivity_unregister+0x7c>
		00000000000010b8:  R_AARCH64_CALL26	device_remove_file
    10bc: 91010281     	add	x1, x20, #0x40
    10c0: aa1303e0     	mov	x0, x19
    10c4: 94000000     	bl	0x10c4 <sensors_sensitivity_unregister+0x88>
		00000000000010c4:  R_AARCH64_CALL26	device_remove_file
    10c8: 91018281     	add	x1, x20, #0x60
    10cc: aa1303e0     	mov	x0, x19
    10d0: 94000000     	bl	0x10d0 <sensors_sensitivity_unregister+0x94>
		00000000000010d0:  R_AARCH64_CALL26	device_remove_file
    10d4: f94002a0     	ldr	x0, [x21]
		00000000000010d4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
    10d8: 94000000     	bl	0x10d8 <sensors_sensitivity_unregister+0x9c>
		00000000000010d8:  R_AARCH64_CALL26	kfree
    10dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    10e0: f9400bf5     	ldr	x21, [sp, #0x10]
    10e4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    10e8: d50323bf     	autiasp
    10ec: d65f03c0     	ret
