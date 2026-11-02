
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008a48 <f0_show>:
    8a48: d503233f     	paciasp
    8a4c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    8a50: f9000bf5     	str	x21, [sp, #0x10]
    8a54: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8a58: 910003fd     	mov	x29, sp
    8a5c: f9404c15     	ldr	x21, [x0, #0x98]
    8a60: aa0203f3     	mov	x19, x2
    8a64: 910922a0     	add	x0, x21, #0x248
    8a68: d102a2b4     	sub	x20, x21, #0xa8
    8a6c: 94000000     	bl	0x8a6c <f0_show+0x24>
		0000000000008a6c:  R_AARCH64_CALL26	mutex_lock
    8a70: f94292a8     	ldr	x8, [x21, #0x520]
    8a74: aa1403e0     	mov	x0, x20
    8a78: 2a1f03e1     	mov	w1, wzr
    8a7c: f9408d08     	ldr	x8, [x8, #0x118]
    8a80: b85fc110     	ldur	w16, [x8, #-0x4]
    8a84: 728dd2b1     	movk	w17, #0x6e95
    8a88: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    8a8c: 6b11021f     	cmp	w16, w17
    8a90: 54000040     	b.eq	0x8a98 <f0_show+0x50>
    8a94: d4304500     	brk	#0x8228
    8a98: d63f0100     	blr	x8
    8a9c: f94292a8     	ldr	x8, [x21, #0x520]
    8aa0: aa1403e0     	mov	x0, x20
    8aa4: f9400108     	ldr	x8, [x8]
    8aa8: b85fc110     	ldur	w16, [x8, #-0x4]
    8aac: 729e3e11     	movk	w17, #0xf1f0
    8ab0: 72aa2591     	movk	w17, #0x512c, lsl #16
    8ab4: 6b11021f     	cmp	w16, w17
    8ab8: 54000040     	b.eq	0x8ac0 <f0_show+0x78>
    8abc: d4304500     	brk	#0x8228
    8ac0: d63f0100     	blr	x8
    8ac4: f94292a8     	ldr	x8, [x21, #0x520]
    8ac8: aa1403e0     	mov	x0, x20
    8acc: 52800021     	mov	w1, #0x1                // =1
    8ad0: f9408d08     	ldr	x8, [x8, #0x118]
    8ad4: b85fc110     	ldur	w16, [x8, #-0x4]
    8ad8: 728dd2b1     	movk	w17, #0x6e95
    8adc: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    8ae0: 6b11021f     	cmp	w16, w17
    8ae4: 54000040     	b.eq	0x8aec <f0_show+0xa4>
    8ae8: d4304500     	brk	#0x8228
    8aec: d63f0100     	blr	x8
    8af0: 910922a0     	add	x0, x21, #0x248
    8af4: 94000000     	bl	0x8af4 <f0_show+0xac>
		0000000000008af4:  R_AARCH64_CALL26	mutex_unlock
    8af8: b85b82a3     	ldur	w3, [x21, #-0x48]
    8afc: b85c82a4     	ldur	w4, [x21, #-0x38]
    8b00: 90000002     	adrp	x2, 0x8000 <reg_show+0x10>
		0000000000008b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a
    8b04: 91000042     	add	x2, x2, #0x0
		0000000000008b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a
    8b08: aa1303e0     	mov	x0, x19
    8b0c: 52820001     	mov	w1, #0x1000             // =4096
    8b10: 94000000     	bl	0x8b10 <f0_show+0xc8>
		0000000000008b10:  R_AARCH64_CALL26	snprintf
    8b14: 93407c00     	sxtw	x0, w0
    8b18: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8b1c: f9400bf5     	ldr	x21, [sp, #0x10]
    8b20: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    8b24: d50323bf     	autiasp
    8b28: d65f03c0     	ret
