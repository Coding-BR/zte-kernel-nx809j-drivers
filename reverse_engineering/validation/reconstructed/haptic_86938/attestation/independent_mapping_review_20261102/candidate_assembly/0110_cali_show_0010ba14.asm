
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002e90 <cali_show>:
    2e90: d503233f     	paciasp
    2e94: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2e98: f9000bf5     	str	x21, [sp, #0x10]
    2e9c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2ea0: 910003fd     	mov	x29, sp
    2ea4: f9404c15     	ldr	x21, [x0, #0x98]
    2ea8: aa0203f3     	mov	x19, x2
    2eac: 910922a0     	add	x0, x21, #0x248
    2eb0: d102a2b4     	sub	x20, x21, #0xa8
    2eb4: 94000000     	bl	0x2eb4 <cali_show+0x24>
		0000000000002eb4:  R_AARCH64_CALL26	mutex_lock
    2eb8: f94292a8     	ldr	x8, [x21, #0x520]
    2ebc: aa1403e0     	mov	x0, x20
    2ec0: 52800021     	mov	w1, #0x1                // =1
    2ec4: f9408d08     	ldr	x8, [x8, #0x118]
    2ec8: b85fc110     	ldur	w16, [x8, #-0x4]
    2ecc: 728dd2b1     	movk	w17, #0x6e95
    2ed0: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    2ed4: 6b11021f     	cmp	w16, w17
    2ed8: 54000040     	b.eq	0x2ee0 <cali_show+0x50>
    2edc: d4304500     	brk	#0x8228
    2ee0: d63f0100     	blr	x8
    2ee4: f94292a8     	ldr	x8, [x21, #0x520]
    2ee8: aa1403e0     	mov	x0, x20
    2eec: f9400108     	ldr	x8, [x8]
    2ef0: b85fc110     	ldur	w16, [x8, #-0x4]
    2ef4: 729e3e11     	movk	w17, #0xf1f0
    2ef8: 72aa2591     	movk	w17, #0x512c, lsl #16
    2efc: 6b11021f     	cmp	w16, w17
    2f00: 54000040     	b.eq	0x2f08 <cali_show+0x78>
    2f04: d4304500     	brk	#0x8228
    2f08: d63f0100     	blr	x8
    2f0c: 910922a0     	add	x0, x21, #0x248
    2f10: 94000000     	bl	0x2f10 <cali_show+0x80>
		0000000000002f10:  R_AARCH64_CALL26	mutex_unlock
    2f14: b85b82a3     	ldur	w3, [x21, #-0x48]
    2f18: b85c82a4     	ldur	w4, [x21, #-0x38]
    2f1c: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66
    2f20: 91000042     	add	x2, x2, #0x0
		0000000000002f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66
    2f24: aa1303e0     	mov	x0, x19
    2f28: 52820001     	mov	w1, #0x1000             // =4096
    2f2c: 94000000     	bl	0x2f2c <cali_show+0x9c>
		0000000000002f2c:  R_AARCH64_CALL26	snprintf
    2f30: 93407c00     	sxtw	x0, w0
    2f34: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2f38: f9400bf5     	ldr	x21, [sp, #0x10]
    2f3c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2f40: d50323bf     	autiasp
    2f44: d65f03c0     	ret
