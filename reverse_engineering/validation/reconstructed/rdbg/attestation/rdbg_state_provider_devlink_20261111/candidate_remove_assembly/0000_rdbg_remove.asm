
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ca0 <rdbg_remove>:
     ca0: d503233f     	paciasp
     ca4: d10283ff     	sub	sp, sp, #0xa0
     ca8: a9057bfd     	stp	x29, x30, [sp, #0x50]
     cac: f90033f9     	str	x25, [sp, #0x60]
     cb0: a9075ff8     	stp	x24, x23, [sp, #0x70]
     cb4: a90857f6     	stp	x22, x21, [sp, #0x80]
     cb8: a9094ff4     	stp	x20, x19, [sp, #0x90]
     cbc: 910143fd     	add	x29, sp, #0x50
     cc0: d5384108     	mrs	x8, SP_EL0
     cc4: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000cc4:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
     cc8: f9438908     	ldr	x8, [x8, #0x710]
     ccc: f81f83a8     	stur	x8, [x29, #-0x8]
     cd0: f94002c8     	ldr	x8, [x22]
		0000000000000cd0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     cd4: b4000868     	cbz	x8, 0xde0 <rdbg_remove+0x140>
     cd8: aa0003f3     	mov	x19, x0
     cdc: f9417c00     	ldr	x0, [x0, #0x2f8]
     ce0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     ce4: 91000021     	add	x1, x1, #0x0
		0000000000000ce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     ce8: aa1f03e2     	mov	x2, xzr
     cec: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     cf0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     cf4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     cf8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     cfc: 94000000     	bl	0xcfc <rdbg_remove+0x5c>
		0000000000000cfc:  R_AARCH64_CALL26	of_find_property
     d00: b4000700     	cbz	x0, 0xde0 <rdbg_remove+0x140>
     d04: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000d04:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
     d08: b94002e8     	ldr	w8, [x23]
		0000000000000d08:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     d0c: 7100051f     	cmp	w8, #0x1
     d10: 5400068b     	b.lt	0xde0 <rdbg_remove+0x140>
     d14: aa1f03f4     	mov	x20, xzr
     d18: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000d18:  R_AARCH64_ADR_PREL_PG_HI21	proc_info
     d1c: 91000339     	add	x25, x25, #0x0
		0000000000000d1c:  R_AARCH64_ADD_ABS_LO12_NC	proc_info
     d20: 52802918     	mov	w24, #0x148             // =328
     d24: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x470
     d28: 910002b5     	add	x21, x21, #0x0
		0000000000000d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x470
     d2c: 14000007     	b	0xd48 <rdbg_remove+0xa8>
     d30: b98002e8     	ldrsw	x8, [x23]
		0000000000000d30:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
     d34: 91000694     	add	x20, x20, #0x1
     d38: 91072318     	add	x24, x24, #0x1c8
     d3c: 91006339     	add	x25, x25, #0x18
     d40: eb08029f     	cmp	x20, x8
     d44: 540004ea     	b.ge	0xde0 <rdbg_remove+0x140>
     d48: f100429f     	cmp	x20, #0x10
     d4c: 54000640     	b.eq	0xe14 <rdbg_remove+0x174>
     d50: f9400328     	ldr	x8, [x25]
     d54: b4fffee8     	cbz	x8, 0xd30 <rdbg_remove+0x90>
     d58: 910023e0     	add	x0, sp, #0x8
     d5c: 52800801     	mov	w1, #0x40               // =64
     d60: aa1503e2     	mov	x2, x21
     d64: 2a1403e3     	mov	w3, w20
     d68: 94000000     	bl	0xd68 <rdbg_remove+0xc8>
		0000000000000d68:  R_AARCH64_CALL26	snprintf
     d6c: 7100fc1f     	cmp	w0, #0x3f
     d70: 54fffe08     	b.hi	0xd30 <rdbg_remove+0x90>
     d74: f9417e60     	ldr	x0, [x19, #0x2f8]
     d78: 910023e1     	add	x1, sp, #0x8
     d7c: 94000000     	bl	0xd7c <rdbg_remove+0xdc>
		0000000000000d7c:  R_AARCH64_CALL26	of_device_is_compatible
     d80: 34fffd80     	cbz	w0, 0xd30 <rdbg_remove+0x90>
     d84: f94002d3     	ldr	x19, [x22]
		0000000000000d84:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     d88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d88:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     d8c: 91000000     	add	x0, x0, #0x0
		0000000000000d8c:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     d90: 94000000     	bl	0xd90 <rdbg_remove+0xf0>
		0000000000000d90:  R_AARCH64_CALL26	mutex_lock
     d94: 8b180268     	add	x8, x19, x24
     d98: f8508100     	ldur	x0, [x8, #-0xf8]
     d9c: f810811f     	stur	xzr, [x8, #-0xf8]
     da0: b811411f     	stur	wzr, [x8, #-0xec]
     da4: a9007d1f     	stp	xzr, xzr, [x8]
     da8: a9017d1f     	stp	xzr, xzr, [x8, #0x10]
     dac: a9027d1f     	stp	xzr, xzr, [x8, #0x20]
     db0: a9037d1f     	stp	xzr, xzr, [x8, #0x30]
     db4: a9047d1f     	stp	xzr, xzr, [x8, #0x40]
     db8: a9057d1f     	stp	xzr, xzr, [x8, #0x50]
     dbc: a9067d1f     	stp	xzr, xzr, [x8, #0x60]
     dc0: a9077d1f     	stp	xzr, xzr, [x8, #0x70]
     dc4: b4000080     	cbz	x0, 0xdd4 <rdbg_remove+0x134>
     dc8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     dcc: 54000048     	b.hi	0xdd4 <rdbg_remove+0x134>
     dd0: 94000000     	bl	0xdd0 <rdbg_remove+0x130>
		0000000000000dd0:  R_AARCH64_CALL26	qcom_smem_state_put
     dd4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dd4:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_smem_state_lock
     dd8: 91000000     	add	x0, x0, #0x0
		0000000000000dd8:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_smem_state_lock
     ddc: 94000000     	bl	0xddc <rdbg_remove+0x13c>
		0000000000000ddc:  R_AARCH64_CALL26	mutex_unlock
     de0: d5384108     	mrs	x8, SP_EL0
     de4: f9438908     	ldr	x8, [x8, #0x710]
     de8: f85f83a9     	ldur	x9, [x29, #-0x8]
     dec: eb09011f     	cmp	x8, x9
     df0: 54000141     	b.ne	0xe18 <rdbg_remove+0x178>
     df4: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     df8: f94033f9     	ldr	x25, [sp, #0x60]
     dfc: a94857f6     	ldp	x22, x21, [sp, #0x80]
     e00: a9475ff8     	ldp	x24, x23, [sp, #0x70]
     e04: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     e08: 910283ff     	add	sp, sp, #0xa0
     e0c: d50323bf     	autiasp
     e10: d65f03c0     	ret
     e14: d42aa240     	brk	#0x5512
     e18: 94000000     	bl	0xe18 <rdbg_remove+0x178>
		0000000000000e18:  R_AARCH64_CALL26	__stack_chk_fail
