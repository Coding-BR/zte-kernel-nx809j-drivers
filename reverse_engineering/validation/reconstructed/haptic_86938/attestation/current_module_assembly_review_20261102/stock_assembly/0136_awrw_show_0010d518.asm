
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a6f8 <awrw_show>:
    a6f8: d503233f     	paciasp
    a6fc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    a700: a9015ff8     	stp	x24, x23, [sp, #0x10]
    a704: a90257f6     	stp	x22, x21, [sp, #0x20]
    a708: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a70c: 910003fd     	mov	x29, sp
    a710: f9404c16     	ldr	x22, [x0, #0x98]
    a714: b9452ac8     	ldr	w8, [x22, #0x528]
    a718: 7100051f     	cmp	w8, #0x1
    a71c: 540004c1     	b.ne	0xa7b4 <awrw_show+0xbc>
    a720: f9429ac8     	ldr	x8, [x22, #0x530]
    a724: b4000588     	cbz	x8, 0xa7d4 <awrw_show+0xdc>
    a728: b9452ec8     	ldr	w8, [x22, #0x52c]
    a72c: aa0203f3     	mov	x19, x2
    a730: 34000248     	cbz	w8, 0xa778 <awrw_show+0x80>
    a734: aa1f03f5     	mov	x21, xzr
    a738: 2a1f03f7     	mov	w23, wzr
    a73c: 52820018     	mov	w24, #0x1000            // =4096
    a740: 90000014     	adrp	x20, 0xa000 <haptic_audio_store+0x84>
		000000000000a740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1e
    a744: 91000294     	add	x20, x20, #0x0
		000000000000a744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1e
    a748: f9429ac8     	ldr	x8, [x22, #0x530]
    a74c: cb150301     	sub	x1, x24, x21
    a750: 8b150260     	add	x0, x19, x21
    a754: aa1403e2     	mov	x2, x20
    a758: 3877c903     	ldrb	w3, [x8, w23, sxtw]
    a75c: 94000000     	bl	0xa75c <awrw_show+0x64>
		000000000000a75c:  R_AARCH64_CALL26	snprintf
    a760: b9452ec8     	ldr	w8, [x22, #0x52c]
    a764: 110006f7     	add	w23, w23, #0x1
    a768: 8b20c2b5     	add	x21, x21, w0, sxtw
    a76c: 6b0802ff     	cmp	w23, w8
    a770: 54fffec3     	b.lo	0xa748 <awrw_show+0x50>
    a774: 14000002     	b	0xa77c <awrw_show+0x84>
    a778: aa1f03f5     	mov	x21, xzr
    a77c: 8b150268     	add	x8, x19, x21
    a780: 52820009     	mov	w9, #0x1000             // =4096
    a784: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000a784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b42
    a788: 91000042     	add	x2, x2, #0x0
		000000000000a788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b42
    a78c: d1000500     	sub	x0, x8, #0x1
    a790: cb150121     	sub	x1, x9, x21
    a794: 94000000     	bl	0xa794 <awrw_show+0x9c>
		000000000000a794:  R_AARCH64_CALL26	snprintf
    a798: 8b20c2a0     	add	x0, x21, w0, sxtw
    a79c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    a7a0: a94257f6     	ldp	x22, x21, [sp, #0x20]
    a7a4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    a7a8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    a7ac: d50323bf     	autiasp
    a7b0: d65f03c0     	ret
    a7b4: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a7b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x304
    a7b8: 91000000     	add	x0, x0, #0x0
		000000000000a7b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x304
    a7bc: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a7bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a7c0: 91000021     	add	x1, x1, #0x0
		000000000000a7c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a7c4: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a7c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bdb
    a7c8: 91000063     	add	x3, x3, #0x0
		000000000000a7c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bdb
    a7cc: 52818a02     	mov	w2, #0xc50              // =3152
    a7d0: 14000008     	b	0xa7f0 <awrw_show+0xf8>
    a7d4: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000a7d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b79
    a7d8: 91000000     	add	x0, x0, #0x0
		000000000000a7d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b79
    a7dc: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a7dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    a7e0: 91000021     	add	x1, x1, #0x0
		000000000000a7e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    a7e4: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000a7e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bdb
    a7e8: 91000063     	add	x3, x3, #0x0
		000000000000a7e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bdb
    a7ec: 52818a82     	mov	w2, #0xc54              // =3156
    a7f0: 94000000     	bl	0xa7f0 <awrw_show+0xf8>
		000000000000a7f0:  R_AARCH64_CALL26	_printk
    a7f4: 92800420     	mov	x0, #-0x22              // =-34
    a7f8: 17ffffe9     	b	0xa79c <awrw_show+0xa4>
