
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006d2c <haptic_lifetime_block_file_access>:
    6d2c: d503233f     	paciasp
    6d30: d10183ff     	sub	sp, sp, #0x60
    6d34: a9037bfd     	stp	x29, x30, [sp, #0x30]
    6d38: f90023f5     	str	x21, [sp, #0x40]
    6d3c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    6d40: 9100c3fd     	add	x29, sp, #0x30
    6d44: d5384108     	mrs	x8, SP_EL0
    6d48: aa0003f3     	mov	x19, x0
    6d4c: 90000009     	adrp	x9, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006d4c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x398
    6d50: f9438908     	ldr	x8, [x8, #0x710]
    6d54: 5280002a     	mov	w10, #0x1               // =1
    6d58: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006d58:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x3d0
    6d5c: 91000000     	add	x0, x0, #0x0
		0000000000006d5c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x3d0
    6d60: f81f83a8     	stur	x8, [x29, #-0x8]
    6d64: 90000008     	adrp	x8, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006d64:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x58
    6d68: b900012a     	str	w10, [x9]
		0000000000006d68:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x398
    6d6c: 3900011f     	strb	wzr, [x8]
		0000000000006d6c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x58
    6d70: 94000000     	bl	0x6d70 <haptic_lifetime_block_file_access+0x44>
		0000000000006d70:  R_AARCH64_CALL26	mutex_lock
    6d74: 90000008     	adrp	x8, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006d74:  R_AARCH64_ADR_PREL_PG_HI21	g_aw_haptic
    6d78: f9400114     	ldr	x20, [x8]
		0000000000006d78:  R_AARCH64_LDST64_ABS_LO12_NC	g_aw_haptic
    6d7c: eb13029f     	cmp	x20, x19
    6d80: 54000041     	b.ne	0x6d88 <haptic_lifetime_block_file_access+0x5c>
    6d84: f900011f     	str	xzr, [x8]
		0000000000006d84:  R_AARCH64_LDST64_ABS_LO12_NC	g_aw_haptic
    6d88: 90000008     	adrp	x8, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006d88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x50
    6d8c: f9400109     	ldr	x9, [x8]
		0000000000006d8c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x50
    6d90: eb13013f     	cmp	x9, x19
    6d94: 54000041     	b.ne	0x6d9c <haptic_lifetime_block_file_access+0x70>
    6d98: f900011f     	str	xzr, [x8]
		0000000000006d98:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x50
    6d9c: 90000008     	adrp	x8, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006d9c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    6da0: f9400115     	ldr	x21, [x8]
		0000000000006da0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x48
    6da4: b4000195     	cbz	x21, 0x6dd4 <haptic_lifetime_block_file_access+0xa8>
    6da8: f9402aa8     	ldr	x8, [x21, #0x50]
    6dac: eb13011f     	cmp	x8, x19
    6db0: 54000060     	b.eq	0x6dbc <haptic_lifetime_block_file_access+0x90>
    6db4: aa1f03f5     	mov	x21, xzr
    6db8: 14000007     	b	0x6dd4 <haptic_lifetime_block_file_access+0xa8>
    6dbc: 910022a0     	add	x0, x21, #0x8
    6dc0: 94000000     	bl	0x6dc0 <haptic_lifetime_block_file_access+0x94>
		0000000000006dc0:  R_AARCH64_CALL26	mutex_lock
    6dc4: 52800028     	mov	w8, #0x1                // =1
    6dc8: 910022a0     	add	x0, x21, #0x8
    6dcc: 3901a2a8     	strb	w8, [x21, #0x68]
    6dd0: 94000000     	bl	0x6dd0 <haptic_lifetime_block_file_access+0xa4>
		0000000000006dd0:  R_AARCH64_CALL26	mutex_unlock
    6dd4: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006dd4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x3d0
    6dd8: 91000000     	add	x0, x0, #0x0
		0000000000006dd8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x3d0
    6ddc: 94000000     	bl	0x6ddc <haptic_lifetime_block_file_access+0xb0>
		0000000000006ddc:  R_AARCH64_CALL26	mutex_unlock
    6de0: eb13029f     	cmp	x20, x19
    6de4: 54000121     	b.ne	0x6e08 <haptic_lifetime_block_file_access+0xdc>
    6de8: 90000008     	adrp	x8, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006de8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x60
    6dec: 39400109     	ldrb	w9, [x8]
		0000000000006dec:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x60
    6df0: 7100053f     	cmp	w9, #0x1
    6df4: 540000a1     	b.ne	0x6e08 <haptic_lifetime_block_file_access+0xdc>
    6df8: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006df8:  R_AARCH64_ADR_PREL_PG_HI21	richtap_misc
    6dfc: 91000000     	add	x0, x0, #0x0
		0000000000006dfc:  R_AARCH64_ADD_ABS_LO12_NC	richtap_misc
    6e00: 3900011f     	strb	wzr, [x8]
		0000000000006e00:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x60
    6e04: 94000000     	bl	0x6e04 <haptic_lifetime_block_file_access+0xd8>
		0000000000006e04:  R_AARCH64_CALL26	misc_deregister
    6e08: b4000295     	cbz	x21, 0x6e58 <haptic_lifetime_block_file_access+0x12c>
    6e0c: b9405aa8     	ldr	w8, [x21, #0x58]
    6e10: 34000248     	cbz	w8, 0x6e58 <haptic_lifetime_block_file_access+0x12c>
    6e14: 910003e0     	mov	x0, sp
    6e18: 2a1f03e1     	mov	w1, wzr
    6e1c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    6e20: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    6e24: f90003ff     	str	xzr, [sp]
    6e28: 94000000     	bl	0x6e28 <haptic_lifetime_block_file_access+0xfc>
		0000000000006e28:  R_AARCH64_CALL26	init_wait_entry
    6e2c: 9100e2a0     	add	x0, x21, #0x38
    6e30: 910003e1     	mov	x1, sp
    6e34: 52800042     	mov	w2, #0x2                // =2
    6e38: 94000000     	bl	0x6e38 <haptic_lifetime_block_file_access+0x10c>
		0000000000006e38:  R_AARCH64_CALL26	prepare_to_wait_event
    6e3c: b9405aa8     	ldr	w8, [x21, #0x58]
    6e40: 34000068     	cbz	w8, 0x6e4c <haptic_lifetime_block_file_access+0x120>
    6e44: 94000000     	bl	0x6e44 <haptic_lifetime_block_file_access+0x118>
		0000000000006e44:  R_AARCH64_CALL26	schedule
    6e48: 17fffff9     	b	0x6e2c <haptic_lifetime_block_file_access+0x100>
    6e4c: 9100e2a0     	add	x0, x21, #0x38
    6e50: 910003e1     	mov	x1, sp
    6e54: 94000000     	bl	0x6e54 <haptic_lifetime_block_file_access+0x128>
		0000000000006e54:  R_AARCH64_CALL26	finish_wait
    6e58: d5384108     	mrs	x8, SP_EL0
    6e5c: f9438908     	ldr	x8, [x8, #0x710]
    6e60: f85f83a9     	ldur	x9, [x29, #-0x8]
    6e64: eb13029f     	cmp	x20, x19
    6e68: 1a9f17e0     	cset	w0, eq
    6e6c: eb09011f     	cmp	x8, x9
    6e70: 540000e1     	b.ne	0x6e8c <haptic_lifetime_block_file_access+0x160>
    6e74: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    6e78: f94023f5     	ldr	x21, [sp, #0x40]
    6e7c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    6e80: 910183ff     	add	sp, sp, #0x60
    6e84: d50323bf     	autiasp
    6e88: d65f03c0     	ret
    6e8c: 94000000     	bl	0x6e8c <haptic_lifetime_block_file_access+0x160>
		0000000000006e8c:  R_AARCH64_CALL26	__stack_chk_fail
