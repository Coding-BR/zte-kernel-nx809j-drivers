
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000059e0 <seq_show>:
    59e0: d503233f     	paciasp
    59e4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    59e8: f9000bf7     	str	x23, [sp, #0x10]
    59ec: a90257f6     	stp	x22, x21, [sp, #0x20]
    59f0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    59f4: 910003fd     	mov	x29, sp
    59f8: f9404c15     	ldr	x21, [x0, #0x98]
    59fc: 52800101     	mov	w1, #0x8                // =8
    5a00: aa0203f3     	mov	x19, x2
    5a04: f94292a8     	ldr	x8, [x21, #0x520]
    5a08: d102a2a0     	sub	x0, x21, #0xa8
    5a0c: f9409108     	ldr	x8, [x8, #0x120]
    5a10: b85fc110     	ldur	w16, [x8, #-0x4]
    5a14: 728dd2b1     	movk	w17, #0x6e95
    5a18: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    5a1c: 6b11021f     	cmp	w16, w17
    5a20: 54000040     	b.eq	0x5a28 <seq_show+0x48>
    5a24: d4304500     	brk	#0x8228
    5a28: d63f0100     	blr	x8
    5a2c: 385762a4     	ldurb	w4, [x21, #-0x8a]
    5a30: 90000014     	adrp	x20, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x471
    5a34: 91000294     	add	x20, x20, #0x0
		0000000000005a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x471
    5a38: aa1303e0     	mov	x0, x19
    5a3c: 52820001     	mov	w1, #0x1000             // =4096
    5a40: aa1403e2     	mov	x2, x20
    5a44: 52800023     	mov	w3, #0x1                // =1
    5a48: 52820016     	mov	w22, #0x1000            // =4096
    5a4c: 94000000     	bl	0x5a4c <seq_show+0x6c>
		0000000000005a4c:  R_AARCH64_CALL26	snprintf
    5a50: 93407c17     	sxtw	x23, w0
    5a54: 385772a4     	ldurb	w4, [x21, #-0x89]
    5a58: aa1403e2     	mov	x2, x20
    5a5c: 52800043     	mov	w3, #0x2                // =2
    5a60: cb1702c1     	sub	x1, x22, x23
    5a64: 8b170260     	add	x0, x19, x23
    5a68: 94000000     	bl	0x5a68 <seq_show+0x88>
		0000000000005a68:  R_AARCH64_CALL26	snprintf
    5a6c: 8b20c2f7     	add	x23, x23, w0, sxtw
    5a70: 385782a4     	ldurb	w4, [x21, #-0x88]
    5a74: aa1403e2     	mov	x2, x20
    5a78: 52800063     	mov	w3, #0x3                // =3
    5a7c: cb1702c1     	sub	x1, x22, x23
    5a80: 8b170260     	add	x0, x19, x23
    5a84: 94000000     	bl	0x5a84 <seq_show+0xa4>
		0000000000005a84:  R_AARCH64_CALL26	snprintf
    5a88: 8b20c2f7     	add	x23, x23, w0, sxtw
    5a8c: 385792a4     	ldurb	w4, [x21, #-0x87]
    5a90: aa1403e2     	mov	x2, x20
    5a94: 52800083     	mov	w3, #0x4                // =4
    5a98: cb1702c1     	sub	x1, x22, x23
    5a9c: 8b170260     	add	x0, x19, x23
    5aa0: 94000000     	bl	0x5aa0 <seq_show+0xc0>
		0000000000005aa0:  R_AARCH64_CALL26	snprintf
    5aa4: 8b20c2f7     	add	x23, x23, w0, sxtw
    5aa8: 3857a2a4     	ldurb	w4, [x21, #-0x86]
    5aac: aa1403e2     	mov	x2, x20
    5ab0: 528000a3     	mov	w3, #0x5                // =5
    5ab4: cb1702c1     	sub	x1, x22, x23
    5ab8: 8b170260     	add	x0, x19, x23
    5abc: 94000000     	bl	0x5abc <seq_show+0xdc>
		0000000000005abc:  R_AARCH64_CALL26	snprintf
    5ac0: 8b20c2f7     	add	x23, x23, w0, sxtw
    5ac4: 3857b2a4     	ldurb	w4, [x21, #-0x85]
    5ac8: aa1403e2     	mov	x2, x20
    5acc: 528000c3     	mov	w3, #0x6                // =6
    5ad0: cb1702c1     	sub	x1, x22, x23
    5ad4: 8b170260     	add	x0, x19, x23
    5ad8: 94000000     	bl	0x5ad8 <seq_show+0xf8>
		0000000000005ad8:  R_AARCH64_CALL26	snprintf
    5adc: 8b20c2f7     	add	x23, x23, w0, sxtw
    5ae0: 3857c2a4     	ldurb	w4, [x21, #-0x84]
    5ae4: aa1403e2     	mov	x2, x20
    5ae8: 528000e3     	mov	w3, #0x7                // =7
    5aec: cb1702c1     	sub	x1, x22, x23
    5af0: 8b170260     	add	x0, x19, x23
    5af4: 94000000     	bl	0x5af4 <seq_show+0x114>
		0000000000005af4:  R_AARCH64_CALL26	snprintf
    5af8: 8b20c2f7     	add	x23, x23, w0, sxtw
    5afc: 3857d2a4     	ldurb	w4, [x21, #-0x83]
    5b00: aa1403e2     	mov	x2, x20
    5b04: 52800103     	mov	w3, #0x8                // =8
    5b08: cb1702c1     	sub	x1, x22, x23
    5b0c: 8b170260     	add	x0, x19, x23
    5b10: 94000000     	bl	0x5b10 <seq_show+0x130>
		0000000000005b10:  R_AARCH64_CALL26	snprintf
    5b14: 8b20c2e0     	add	x0, x23, w0, sxtw
    5b18: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    5b1c: f9400bf7     	ldr	x23, [sp, #0x10]
    5b20: a94257f6     	ldp	x22, x21, [sp, #0x20]
    5b24: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    5b28: d50323bf     	autiasp
    5b2c: d65f03c0     	ret
