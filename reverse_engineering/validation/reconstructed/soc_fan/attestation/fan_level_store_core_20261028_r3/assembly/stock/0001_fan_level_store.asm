
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001024 <fan_level_store>:
    1024: d503233f     	paciasp
    1028: d100c3ff     	sub	sp, sp, #0x30
    102c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1030: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1034: 910043fd     	add	x29, sp, #0x10
    1038: d5384108     	mrs	x8, SP_EL0
    103c: aa0203e0     	mov	x0, x2
    1040: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		0000000000001040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e5
    1044: 91000021     	add	x1, x1, #0x0
		0000000000001044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e5
    1048: f9438908     	ldr	x8, [x8, #0x710]
    104c: 910013e2     	add	x2, sp, #0x4
    1050: aa0303f3     	mov	x19, x3
    1054: f90007e8     	str	x8, [sp, #0x8]
    1058: b90007ff     	str	wzr, [sp, #0x4]
    105c: 94000000     	bl	0x105c <fan_level_store+0x38>
		000000000000105c:  R_AARCH64_CALL26	sscanf
    1060: b94007e4     	ldr	w4, [sp, #0x4]
    1064: 7100189f     	cmp	w4, #0x6
    1068: 540003a2     	b.hs	0x10dc <fan_level_store+0xb8>
    106c: 90000014     	adrp	x20, 0x1000 <fan_level_show+0x28>
		000000000000106c:  R_AARCH64_ADR_PREL_PG_HI21	chip
    1070: f9400288     	ldr	x8, [x20]
		0000000000001070:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1074: f9400509     	ldr	x9, [x8, #0x8]
    1078: 3940312a     	ldrb	w10, [x9, #0xc]
    107c: 3600048a     	tbz	w10, #0x0, 0x110c <fan_level_store+0xe8>
    1080: 91006100     	add	x0, x8, #0x18
    1084: 94000000     	bl	0x1084 <fan_level_store+0x60>
		0000000000001084:  R_AARCH64_CALL26	mutex_lock
    1088: f9400288     	ldr	x8, [x20]
		0000000000001088:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    108c: b94007e1     	ldr	w1, [sp, #0x4]
    1090: f9400500     	ldr	x0, [x8, #0x8]
    1094: 97ffff40     	bl	0xd94 <fan_level_set>
    1098: f9400288     	ldr	x8, [x20]
		0000000000001098:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    109c: 2a0003f4     	mov	w20, w0
    10a0: 91006100     	add	x0, x8, #0x18
    10a4: 94000000     	bl	0x10a4 <fan_level_store+0x80>
		00000000000010a4:  R_AARCH64_CALL26	mutex_unlock
    10a8: 34000494     	cbz	w20, 0x1138 <fan_level_store+0x114>
    10ac: 93407e93     	sxtw	x19, w20
    10b0: d5384108     	mrs	x8, SP_EL0
    10b4: f9438908     	ldr	x8, [x8, #0x710]
    10b8: f94007e9     	ldr	x9, [sp, #0x8]
    10bc: eb09011f     	cmp	x8, x9
    10c0: 54000521     	b.ne	0x1164 <fan_level_store+0x140>
    10c4: aa1303e0     	mov	x0, x19
    10c8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    10cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    10d0: 9100c3ff     	add	sp, sp, #0x30
    10d4: d50323bf     	autiasp
    10d8: d65f03c0     	ret
    10dc: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		00000000000010dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    10e0: 91000000     	add	x0, x0, #0x0
		00000000000010e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    10e4: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		00000000000010e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    10e8: 91000021     	add	x1, x1, #0x0
		00000000000010e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    10ec: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		00000000000010ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8
    10f0: 91000042     	add	x2, x2, #0x0
		00000000000010f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8
    10f4: 52802ca3     	mov	w3, #0x165              // =357
    10f8: 2a1f03e5     	mov	w5, wzr
    10fc: 528000a6     	mov	w6, #0x5                // =5
    1100: 94000000     	bl	0x1100 <fan_level_store+0xdc>
		0000000000001100:  R_AARCH64_CALL26	_printk
    1104: 928002b3     	mov	x19, #-0x16             // =-22
    1108: 17ffffea     	b	0x10b0 <fan_level_store+0x8c>
    110c: 39000524     	strb	w4, [x9, #0x1]
    1110: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		0000000000001110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x324
    1114: 91000000     	add	x0, x0, #0x0
		0000000000001114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x324
    1118: b94007e4     	ldr	w4, [sp, #0x4]
    111c: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		000000000000111c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1120: 91000021     	add	x1, x1, #0x0
		0000000000001120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1124: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		0000000000001124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8
    1128: 91000042     	add	x2, x2, #0x0
		0000000000001128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8
    112c: 52802d63     	mov	w3, #0x16b              // =363
    1130: 94000000     	bl	0x1130 <fan_level_store+0x10c>
		0000000000001130:  R_AARCH64_CALL26	_printk
    1134: 17ffffdf     	b	0x10b0 <fan_level_store+0x8c>
    1138: b94007e4     	ldr	w4, [sp, #0x4]
    113c: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		000000000000113c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb21
    1140: 91000000     	add	x0, x0, #0x0
		0000000000001140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb21
    1144: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		0000000000001144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1148: 91000021     	add	x1, x1, #0x0
		0000000000001148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    114c: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		000000000000114c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8
    1150: 91000042     	add	x2, x2, #0x0
		0000000000001150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8
    1154: 52802ea3     	mov	w3, #0x175              // =373
    1158: 2a1f03e5     	mov	w5, wzr
    115c: 94000000     	bl	0x115c <fan_level_store+0x138>
		000000000000115c:  R_AARCH64_CALL26	_printk
    1160: 17ffffd4     	b	0x10b0 <fan_level_store+0x8c>
    1164: 94000000     	bl	0x1164 <fan_level_store+0x140>
		0000000000001164:  R_AARCH64_CALL26	__stack_chk_fail
