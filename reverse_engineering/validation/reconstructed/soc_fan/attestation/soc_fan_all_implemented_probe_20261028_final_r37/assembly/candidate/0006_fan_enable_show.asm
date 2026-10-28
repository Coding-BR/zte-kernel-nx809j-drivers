
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010f4 <fan_enable_show>:
    10f4: d503233f     	paciasp
    10f8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    10fc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1100: 910003fd     	mov	x29, sp
    1104: 90000014     	adrp	x20, 0x1000 <fan_level_store+0x54>
		0000000000001104:  R_AARCH64_ADR_PREL_PG_HI21	chip
    1108: aa0203f3     	mov	x19, x2
    110c: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		000000000000110c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95c
    1110: 91000000     	add	x0, x0, #0x0
		0000000000001110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95c
    1114: f9400288     	ldr	x8, [x20]
		0000000000001114:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1118: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		0000000000001118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    111c: 91000021     	add	x1, x1, #0x0
		000000000000111c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    1120: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		0000000000001120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x842
    1124: 91000042     	add	x2, x2, #0x0
		0000000000001124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x842
    1128: f9400508     	ldr	x8, [x8, #0x8]
    112c: 52802603     	mov	w3, #0x130              // =304
    1130: 39403104     	ldrb	w4, [x8, #0xc]
    1134: 94000000     	bl	0x1134 <fan_enable_show+0x40>
		0000000000001134:  R_AARCH64_CALL26	_printk
    1138: f9400288     	ldr	x8, [x20]
		0000000000001138:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    113c: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		000000000000113c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd
    1140: 91000021     	add	x1, x1, #0x0
		0000000000001140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd
    1144: aa1303e0     	mov	x0, x19
    1148: f9400508     	ldr	x8, [x8, #0x8]
    114c: 39403102     	ldrb	w2, [x8, #0xc]
    1150: 94000000     	bl	0x1150 <fan_enable_show+0x5c>
		0000000000001150:  R_AARCH64_CALL26	sprintf
    1154: 93407c00     	sxtw	x0, w0
    1158: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    115c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1160: d50323bf     	autiasp
    1164: d65f03c0     	ret
