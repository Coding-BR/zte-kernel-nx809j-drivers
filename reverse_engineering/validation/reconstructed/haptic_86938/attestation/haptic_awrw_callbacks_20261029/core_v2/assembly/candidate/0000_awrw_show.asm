
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003ce8 <awrw_show>:
    3ce8: d503233f     	paciasp
    3cec: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    3cf0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    3cf4: a90257f6     	stp	x22, x21, [sp, #0x20]
    3cf8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3cfc: 910003fd     	mov	x29, sp
    3d00: f9404c16     	ldr	x22, [x0, #0x98]
    3d04: b9452ac8     	ldr	w8, [x22, #0x528]
    3d08: 7100051f     	cmp	w8, #0x1
    3d0c: 540004c1     	b.ne	0x3da4 <awrw_show+0xbc>
    3d10: f9429ac8     	ldr	x8, [x22, #0x530]
    3d14: b4000588     	cbz	x8, 0x3dc4 <awrw_show+0xdc>
    3d18: b9452ec8     	ldr	w8, [x22, #0x52c]
    3d1c: aa0203f3     	mov	x19, x2
    3d20: 34000248     	cbz	w8, 0x3d68 <awrw_show+0x80>
    3d24: aa1f03f5     	mov	x21, xzr
    3d28: 2a1f03f7     	mov	w23, wzr
    3d2c: 52820018     	mov	w24, #0x1000            // =4096
    3d30: 90000014     	adrp	x20, 0x3000 <f0_show+0xb4>
		0000000000003d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x385
    3d34: 91000294     	add	x20, x20, #0x0
		0000000000003d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x385
    3d38: f9429ac8     	ldr	x8, [x22, #0x530]
    3d3c: cb150301     	sub	x1, x24, x21
    3d40: 8b150260     	add	x0, x19, x21
    3d44: aa1403e2     	mov	x2, x20
    3d48: 3877c903     	ldrb	w3, [x8, w23, sxtw]
    3d4c: 94000000     	bl	0x3d4c <awrw_show+0x64>
		0000000000003d4c:  R_AARCH64_CALL26	snprintf
    3d50: b9452ec8     	ldr	w8, [x22, #0x52c]
    3d54: 110006f7     	add	w23, w23, #0x1
    3d58: 8b20c2b5     	add	x21, x21, w0, sxtw
    3d5c: 6b0802ff     	cmp	w23, w8
    3d60: 54fffec3     	b.lo	0x3d38 <awrw_show+0x50>
    3d64: 14000002     	b	0x3d6c <awrw_show+0x84>
    3d68: aa1f03f5     	mov	x21, xzr
    3d6c: 8b150268     	add	x8, x19, x21
    3d70: 52820009     	mov	w9, #0x1000             // =4096
    3d74: 90000002     	adrp	x2, 0x3000 <f0_show+0xb4>
		0000000000003d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x758
    3d78: 91000042     	add	x2, x2, #0x0
		0000000000003d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x758
    3d7c: d1000500     	sub	x0, x8, #0x1
    3d80: cb150121     	sub	x1, x9, x21
    3d84: 94000000     	bl	0x3d84 <awrw_show+0x9c>
		0000000000003d84:  R_AARCH64_CALL26	snprintf
    3d88: 8b20c2a0     	add	x0, x21, w0, sxtw
    3d8c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3d90: a94257f6     	ldp	x22, x21, [sp, #0x20]
    3d94: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    3d98: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    3d9c: d50323bf     	autiasp
    3da0: d65f03c0     	ret
    3da4: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf1
    3da8: 91000000     	add	x0, x0, #0x0
		0000000000003da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf1
    3dac: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3db0: 91000021     	add	x1, x1, #0x0
		0000000000003db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3db4: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd70
    3db8: 91000063     	add	x3, x3, #0x0
		0000000000003db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd70
    3dbc: 52818a02     	mov	w2, #0xc50              // =3152
    3dc0: 14000008     	b	0x3de0 <awrw_show+0xf8>
    3dc4: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x790
    3dc8: 91000000     	add	x0, x0, #0x0
		0000000000003dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x790
    3dcc: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3dd0: 91000021     	add	x1, x1, #0x0
		0000000000003dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3dd4: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd70
    3dd8: 91000063     	add	x3, x3, #0x0
		0000000000003dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd70
    3ddc: 52818a82     	mov	w2, #0xc54              // =3156
    3de0: 94000000     	bl	0x3de0 <awrw_show+0xf8>
		0000000000003de0:  R_AARCH64_CALL26	_printk
    3de4: 92800420     	mov	x0, #-0x22              // =-34
    3de8: 17ffffe9     	b	0x3d8c <awrw_show+0xa4>
