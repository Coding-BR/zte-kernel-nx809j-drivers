
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002e00 <vbat_monitor_show>:
    2e00: d503233f     	paciasp
    2e04: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2e08: f9000bf5     	str	x21, [sp, #0x10]
    2e0c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2e10: 910003fd     	mov	x29, sp
    2e14: f9404c15     	ldr	x21, [x0, #0x98]
    2e18: aa0203f3     	mov	x19, x2
    2e1c: 910922a0     	add	x0, x21, #0x248
    2e20: d102a2b4     	sub	x20, x21, #0xa8
    2e24: 94000000     	bl	0x2e24 <vbat_monitor_show+0x24>
		0000000000002e24:  R_AARCH64_CALL26	mutex_lock
    2e28: f94292a8     	ldr	x8, [x21, #0x520]
    2e2c: aa1403e0     	mov	x0, x20
    2e30: f9402108     	ldr	x8, [x8, #0x40]
    2e34: b85fc110     	ldur	w16, [x8, #-0x4]
    2e38: 72810611     	movk	w17, #0x830
    2e3c: 72b08f51     	movk	w17, #0x847a, lsl #16
    2e40: 6b11021f     	cmp	w16, w17
    2e44: 54000040     	b.eq	0x2e4c <vbat_monitor_show+0x4c>
    2e48: d4304500     	brk	#0x8228
    2e4c: d63f0100     	blr	x8
    2e50: b85c02a3     	ldur	w3, [x21, #-0x40]
    2e54: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70b
    2e58: 91000042     	add	x2, x2, #0x0
		0000000000002e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70b
    2e5c: aa1303e0     	mov	x0, x19
    2e60: 52820001     	mov	w1, #0x1000             // =4096
    2e64: 94000000     	bl	0x2e64 <vbat_monitor_show+0x64>
		0000000000002e64:  R_AARCH64_CALL26	snprintf
    2e68: 93407c13     	sxtw	x19, w0
    2e6c: 910922a0     	add	x0, x21, #0x248
    2e70: 94000000     	bl	0x2e70 <vbat_monitor_show+0x70>
		0000000000002e70:  R_AARCH64_CALL26	mutex_unlock
    2e74: aa1303e0     	mov	x0, x19
    2e78: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2e7c: f9400bf5     	ldr	x21, [sp, #0x10]
    2e80: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2e84: d50323bf     	autiasp
    2e88: d65f03c0     	ret
