
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fac <fan_level_store>:
     fac: d503233f     	paciasp
     fb0: d100c3ff     	sub	sp, sp, #0x30
     fb4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     fb8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     fbc: 910043fd     	add	x29, sp, #0x10
     fc0: d5384108     	mrs	x8, SP_EL0
     fc4: aa0203e0     	mov	x0, x2
     fc8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bd
     fcc: 91000021     	add	x1, x1, #0x0
		0000000000000fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bd
     fd0: f9438908     	ldr	x8, [x8, #0x710]
     fd4: 910013e2     	add	x2, sp, #0x4
     fd8: aa0303f3     	mov	x19, x3
     fdc: f90007e8     	str	x8, [sp, #0x8]
     fe0: b90007ff     	str	wzr, [sp, #0x4]
     fe4: 94000000     	bl	0xfe4 <fan_level_store+0x38>
		0000000000000fe4:  R_AARCH64_CALL26	sscanf
     fe8: b94007e4     	ldr	w4, [sp, #0x4]
     fec: 7100189f     	cmp	w4, #0x6
     ff0: 540003a2     	b.hs	0x1064 <fan_level_store+0xb8>
     ff4: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000ff4:  R_AARCH64_ADR_PREL_PG_HI21	chip
     ff8: f9400288     	ldr	x8, [x20]
		0000000000000ff8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ffc: f9400509     	ldr	x9, [x8, #0x8]
    1000: 3940312a     	ldrb	w10, [x9, #0xc]
    1004: 3600048a     	tbz	w10, #0x0, 0x1094 <fan_level_store+0xe8>
    1008: 91006100     	add	x0, x8, #0x18
    100c: 94000000     	bl	0x100c <fan_level_store+0x60>
		000000000000100c:  R_AARCH64_CALL26	mutex_lock
    1010: f9400288     	ldr	x8, [x20]
		0000000000001010:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1014: b94007e1     	ldr	w1, [sp, #0x4]
    1018: f9400500     	ldr	x0, [x8, #0x8]
    101c: 97ffff40     	bl	0xd1c <fan_level_set>
    1020: f9400288     	ldr	x8, [x20]
		0000000000001020:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1024: 2a0003f4     	mov	w20, w0
    1028: 91006100     	add	x0, x8, #0x18
    102c: 94000000     	bl	0x102c <fan_level_store+0x80>
		000000000000102c:  R_AARCH64_CALL26	mutex_unlock
    1030: 34000494     	cbz	w20, 0x10c0 <fan_level_store+0x114>
    1034: 93407e93     	sxtw	x19, w20
    1038: d5384108     	mrs	x8, SP_EL0
    103c: f9438908     	ldr	x8, [x8, #0x710]
    1040: f94007e9     	ldr	x9, [sp, #0x8]
    1044: eb09011f     	cmp	x8, x9
    1048: 54000521     	b.ne	0x10ec <fan_level_store+0x140>
    104c: aa1303e0     	mov	x0, x19
    1050: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1054: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1058: 9100c3ff     	add	sp, sp, #0x30
    105c: d50323bf     	autiasp
    1060: d65f03c0     	ret
    1064: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		0000000000001064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    1068: 91000000     	add	x0, x0, #0x0
		0000000000001068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    106c: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		000000000000106c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    1070: 91000021     	add	x1, x1, #0x0
		0000000000001070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    1074: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		0000000000001074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c0
    1078: 91000042     	add	x2, x2, #0x0
		0000000000001078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c0
    107c: 52802ca3     	mov	w3, #0x165              // =357
    1080: 2a1f03e5     	mov	w5, wzr
    1084: 528000a6     	mov	w6, #0x5                // =5
    1088: 94000000     	bl	0x1088 <fan_level_store+0xdc>
		0000000000001088:  R_AARCH64_CALL26	_printk
    108c: 928002b3     	mov	x19, #-0x16             // =-22
    1090: 17ffffea     	b	0x1038 <fan_level_store+0x8c>
    1094: 39000524     	strb	w4, [x9, #0x1]
    1098: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		0000000000001098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x314
    109c: 91000000     	add	x0, x0, #0x0
		000000000000109c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x314
    10a0: b94007e4     	ldr	w4, [sp, #0x4]
    10a4: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		00000000000010a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    10a8: 91000021     	add	x1, x1, #0x0
		00000000000010a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    10ac: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		00000000000010ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c0
    10b0: 91000042     	add	x2, x2, #0x0
		00000000000010b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c0
    10b4: 52802d63     	mov	w3, #0x16b              // =363
    10b8: 94000000     	bl	0x10b8 <fan_level_store+0x10c>
		00000000000010b8:  R_AARCH64_CALL26	_printk
    10bc: 17ffffdf     	b	0x1038 <fan_level_store+0x8c>
    10c0: b94007e4     	ldr	w4, [sp, #0x4]
    10c4: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		00000000000010c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb05
    10c8: 91000000     	add	x0, x0, #0x0
		00000000000010c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb05
    10cc: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		00000000000010cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    10d0: 91000021     	add	x1, x1, #0x0
		00000000000010d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    10d4: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		00000000000010d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c0
    10d8: 91000042     	add	x2, x2, #0x0
		00000000000010d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c0
    10dc: 52802ea3     	mov	w3, #0x175              // =373
    10e0: 2a1f03e5     	mov	w5, wzr
    10e4: 94000000     	bl	0x10e4 <fan_level_store+0x138>
		00000000000010e4:  R_AARCH64_CALL26	_printk
    10e8: 17ffffd4     	b	0x1038 <fan_level_store+0x8c>
    10ec: 94000000     	bl	0x10ec <fan_level_store+0x140>
		00000000000010ec:  R_AARCH64_CALL26	__stack_chk_fail
