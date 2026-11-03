
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000be80 <syna_input_agent_ioctl>:
    be80: d503233f     	paciasp
    be84: d10483ff     	sub	sp, sp, #0x120
    be88: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    be8c: a91057fc     	stp	x28, x21, [sp, #0x100]
    be90: a9114ff4     	stp	x20, x19, [sp, #0x110]
    be94: 9103c3fd     	add	x29, sp, #0xf0
    be98: d5384108     	mrs	x8, SP_EL0
    be9c: f9438908     	ldr	x8, [x8, #0x710]
    bea0: f81f83a8     	stur	x8, [x29, #-0x8]
    bea4: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    bea8: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    beac: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    beb0: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    beb4: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    beb8: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    bebc: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    bec0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    bec4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    bec8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    becc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    bed0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    bed4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    bed8: f9000bff     	str	xzr, [sp, #0x10]
    bedc: b4000200     	cbz	x0, 0xbf1c <syna_input_agent_ioctl+0x9c>
    bee0: f9401015     	ldr	x21, [x0, #0x20]
    bee4: b40001d5     	cbz	x21, 0xbf1c <syna_input_agent_ioctl+0x9c>
    bee8: f94006a0     	ldr	x0, [x21, #0x8]
    beec: 2a0103f4     	mov	w20, w1
    bef0: 910023e1     	add	x1, sp, #0x8
    bef4: aa0203f3     	mov	x19, x2
    bef8: f90007ff     	str	xzr, [sp, #0x8]
    befc: 94000000     	bl	0xbefc <syna_input_agent_ioctl+0x7c>
		000000000000befc:  R_AARCH64_CALL26	syna_cdev_operation_begin
    bf00: 360000e0     	tbz	w0, #0x0, 0xbf1c <syna_input_agent_ioctl+0x9c>
    bf04: f94007e8     	ldr	x8, [sp, #0x8]
    bf08: f94002a9     	ldr	x9, [x21]
    bf0c: eb09011f     	cmp	x8, x9
    bf10: 540001e0     	b.eq	0xbf4c <syna_input_agent_ioctl+0xcc>
    bf14: 92800253     	mov	x19, #-0x13             // =-19
    bf18: 14000013     	b	0xbf64 <syna_input_agent_ioctl+0xe4>
    bf1c: 92800240     	mov	x0, #-0x13              // =-19
    bf20: d5384108     	mrs	x8, SP_EL0
    bf24: f9438908     	ldr	x8, [x8, #0x710]
    bf28: f85f83a9     	ldur	x9, [x29, #-0x8]
    bf2c: eb09011f     	cmp	x8, x9
    bf30: 54000201     	b.ne	0xbf70 <syna_input_agent_ioctl+0xf0>
    bf34: a9514ff4     	ldp	x20, x19, [sp, #0x110]
    bf38: a95057fc     	ldp	x28, x21, [sp, #0x100]
    bf3c: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    bf40: 910483ff     	add	sp, sp, #0x120
    bf44: d50323bf     	autiasp
    bf48: d65f03c0     	ret
    bf4c: 910043e0     	add	x0, sp, #0x10
    bf50: 2a1403e1     	mov	w1, w20
    bf54: aa1303e2     	mov	x2, x19
    bf58: f9001be8     	str	x8, [sp, #0x30]
    bf5c: 94000000     	bl	0xbf5c <syna_input_agent_ioctl+0xdc>
		000000000000bf5c:  R_AARCH64_CALL26	syna_ioctl
    bf60: aa0003f3     	mov	x19, x0
    bf64: 94000000     	bl	0xbf64 <syna_input_agent_ioctl+0xe4>
		000000000000bf64:  R_AARCH64_CALL26	syna_cdev_operation_end
    bf68: aa1303e0     	mov	x0, x19
    bf6c: 17ffffed     	b	0xbf20 <syna_input_agent_ioctl+0xa0>
    bf70: 94000000     	bl	0xbf70 <syna_input_agent_ioctl+0xf0>
		000000000000bf70:  R_AARCH64_CALL26	__stack_chk_fail
