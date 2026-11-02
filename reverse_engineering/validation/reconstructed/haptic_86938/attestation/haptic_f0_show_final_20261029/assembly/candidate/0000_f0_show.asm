
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002f4c <f0_show>:
    2f4c: d503233f     	paciasp
    2f50: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2f54: f9000bf5     	str	x21, [sp, #0x10]
    2f58: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2f5c: 910003fd     	mov	x29, sp
    2f60: f9404c15     	ldr	x21, [x0, #0x98]
    2f64: aa0203f3     	mov	x19, x2
    2f68: 910922a0     	add	x0, x21, #0x248
    2f6c: d102a2b4     	sub	x20, x21, #0xa8
    2f70: 94000000     	bl	0x2f70 <f0_show+0x24>
		0000000000002f70:  R_AARCH64_CALL26	mutex_lock
    2f74: f94292a8     	ldr	x8, [x21, #0x520]
    2f78: aa1403e0     	mov	x0, x20
    2f7c: 2a1f03e1     	mov	w1, wzr
    2f80: f9408d08     	ldr	x8, [x8, #0x118]
    2f84: b85fc110     	ldur	w16, [x8, #-0x4]
    2f88: 728dd2b1     	movk	w17, #0x6e95
    2f8c: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    2f90: 6b11021f     	cmp	w16, w17
    2f94: 54000040     	b.eq	0x2f9c <f0_show+0x50>
    2f98: d4304500     	brk	#0x8228
    2f9c: d63f0100     	blr	x8
    2fa0: f94292a8     	ldr	x8, [x21, #0x520]
    2fa4: aa1403e0     	mov	x0, x20
    2fa8: f9400108     	ldr	x8, [x8]
    2fac: b85fc110     	ldur	w16, [x8, #-0x4]
    2fb0: 729e3e11     	movk	w17, #0xf1f0
    2fb4: 72aa2591     	movk	w17, #0x512c, lsl #16
    2fb8: 6b11021f     	cmp	w16, w17
    2fbc: 54000040     	b.eq	0x2fc4 <f0_show+0x78>
    2fc0: d4304500     	brk	#0x8228
    2fc4: d63f0100     	blr	x8
    2fc8: f94292a8     	ldr	x8, [x21, #0x520]
    2fcc: aa1403e0     	mov	x0, x20
    2fd0: 52800021     	mov	w1, #0x1                // =1
    2fd4: f9408d08     	ldr	x8, [x8, #0x118]
    2fd8: b85fc110     	ldur	w16, [x8, #-0x4]
    2fdc: 728dd2b1     	movk	w17, #0x6e95
    2fe0: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    2fe4: 6b11021f     	cmp	w16, w17
    2fe8: 54000040     	b.eq	0x2ff0 <f0_show+0xa4>
    2fec: d4304500     	brk	#0x8228
    2ff0: d63f0100     	blr	x8
    2ff4: 910922a0     	add	x0, x21, #0x248
    2ff8: 94000000     	bl	0x2ff8 <f0_show+0xac>
		0000000000002ff8:  R_AARCH64_CALL26	mutex_unlock
    2ffc: b85b82a3     	ldur	w3, [x21, #-0x48]
    3000: b85c82a4     	ldur	w4, [x21, #-0x38]
    3004: 90000002     	adrp	x2, 0x3000 <f0_show+0xb4>
		0000000000003004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66
    3008: 91000042     	add	x2, x2, #0x0
		0000000000003008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66
    300c: aa1303e0     	mov	x0, x19
    3010: 52820001     	mov	w1, #0x1000             // =4096
    3014: 94000000     	bl	0x3014 <f0_show+0xc8>
		0000000000003014:  R_AARCH64_CALL26	snprintf
    3018: 93407c00     	sxtw	x0, w0
    301c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3020: f9400bf5     	ldr	x21, [sp, #0x10]
    3024: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    3028: d50323bf     	autiasp
    302c: d65f03c0     	ret
