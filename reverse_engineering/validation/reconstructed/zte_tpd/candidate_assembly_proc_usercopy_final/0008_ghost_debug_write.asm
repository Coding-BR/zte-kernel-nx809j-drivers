
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c28 <ghost_debug_write>:
    1c28: d503233f     	paciasp
    1c2c: d10303ff     	sub	sp, sp, #0xc0
    1c30: a9087bfd     	stp	x29, x30, [sp, #0x80]
    1c34: f9004bf7     	str	x23, [sp, #0x90]
    1c38: a90a57f6     	stp	x22, x21, [sp, #0xa0]
    1c3c: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
    1c40: 910203fd     	add	x29, sp, #0x80
    1c44: d5384108     	mrs	x8, SP_EL0
    1c48: f9438908     	ldr	x8, [x8, #0x710]
    1c4c: f101905f     	cmp	x2, #0x64
    1c50: f81f83a8     	stur	x8, [x29, #-0x8]
    1c54: a9007fff     	stp	xzr, xzr, [sp]
    1c58: d5384108     	mrs	x8, SP_EL0
    1c5c: 90000008     	adrp	x8, 0x1000 <get_screen_off_awake+0xb4>
		0000000000001c5c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1c60: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1c64: f9400115     	ldr	x21, [x8]
		0000000000001c64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1c68: 52800c88     	mov	w8, #0x64               // =100
    1c6c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1c70: 9a88b053     	csel	x19, x2, x8, lt
    1c74: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1c78: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1c7c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    1c80: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    1c84: b90017ff     	str	wzr, [sp, #0x14]
    1c88: b40000a1     	cbz	x1, 0x1c9c <ghost_debug_write+0x74>
    1c8c: 910063e0     	add	x0, sp, #0x18
    1c90: aa1303e2     	mov	x2, x19
    1c94: 94000000     	bl	0x1c94 <ghost_debug_write+0x6c>
		0000000000001c94:  R_AARCH64_CALL26	_inline_copy_from_user
    1c98: b5000740     	cbnz	x0, 0x1d80 <ghost_debug_write+0x158>
    1c9c: 910063e8     	add	x8, sp, #0x18
    1ca0: 90000001     	adrp	x1, 0x1000 <get_screen_off_awake+0xb4>
		0000000000001ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a51
    1ca4: 91000021     	add	x1, x1, #0x0
		0000000000001ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a51
    1ca8: 910023e0     	add	x0, sp, #0x8
    1cac: f90007e8     	str	x8, [sp, #0x8]
    1cb0: 94000000     	bl	0x1cb0 <ghost_debug_write+0x88>
		0000000000001cb0:  R_AARCH64_CALL26	strsep
    1cb4: b4000340     	cbz	x0, 0x1d1c <ghost_debug_write+0xf4>
    1cb8: aa1f03f6     	mov	x22, xzr
    1cbc: 910003f7     	mov	x23, sp
    1cc0: 90000014     	adrp	x20, 0x1000 <get_screen_off_awake+0xb4>
		0000000000001cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a51
    1cc4: 91000294     	add	x20, x20, #0x0
		0000000000001cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a51
    1cc8: 910053e2     	add	x2, sp, #0x14
    1ccc: 52800141     	mov	w1, #0xa                // =10
    1cd0: 94000000     	bl	0x1cd0 <ghost_debug_write+0xa8>
		0000000000001cd0:  R_AARCH64_CALL26	kstrtouint
    1cd4: 350000e0     	cbnz	w0, 0x1cf0 <ghost_debug_write+0xc8>
    1cd8: f1000edf     	cmp	x22, #0x3
    1cdc: 540005c8     	b.hi	0x1d94 <ghost_debug_write+0x16c>
    1ce0: 910006c8     	add	x8, x22, #0x1
    1ce4: b94017e9     	ldr	w9, [sp, #0x14]
    1ce8: 78367ae9     	strh	w9, [x23, x22, lsl #1]
    1cec: aa0803f6     	mov	x22, x8
    1cf0: 910023e0     	add	x0, sp, #0x8
    1cf4: aa1403e1     	mov	x1, x20
    1cf8: 94000000     	bl	0x1cf8 <ghost_debug_write+0xd0>
		0000000000001cf8:  R_AARCH64_CALL26	strsep
    1cfc: b4000060     	cbz	x0, 0x1d08 <ghost_debug_write+0xe0>
    1d00: f1002adf     	cmp	x22, #0xa
    1d04: 54fffe23     	b.lo	0x1cc8 <ghost_debug_write+0xa0>
    1d08: 39401be8     	ldrb	w8, [sp, #0x6]
    1d0c: 394013e9     	ldrb	w9, [sp, #0x4]
    1d10: 39400bea     	ldrb	w10, [sp, #0x2]
    1d14: 394003eb     	ldrb	w11, [sp]
    1d18: 14000005     	b	0x1d2c <ghost_debug_write+0x104>
    1d1c: 2a1f03e8     	mov	w8, wzr
    1d20: 2a1f03e9     	mov	w9, wzr
    1d24: 2a1f03ea     	mov	w10, wzr
    1d28: 2a1f03eb     	mov	w11, wzr
    1d2c: 391246ab     	strb	w11, [x21, #0x491]
    1d30: 39124aaa     	strb	w10, [x21, #0x492]
    1d34: 39124ea9     	strb	w9, [x21, #0x493]
    1d38: 391252a8     	strb	w8, [x21, #0x494]
    1d3c: 391256bf     	strb	wzr, [x21, #0x495]
    1d40: f9024ebf     	str	xzr, [x21, #0x498]
    1d44: f90252bf     	str	xzr, [x21, #0x4a0]
    1d48: d5384108     	mrs	x8, SP_EL0
    1d4c: f9438908     	ldr	x8, [x8, #0x710]
    1d50: d5384109     	mrs	x9, SP_EL0
    1d54: f85f83a9     	ldur	x9, [x29, #-0x8]
    1d58: eb09011f     	cmp	x8, x9
    1d5c: 540001e1     	b.ne	0x1d98 <ghost_debug_write+0x170>
    1d60: aa1303e0     	mov	x0, x19
    1d64: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
    1d68: f9404bf7     	ldr	x23, [sp, #0x90]
    1d6c: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
    1d70: a9487bfd     	ldp	x29, x30, [sp, #0x80]
    1d74: 910303ff     	add	sp, sp, #0xc0
    1d78: d50323bf     	autiasp
    1d7c: d65f03c0     	ret
    1d80: 90000000     	adrp	x0, 0x1000 <get_screen_off_awake+0xb4>
		0000000000001d80:  R_AARCH64_ADR_PREL_PG_HI21	unk_31DF8
    1d84: 91000000     	add	x0, x0, #0x0
		0000000000001d84:  R_AARCH64_ADD_ABS_LO12_NC	unk_31DF8
    1d88: 94000000     	bl	0x1d88 <ghost_debug_write+0x160>
		0000000000001d88:  R_AARCH64_CALL26	_printk
    1d8c: 928002b3     	mov	x19, #-0x16             // =-22
    1d90: 17ffffee     	b	0x1d48 <ghost_debug_write+0x120>
    1d94: d4200020     	brk	#0x1
    1d98: 94000000     	bl	0x1d98 <ghost_debug_write+0x170>
		0000000000001d98:  R_AARCH64_CALL26	__stack_chk_fail
