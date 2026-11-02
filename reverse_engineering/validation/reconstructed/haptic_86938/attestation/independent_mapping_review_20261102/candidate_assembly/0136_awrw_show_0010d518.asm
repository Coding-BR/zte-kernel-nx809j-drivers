
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003ce8 <awrw_show>:
    3ce8: d503233f     	paciasp
    3cec: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    3cf0: a9015ff8     	stp	x24, x23, [sp, #0x10]
    3cf4: a90257f6     	stp	x22, x21, [sp, #0x20]
    3cf8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    3cfc: 910003fd     	mov	x29, sp
    3d00: f9404c15     	ldr	x21, [x0, #0x98]
    3d04: aa0203f3     	mov	x19, x2
    3d08: 910922a0     	add	x0, x21, #0x248
    3d0c: 94000000     	bl	0x3d0c <awrw_show+0x24>
		0000000000003d0c:  R_AARCH64_CALL26	mutex_lock
    3d10: b9452aa8     	ldr	w8, [x21, #0x528]
    3d14: 7100051f     	cmp	w8, #0x1
    3d18: 54000401     	b.ne	0x3d98 <awrw_show+0xb0>
    3d1c: f9429aa8     	ldr	x8, [x21, #0x530]
    3d20: b40004c8     	cbz	x8, 0x3db8 <awrw_show+0xd0>
    3d24: b9452ea8     	ldr	w8, [x21, #0x52c]
    3d28: 34000348     	cbz	w8, 0x3d90 <awrw_show+0xa8>
    3d2c: aa1f03f6     	mov	x22, xzr
    3d30: 2a1f03f7     	mov	w23, wzr
    3d34: 52820018     	mov	w24, #0x1000            // =4096
    3d38: 90000014     	adrp	x20, 0x3000 <f0_show+0xb4>
		0000000000003d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x670
    3d3c: 91000294     	add	x20, x20, #0x0
		0000000000003d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x670
    3d40: f9429aa8     	ldr	x8, [x21, #0x530]
    3d44: cb160301     	sub	x1, x24, x22
    3d48: 8b160260     	add	x0, x19, x22
    3d4c: aa1403e2     	mov	x2, x20
    3d50: 3877c903     	ldrb	w3, [x8, w23, sxtw]
    3d54: 94000000     	bl	0x3d54 <awrw_show+0x6c>
		0000000000003d54:  R_AARCH64_CALL26	snprintf
    3d58: b9452ea8     	ldr	w8, [x21, #0x52c]
    3d5c: 110006f7     	add	w23, w23, #0x1
    3d60: 8b20c2d6     	add	x22, x22, w0, sxtw
    3d64: 6b0802ff     	cmp	w23, w8
    3d68: 54fffec3     	b.lo	0x3d40 <awrw_show+0x58>
    3d6c: 8b160268     	add	x8, x19, x22
    3d70: 52820009     	mov	w9, #0x1000             // =4096
    3d74: 90000002     	adrp	x2, 0x3000 <f0_show+0xb4>
		0000000000003d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe72
    3d78: 91000042     	add	x2, x2, #0x0
		0000000000003d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe72
    3d7c: d1000500     	sub	x0, x8, #0x1
    3d80: cb160121     	sub	x1, x9, x22
    3d84: 94000000     	bl	0x3d84 <awrw_show+0x9c>
		0000000000003d84:  R_AARCH64_CALL26	snprintf
    3d88: 8b20c2d3     	add	x19, x22, w0, sxtw
    3d8c: 14000014     	b	0x3ddc <awrw_show+0xf4>
    3d90: aa1f03f3     	mov	x19, xzr
    3d94: 14000012     	b	0x3ddc <awrw_show+0xf4>
    3d98: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6
    3d9c: 91000000     	add	x0, x0, #0x0
		0000000000003d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6
    3da0: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3da4: 91000021     	add	x1, x1, #0x0
		0000000000003da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3da8: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fa
    3dac: 91000063     	add	x3, x3, #0x0
		0000000000003dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fa
    3db0: 52818a02     	mov	w2, #0xc50              // =3152
    3db4: 14000008     	b	0x3dd4 <awrw_show+0xec>
    3db8: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeaa
    3dbc: 91000000     	add	x0, x0, #0x0
		0000000000003dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeaa
    3dc0: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3dc4: 91000021     	add	x1, x1, #0x0
		0000000000003dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3dc8: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19fa
    3dcc: 91000063     	add	x3, x3, #0x0
		0000000000003dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19fa
    3dd0: 52818a82     	mov	w2, #0xc54              // =3156
    3dd4: 94000000     	bl	0x3dd4 <awrw_show+0xec>
		0000000000003dd4:  R_AARCH64_CALL26	_printk
    3dd8: 92800433     	mov	x19, #-0x22             // =-34
    3ddc: 910922a0     	add	x0, x21, #0x248
    3de0: 94000000     	bl	0x3de0 <awrw_show+0xf8>
		0000000000003de0:  R_AARCH64_CALL26	mutex_unlock
    3de4: aa1303e0     	mov	x0, x19
    3de8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3dec: a94257f6     	ldp	x22, x21, [sp, #0x20]
    3df0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    3df4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    3df8: d50323bf     	autiasp
    3dfc: d65f03c0     	ret
