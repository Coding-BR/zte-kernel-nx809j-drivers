
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005a10 <seq_show>:
    5a10: d503233f     	paciasp
    5a14: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    5a18: f9000bf7     	str	x23, [sp, #0x10]
    5a1c: a90257f6     	stp	x22, x21, [sp, #0x20]
    5a20: a9034ff4     	stp	x20, x19, [sp, #0x30]
    5a24: 910003fd     	mov	x29, sp
    5a28: f9404c15     	ldr	x21, [x0, #0x98]
    5a2c: 52800101     	mov	w1, #0x8                // =8
    5a30: aa0203f3     	mov	x19, x2
    5a34: f94292a8     	ldr	x8, [x21, #0x520]
    5a38: d102a2a0     	sub	x0, x21, #0xa8
    5a3c: f9409108     	ldr	x8, [x8, #0x120]
    5a40: b85fc110     	ldur	w16, [x8, #-0x4]
    5a44: 728dd2b1     	movk	w17, #0x6e95
    5a48: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    5a4c: 6b11021f     	cmp	w16, w17
    5a50: 54000040     	b.eq	0x5a58 <seq_show+0x48>
    5a54: d4304500     	brk	#0x8228
    5a58: d63f0100     	blr	x8
    5a5c: 385762a4     	ldurb	w4, [x21, #-0x8a]
    5a60: 90000014     	adrp	x20, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68b
    5a64: 91000294     	add	x20, x20, #0x0
		0000000000005a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68b
    5a68: aa1303e0     	mov	x0, x19
    5a6c: 52820001     	mov	w1, #0x1000             // =4096
    5a70: aa1403e2     	mov	x2, x20
    5a74: 52800023     	mov	w3, #0x1                // =1
    5a78: 52820016     	mov	w22, #0x1000            // =4096
    5a7c: 94000000     	bl	0x5a7c <seq_show+0x6c>
		0000000000005a7c:  R_AARCH64_CALL26	snprintf
    5a80: 93407c17     	sxtw	x23, w0
    5a84: 385772a4     	ldurb	w4, [x21, #-0x89]
    5a88: aa1403e2     	mov	x2, x20
    5a8c: 52800043     	mov	w3, #0x2                // =2
    5a90: cb1702c1     	sub	x1, x22, x23
    5a94: 8b170260     	add	x0, x19, x23
    5a98: 94000000     	bl	0x5a98 <seq_show+0x88>
		0000000000005a98:  R_AARCH64_CALL26	snprintf
    5a9c: 8b20c2f7     	add	x23, x23, w0, sxtw
    5aa0: 385782a4     	ldurb	w4, [x21, #-0x88]
    5aa4: aa1403e2     	mov	x2, x20
    5aa8: 52800063     	mov	w3, #0x3                // =3
    5aac: cb1702c1     	sub	x1, x22, x23
    5ab0: 8b170260     	add	x0, x19, x23
    5ab4: 94000000     	bl	0x5ab4 <seq_show+0xa4>
		0000000000005ab4:  R_AARCH64_CALL26	snprintf
    5ab8: 8b20c2f7     	add	x23, x23, w0, sxtw
    5abc: 385792a4     	ldurb	w4, [x21, #-0x87]
    5ac0: aa1403e2     	mov	x2, x20
    5ac4: 52800083     	mov	w3, #0x4                // =4
    5ac8: cb1702c1     	sub	x1, x22, x23
    5acc: 8b170260     	add	x0, x19, x23
    5ad0: 94000000     	bl	0x5ad0 <seq_show+0xc0>
		0000000000005ad0:  R_AARCH64_CALL26	snprintf
    5ad4: 8b20c2f7     	add	x23, x23, w0, sxtw
    5ad8: 3857a2a4     	ldurb	w4, [x21, #-0x86]
    5adc: aa1403e2     	mov	x2, x20
    5ae0: 528000a3     	mov	w3, #0x5                // =5
    5ae4: cb1702c1     	sub	x1, x22, x23
    5ae8: 8b170260     	add	x0, x19, x23
    5aec: 94000000     	bl	0x5aec <seq_show+0xdc>
		0000000000005aec:  R_AARCH64_CALL26	snprintf
    5af0: 8b20c2f7     	add	x23, x23, w0, sxtw
    5af4: 3857b2a4     	ldurb	w4, [x21, #-0x85]
    5af8: aa1403e2     	mov	x2, x20
    5afc: 528000c3     	mov	w3, #0x6                // =6
    5b00: cb1702c1     	sub	x1, x22, x23
    5b04: 8b170260     	add	x0, x19, x23
    5b08: 94000000     	bl	0x5b08 <seq_show+0xf8>
		0000000000005b08:  R_AARCH64_CALL26	snprintf
    5b0c: 8b20c2f7     	add	x23, x23, w0, sxtw
    5b10: 3857c2a4     	ldurb	w4, [x21, #-0x84]
    5b14: aa1403e2     	mov	x2, x20
    5b18: 528000e3     	mov	w3, #0x7                // =7
    5b1c: cb1702c1     	sub	x1, x22, x23
    5b20: 8b170260     	add	x0, x19, x23
    5b24: 94000000     	bl	0x5b24 <seq_show+0x114>
		0000000000005b24:  R_AARCH64_CALL26	snprintf
    5b28: 8b20c2f7     	add	x23, x23, w0, sxtw
    5b2c: 3857d2a4     	ldurb	w4, [x21, #-0x83]
    5b30: aa1403e2     	mov	x2, x20
    5b34: 52800103     	mov	w3, #0x8                // =8
    5b38: cb1702c1     	sub	x1, x22, x23
    5b3c: 8b170260     	add	x0, x19, x23
    5b40: 94000000     	bl	0x5b40 <seq_show+0x130>
		0000000000005b40:  R_AARCH64_CALL26	snprintf
    5b44: 8b20c2e0     	add	x0, x23, w0, sxtw
    5b48: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    5b4c: f9400bf7     	ldr	x23, [sp, #0x10]
    5b50: a94257f6     	ldp	x22, x21, [sp, #0x20]
    5b54: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    5b58: d50323bf     	autiasp
    5b5c: d65f03c0     	ret
