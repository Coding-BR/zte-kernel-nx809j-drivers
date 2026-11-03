
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005d80 <richtap_stop_work>:
    5d80: d503233f     	paciasp
    5d84: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    5d88: f9000bf5     	str	x21, [sp, #0x10]
    5d8c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5d90: 910003fd     	mov	x29, sp
    5d94: d10de015     	sub	x21, x0, #0x378
    5d98: aa0003f3     	mov	x19, x0
    5d9c: d119a014     	sub	x20, x0, #0x668
    5da0: aa1503e0     	mov	x0, x21
    5da4: 94000000     	bl	0x5da4 <richtap_stop_work+0x24>
		0000000000005da4:  R_AARCH64_CALL26	mutex_lock
    5da8: f8560268     	ldur	x8, [x19, #-0xa0]
    5dac: aa1403e0     	mov	x0, x20
    5db0: f9407908     	ldr	x8, [x8, #0xf0]
    5db4: b85fc110     	ldur	w16, [x8, #-0x4]
    5db8: 72810611     	movk	w17, #0x830
    5dbc: 72b08f51     	movk	w17, #0x847a, lsl #16
    5dc0: 6b11021f     	cmp	w16, w17
    5dc4: 54000040     	b.eq	0x5dcc <richtap_stop_work+0x4c>
    5dc8: d4304500     	brk	#0x8228
    5dcc: d63f0100     	blr	x8
    5dd0: f8560268     	ldur	x8, [x19, #-0xa0]
    5dd4: aa1403e0     	mov	x0, x20
    5dd8: f9401d08     	ldr	x8, [x8, #0x38]
    5ddc: b85fc110     	ldur	w16, [x8, #-0x4]
    5de0: 72810611     	movk	w17, #0x830
    5de4: 72b08f51     	movk	w17, #0x847a, lsl #16
    5de8: 6b11021f     	cmp	w16, w17
    5dec: 54000040     	b.eq	0x5df4 <richtap_stop_work+0x74>
    5df0: d4304500     	brk	#0x8228
    5df4: d63f0100     	blr	x8
    5df8: aa1503e0     	mov	x0, x21
    5dfc: 94000000     	bl	0x5dfc <richtap_stop_work+0x7c>
		0000000000005dfc:  R_AARCH64_CALL26	mutex_unlock
    5e00: f8560268     	ldur	x8, [x19, #-0xa0]
    5e04: aa1403e0     	mov	x0, x20
    5e08: 2a1f03e1     	mov	w1, wzr
    5e0c: f9408908     	ldr	x8, [x8, #0x110]
    5e10: b85fc110     	ldur	w16, [x8, #-0x4]
    5e14: 729bedd1     	movk	w17, #0xdf6e
    5e18: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    5e1c: 6b11021f     	cmp	w16, w17
    5e20: 54000040     	b.eq	0x5e28 <richtap_stop_work+0xa8>
    5e24: d4304500     	brk	#0x8228
    5e28: d63f0100     	blr	x8
    5e2c: b900567f     	str	wzr, [x19, #0x54]
    5e30: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5e34: f9400bf5     	ldr	x21, [sp, #0x10]
    5e38: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    5e3c: d50323bf     	autiasp
    5e40: d65f03c0     	ret
