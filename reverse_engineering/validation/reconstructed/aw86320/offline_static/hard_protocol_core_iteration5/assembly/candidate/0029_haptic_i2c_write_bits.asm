
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000030f8 <haptic_i2c_write_bits>:
    30f8: d503233f     	paciasp
    30fc: d10103ff     	sub	sp, sp, #0x40
    3100: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3104: a90257f6     	stp	x22, x21, [sp, #0x20]
    3108: a9034ff4     	stp	x20, x19, [sp, #0x30]
    310c: 910043fd     	add	x29, sp, #0x10
    3110: d5384108     	mrs	x8, SP_EL0
    3114: 2a0203f6     	mov	w22, w2
    3118: 910013e2     	add	x2, sp, #0x4
    311c: f9438908     	ldr	x8, [x8, #0x710]
    3120: 2a0303f5     	mov	w21, w3
    3124: 2a0103f3     	mov	w19, w1
    3128: aa0003f4     	mov	x20, x0
    312c: f90007e8     	str	x8, [sp, #0x8]
    3130: 79000bff     	strh	wzr, [sp, #0x4]
    3134: 97fff530     	bl	0x5f4 <haptic_i2c_read>
		0000000000003134:  R_AARCH64_CALL26	haptic_i2c_read
    3138: 37f80280     	tbnz	w0, #0x1f, 0x3188 <haptic_i2c_write_bits+0x90>
    313c: 79400be8     	ldrh	w8, [sp, #0x4]
    3140: 0a3602a9     	bic	w9, w21, w22
    3144: aa1403e0     	mov	x0, x20
    3148: 2a1303e1     	mov	w1, w19
    314c: 0a160108     	and	w8, w8, w22
    3150: 2a090102     	orr	w2, w8, w9
    3154: 97fff4ba     	bl	0x43c <haptic_i2c_write>
		0000000000003154:  R_AARCH64_CALL26	haptic_i2c_write
    3158: 37f802a0     	tbnz	w0, #0x1f, 0x31ac <haptic_i2c_write_bits+0xb4>
    315c: d5384108     	mrs	x8, SP_EL0
    3160: f9438908     	ldr	x8, [x8, #0x710]
    3164: f94007e9     	ldr	x9, [sp, #0x8]
    3168: eb09011f     	cmp	x8, x9
    316c: 54000341     	b.ne	0x31d4 <haptic_i2c_write_bits+0xdc>
    3170: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3174: a94257f6     	ldp	x22, x21, [sp, #0x20]
    3178: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    317c: 910103ff     	add	sp, sp, #0x40
    3180: d50323bf     	autiasp
    3184: d65f03c0     	ret
    3188: 2a0003e4     	mov	w4, w0
    318c: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		000000000000318c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xc38
    3190: 91000000     	add	x0, x0, #0x0
		0000000000003190:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xc38
    3194: 90000001     	adrp	x1, 0x3000 <ram_load+0x8d0>
		0000000000003194:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    3198: 91000021     	add	x1, x1, #0x0
		0000000000003198:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    319c: 90000003     	adrp	x3, 0x3000 <ram_load+0x8d0>
		000000000000319c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4cd
    31a0: 91000063     	add	x3, x3, #0x0
		00000000000031a0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4cd
    31a4: 528015e2     	mov	w2, #0xaf               // =175
    31a8: 14000009     	b	0x31cc <haptic_i2c_write_bits+0xd4>
    31ac: 2a0003e4     	mov	w4, w0
    31b0: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		00000000000031b0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xea8
    31b4: 91000000     	add	x0, x0, #0x0
		00000000000031b4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xea8
    31b8: 90000001     	adrp	x1, 0x3000 <ram_load+0x8d0>
		00000000000031b8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    31bc: 91000021     	add	x1, x1, #0x0
		00000000000031bc:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    31c0: 90000003     	adrp	x3, 0x3000 <ram_load+0x8d0>
		00000000000031c0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4cd
    31c4: 91000063     	add	x3, x3, #0x0
		00000000000031c4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4cd
    31c8: 52801702     	mov	w2, #0xb8               // =184
    31cc: 94000000     	bl	0x31cc <haptic_i2c_write_bits+0xd4>
		00000000000031cc:  R_AARCH64_CALL26	_printk
    31d0: 17ffffe3     	b	0x315c <haptic_i2c_write_bits+0x64>
    31d4: 94000000     	bl	0x31d4 <haptic_i2c_write_bits+0xdc>
		00000000000031d4:  R_AARCH64_CALL26	__stack_chk_fail
