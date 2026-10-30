
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001004 <gyro_z_axial_store>:
    1004: d503233f     	paciasp
    1008: d100c3ff     	sub	sp, sp, #0x30
    100c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1010: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1014: 910043fd     	add	x29, sp, #0x10
    1018: d5384109     	mrs	x9, SP_EL0
    101c: aa0203e8     	mov	x8, x2
    1020: 910013e2     	add	x2, sp, #0x4
    1024: f9438929     	ldr	x9, [x9, #0x710]
    1028: 2a1f03e1     	mov	w1, wzr
    102c: aa0303f3     	mov	x19, x3
    1030: f90007e9     	str	x9, [sp, #0x8]
    1034: f9404c14     	ldr	x20, [x0, #0x98]
    1038: aa0803e0     	mov	x0, x8
    103c: b90007ff     	str	wzr, [sp, #0x4]
    1040: 94000000     	bl	0x1040 <gyro_z_axial_store+0x3c>
		0000000000001040:  R_AARCH64_CALL26	kstrtoint
    1044: 34000060     	cbz	w0, 0x1050 <gyro_z_axial_store+0x4c>
    1048: 928002b3     	mov	x19, #-0x16             // =-22
    104c: 14000009     	b	0x1070 <gyro_z_axial_store+0x6c>
    1050: 90000008     	adrp	x8, 0x1000 <gyro_z_axial_show+0x80>
		0000000000001050:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
    1054: b9400108     	ldr	w8, [x8]
		0000000000001054:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
    1058: 7100091f     	cmp	w8, #0x2
    105c: 5400020a     	b.ge	0x109c <gyro_z_axial_store+0x98>
    1060: b94007e8     	ldr	w8, [sp, #0x4]
    1064: 7103251f     	cmp	w8, #0xc9
    1068: 540002e2     	b.hs	0x10c4 <gyro_z_axial_store+0xc0>
    106c: b9005e88     	str	w8, [x20, #0x5c]
    1070: d5384108     	mrs	x8, SP_EL0
    1074: f9438908     	ldr	x8, [x8, #0x710]
    1078: f94007e9     	ldr	x9, [sp, #0x8]
    107c: eb09011f     	cmp	x8, x9
    1080: 54000361     	b.ne	0x10ec <gyro_z_axial_store+0xe8>
    1084: aa1303e0     	mov	x0, x19
    1088: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    108c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1090: 9100c3ff     	add	sp, sp, #0x30
    1094: d50323bf     	autiasp
    1098: d65f03c0     	ret
    109c: b94007e4     	ldr	w4, [sp, #0x4]
    10a0: 90000000     	adrp	x0, 0x1000 <gyro_z_axial_show+0x80>
		00000000000010a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x289
    10a4: 91000000     	add	x0, x0, #0x0
		00000000000010a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x289
    10a8: 90000001     	adrp	x1, 0x1000 <gyro_z_axial_show+0x80>
		00000000000010a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
    10ac: 91000021     	add	x1, x1, #0x0
		00000000000010ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
    10b0: 90000002     	adrp	x2, 0x1000 <gyro_z_axial_show+0x80>
		00000000000010b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dd
    10b4: 91000042     	add	x2, x2, #0x0
		00000000000010b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dd
    10b8: 52802703     	mov	w3, #0x138              // =312
    10bc: 94000000     	bl	0x10bc <gyro_z_axial_store+0xb8>
		00000000000010bc:  R_AARCH64_CALL26	_printk
    10c0: 17ffffe8     	b	0x1060 <gyro_z_axial_store+0x5c>
    10c4: 90000000     	adrp	x0, 0x1000 <gyro_z_axial_show+0x80>
		00000000000010c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
    10c8: 91000000     	add	x0, x0, #0x0
		00000000000010c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
    10cc: 90000001     	adrp	x1, 0x1000 <gyro_z_axial_show+0x80>
		00000000000010cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
    10d0: 91000021     	add	x1, x1, #0x0
		00000000000010d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
    10d4: 90000002     	adrp	x2, 0x1000 <gyro_z_axial_show+0x80>
		00000000000010d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dd
    10d8: 91000042     	add	x2, x2, #0x0
		00000000000010d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dd
    10dc: 52802743     	mov	w3, #0x13a              // =314
    10e0: 94000000     	bl	0x10e0 <gyro_z_axial_store+0xdc>
		00000000000010e0:  R_AARCH64_CALL26	_printk
    10e4: 928002b3     	mov	x19, #-0x16             // =-22
    10e8: 17ffffe2     	b	0x1070 <gyro_z_axial_store+0x6c>
    10ec: 94000000     	bl	0x10ec <gyro_z_axial_store+0xe8>
		00000000000010ec:  R_AARCH64_CALL26	__stack_chk_fail
