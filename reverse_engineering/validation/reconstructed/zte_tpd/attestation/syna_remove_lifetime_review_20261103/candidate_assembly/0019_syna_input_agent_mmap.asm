
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bf78 <syna_input_agent_mmap>:
    bf78: d503233f     	paciasp
    bf7c: d10483ff     	sub	sp, sp, #0x120
    bf80: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    bf84: f90083fc     	str	x28, [sp, #0x100]
    bf88: a9114ff4     	stp	x20, x19, [sp, #0x110]
    bf8c: 9103c3fd     	add	x29, sp, #0xf0
    bf90: d5384108     	mrs	x8, SP_EL0
    bf94: f9438908     	ldr	x8, [x8, #0x710]
    bf98: f81f83a8     	stur	x8, [x29, #-0x8]
    bf9c: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    bfa0: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    bfa4: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    bfa8: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    bfac: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    bfb0: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    bfb4: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    bfb8: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    bfbc: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    bfc0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    bfc4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    bfc8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    bfcc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    bfd0: f9000bff     	str	xzr, [sp, #0x10]
    bfd4: b4000220     	cbz	x0, 0xc018 <syna_input_agent_mmap+0xa0>
    bfd8: f9401014     	ldr	x20, [x0, #0x20]
    bfdc: b40001f4     	cbz	x20, 0xc018 <syna_input_agent_mmap+0xa0>
    bfe0: f9400680     	ldr	x0, [x20, #0x8]
    bfe4: aa0103f3     	mov	x19, x1
    bfe8: 910023e1     	add	x1, sp, #0x8
    bfec: f90007ff     	str	xzr, [sp, #0x8]
    bff0: 94000000     	bl	0xbff0 <syna_input_agent_mmap+0x78>
		000000000000bff0:  R_AARCH64_CALL26	syna_cdev_operation_begin
    bff4: 36000120     	tbz	w0, #0x0, 0xc018 <syna_input_agent_mmap+0xa0>
    bff8: f94007e8     	ldr	x8, [sp, #0x8]
    bffc: f9400289     	ldr	x9, [x20]
    c000: eb09011f     	cmp	x8, x9
    c004: 54000220     	b.eq	0xc048 <syna_input_agent_mmap+0xd0>
    c008: 12800253     	mov	w19, #-0x13             // =-19
    c00c: 94000000     	bl	0xc00c <syna_input_agent_mmap+0x94>
		000000000000c00c:  R_AARCH64_CALL26	syna_cdev_operation_end
    c010: 2a1303e0     	mov	w0, w19
    c014: 14000002     	b	0xc01c <syna_input_agent_mmap+0xa4>
    c018: 12800240     	mov	w0, #-0x13              // =-19
    c01c: d5384108     	mrs	x8, SP_EL0
    c020: f9438908     	ldr	x8, [x8, #0x710]
    c024: f85f83a9     	ldur	x9, [x29, #-0x8]
    c028: eb09011f     	cmp	x8, x9
    c02c: 54000221     	b.ne	0xc070 <syna_input_agent_mmap+0xf8>
    c030: a9514ff4     	ldp	x20, x19, [sp, #0x110]
    c034: f94083fc     	ldr	x28, [sp, #0x100]
    c038: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    c03c: 910483ff     	add	sp, sp, #0x120
    c040: d50323bf     	autiasp
    c044: d65f03c0     	ret
    c048: f9400a89     	ldr	x9, [x20, #0x10]
    c04c: b4fffde9     	cbz	x9, 0xc008 <syna_input_agent_mmap+0x90>
    c050: f9400529     	ldr	x9, [x9, #0x8]
    c054: b4fffda9     	cbz	x9, 0xc008 <syna_input_agent_mmap+0x90>
    c058: 910043e0     	add	x0, sp, #0x10
    c05c: aa1303e1     	mov	x1, x19
    c060: f9001be8     	str	x8, [sp, #0x30]
    c064: 94000000     	bl	0xc064 <syna_input_agent_mmap+0xec>
		000000000000c064:  R_AARCH64_CALL26	syna_mmap
    c068: 2a0003f3     	mov	w19, w0
    c06c: 17ffffe8     	b	0xc00c <syna_input_agent_mmap+0x94>
    c070: 94000000     	bl	0xc070 <syna_input_agent_mmap+0xf8>
		000000000000c070:  R_AARCH64_CALL26	__stack_chk_fail
