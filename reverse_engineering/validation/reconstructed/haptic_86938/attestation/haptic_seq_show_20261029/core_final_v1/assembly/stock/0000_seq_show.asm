
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007c0c <seq_show>:
    7c0c: d503233f     	paciasp
    7c10: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    7c14: f9000bf7     	str	x23, [sp, #0x10]
    7c18: a90257f6     	stp	x22, x21, [sp, #0x20]
    7c1c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    7c20: 910003fd     	mov	x29, sp
    7c24: f9404c15     	ldr	x21, [x0, #0x98]
    7c28: 52800101     	mov	w1, #0x8                // =8
    7c2c: aa0203f3     	mov	x19, x2
    7c30: f94292a8     	ldr	x8, [x21, #0x520]
    7c34: d102a2a0     	sub	x0, x21, #0xa8
    7c38: f9409108     	ldr	x8, [x8, #0x120]
    7c3c: b85fc110     	ldur	w16, [x8, #-0x4]
    7c40: 728dd2b1     	movk	w17, #0x6e95
    7c44: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    7c48: 6b11021f     	cmp	w16, w17
    7c4c: 54000040     	b.eq	0x7c54 <seq_show+0x48>
    7c50: d4304500     	brk	#0x8228
    7c54: d63f0100     	blr	x8
    7c58: 385762a4     	ldurb	w4, [x21, #-0x8a]
    7c5c: 90000014     	adrp	x20, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb01
    7c60: 91000294     	add	x20, x20, #0x0
		0000000000007c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb01
    7c64: aa1303e0     	mov	x0, x19
    7c68: 52820001     	mov	w1, #0x1000             // =4096
    7c6c: aa1403e2     	mov	x2, x20
    7c70: 52800023     	mov	w3, #0x1                // =1
    7c74: 52820016     	mov	w22, #0x1000            // =4096
    7c78: 94000000     	bl	0x7c78 <seq_show+0x6c>
		0000000000007c78:  R_AARCH64_CALL26	snprintf
    7c7c: 93407c17     	sxtw	x23, w0
    7c80: 385772a4     	ldurb	w4, [x21, #-0x89]
    7c84: aa1403e2     	mov	x2, x20
    7c88: 52800043     	mov	w3, #0x2                // =2
    7c8c: cb1702c1     	sub	x1, x22, x23
    7c90: 8b170260     	add	x0, x19, x23
    7c94: 94000000     	bl	0x7c94 <seq_show+0x88>
		0000000000007c94:  R_AARCH64_CALL26	snprintf
    7c98: 8b20c2f7     	add	x23, x23, w0, sxtw
    7c9c: 385782a4     	ldurb	w4, [x21, #-0x88]
    7ca0: aa1403e2     	mov	x2, x20
    7ca4: 52800063     	mov	w3, #0x3                // =3
    7ca8: cb1702c1     	sub	x1, x22, x23
    7cac: 8b170260     	add	x0, x19, x23
    7cb0: 94000000     	bl	0x7cb0 <seq_show+0xa4>
		0000000000007cb0:  R_AARCH64_CALL26	snprintf
    7cb4: 8b20c2f7     	add	x23, x23, w0, sxtw
    7cb8: 385792a4     	ldurb	w4, [x21, #-0x87]
    7cbc: aa1403e2     	mov	x2, x20
    7cc0: 52800083     	mov	w3, #0x4                // =4
    7cc4: cb1702c1     	sub	x1, x22, x23
    7cc8: 8b170260     	add	x0, x19, x23
    7ccc: 94000000     	bl	0x7ccc <seq_show+0xc0>
		0000000000007ccc:  R_AARCH64_CALL26	snprintf
    7cd0: 8b20c2f7     	add	x23, x23, w0, sxtw
    7cd4: 3857a2a4     	ldurb	w4, [x21, #-0x86]
    7cd8: aa1403e2     	mov	x2, x20
    7cdc: 528000a3     	mov	w3, #0x5                // =5
    7ce0: cb1702c1     	sub	x1, x22, x23
    7ce4: 8b170260     	add	x0, x19, x23
    7ce8: 94000000     	bl	0x7ce8 <seq_show+0xdc>
		0000000000007ce8:  R_AARCH64_CALL26	snprintf
    7cec: 8b20c2f7     	add	x23, x23, w0, sxtw
    7cf0: 3857b2a4     	ldurb	w4, [x21, #-0x85]
    7cf4: aa1403e2     	mov	x2, x20
    7cf8: 528000c3     	mov	w3, #0x6                // =6
    7cfc: cb1702c1     	sub	x1, x22, x23
    7d00: 8b170260     	add	x0, x19, x23
    7d04: 94000000     	bl	0x7d04 <seq_show+0xf8>
		0000000000007d04:  R_AARCH64_CALL26	snprintf
    7d08: 8b20c2f7     	add	x23, x23, w0, sxtw
    7d0c: 3857c2a4     	ldurb	w4, [x21, #-0x84]
    7d10: aa1403e2     	mov	x2, x20
    7d14: 528000e3     	mov	w3, #0x7                // =7
    7d18: cb1702c1     	sub	x1, x22, x23
    7d1c: 8b170260     	add	x0, x19, x23
    7d20: 94000000     	bl	0x7d20 <seq_show+0x114>
		0000000000007d20:  R_AARCH64_CALL26	snprintf
    7d24: 8b20c2f7     	add	x23, x23, w0, sxtw
    7d28: 3857d2a4     	ldurb	w4, [x21, #-0x83]
    7d2c: aa1403e2     	mov	x2, x20
    7d30: 52800103     	mov	w3, #0x8                // =8
    7d34: cb1702c1     	sub	x1, x22, x23
    7d38: 8b170260     	add	x0, x19, x23
    7d3c: 94000000     	bl	0x7d3c <seq_show+0x130>
		0000000000007d3c:  R_AARCH64_CALL26	snprintf
    7d40: 8b20c2e0     	add	x0, x23, w0, sxtw
    7d44: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    7d48: f9400bf7     	ldr	x23, [sp, #0x10]
    7d4c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    7d50: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    7d54: d50323bf     	autiasp
    7d58: d65f03c0     	ret
