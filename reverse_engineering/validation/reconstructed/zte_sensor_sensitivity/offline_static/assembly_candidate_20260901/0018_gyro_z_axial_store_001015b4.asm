
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f98 <gyro_z_axial_store>:
     f98: d503233f     	paciasp
     f9c: d100c3ff     	sub	sp, sp, #0x30
     fa0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     fa4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     fa8: 910043fd     	add	x29, sp, #0x10
     fac: d5384109     	mrs	x9, SP_EL0
     fb0: aa0203e8     	mov	x8, x2
     fb4: 910013e2     	add	x2, sp, #0x4
     fb8: f9438929     	ldr	x9, [x9, #0x710]
     fbc: 2a1f03e1     	mov	w1, wzr
     fc0: aa0303f3     	mov	x19, x3
     fc4: f90007e9     	str	x9, [sp, #0x8]
     fc8: f9404c14     	ldr	x20, [x0, #0x98]
     fcc: aa0803e0     	mov	x0, x8
     fd0: b90007ff     	str	wzr, [sp, #0x4]
     fd4: 94000000     	bl	0xfd4 <gyro_z_axial_store+0x3c>
		0000000000000fd4:  R_AARCH64_CALL26	kstrtoint
     fd8: 34000060     	cbz	w0, 0xfe4 <gyro_z_axial_store+0x4c>
     fdc: 928002b3     	mov	x19, #-0x16             // =-22
     fe0: 14000009     	b	0x1004 <gyro_z_axial_store+0x6c>
     fe4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000fe4:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     fe8: b9400108     	ldr	w8, [x8]
		0000000000000fe8:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     fec: 7100091f     	cmp	w8, #0x2
     ff0: 5400020a     	b.ge	0x1030 <gyro_z_axial_store+0x98>
     ff4: b94007e8     	ldr	w8, [sp, #0x4]
     ff8: 7103251f     	cmp	w8, #0xc9
     ffc: 540002e2     	b.hs	0x1058 <gyro_z_axial_store+0xc0>
    1000: b9005e88     	str	w8, [x20, #0x5c]
    1004: d5384108     	mrs	x8, SP_EL0
    1008: f9438908     	ldr	x8, [x8, #0x710]
    100c: f94007e9     	ldr	x9, [sp, #0x8]
    1010: eb09011f     	cmp	x8, x9
    1014: 54000361     	b.ne	0x1080 <gyro_z_axial_store+0xe8>
    1018: aa1303e0     	mov	x0, x19
    101c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1020: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1024: 9100c3ff     	add	sp, sp, #0x30
    1028: d50323bf     	autiasp
    102c: d65f03c0     	ret
    1030: b94007e4     	ldr	w4, [sp, #0x4]
    1034: 90000000     	adrp	x0, 0x1000 <gyro_z_axial_store+0x68>
		0000000000001034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
    1038: 91000000     	add	x0, x0, #0x0
		0000000000001038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
    103c: 90000001     	adrp	x1, 0x1000 <gyro_z_axial_store+0x68>
		000000000000103c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1040: 91000021     	add	x1, x1, #0x0
		0000000000001040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1044: 90000002     	adrp	x2, 0x1000 <gyro_z_axial_store+0x68>
		0000000000001044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2eb
    1048: 91000042     	add	x2, x2, #0x0
		0000000000001048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2eb
    104c: 52800f03     	mov	w3, #0x78               // =120
    1050: 94000000     	bl	0x1050 <gyro_z_axial_store+0xb8>
		0000000000001050:  R_AARCH64_CALL26	_printk
    1054: 17ffffe8     	b	0xff4 <gyro_z_axial_store+0x5c>
    1058: 90000000     	adrp	x0, 0x1000 <gyro_z_axial_store+0x68>
		0000000000001058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22b
    105c: 91000000     	add	x0, x0, #0x0
		000000000000105c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22b
    1060: 90000001     	adrp	x1, 0x1000 <gyro_z_axial_store+0x68>
		0000000000001060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1064: 91000021     	add	x1, x1, #0x0
		0000000000001064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1068: 90000002     	adrp	x2, 0x1000 <gyro_z_axial_store+0x68>
		0000000000001068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2eb
    106c: 91000042     	add	x2, x2, #0x0
		000000000000106c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2eb
    1070: 52802cc3     	mov	w3, #0x166              // =358
    1074: 94000000     	bl	0x1074 <gyro_z_axial_store+0xdc>
		0000000000001074:  R_AARCH64_CALL26	_printk
    1078: 928002b3     	mov	x19, #-0x16             // =-22
    107c: 17ffffe2     	b	0x1004 <gyro_z_axial_store+0x6c>
    1080: 94000000     	bl	0x1080 <gyro_z_axial_store+0xe8>
		0000000000001080:  R_AARCH64_CALL26	__stack_chk_fail
