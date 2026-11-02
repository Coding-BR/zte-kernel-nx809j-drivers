
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005ba0 <aw8693x_container_update>:
    5ba0: d503233f     	paciasp
    5ba4: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    5ba8: f9000bfc     	str	x28, [sp, #0x10]
    5bac: a90267fa     	stp	x26, x25, [sp, #0x20]
    5bb0: a9035ff8     	stp	x24, x23, [sp, #0x30]
    5bb4: a90457f6     	stp	x22, x21, [sp, #0x40]
    5bb8: a9054ff4     	stp	x20, x19, [sp, #0x50]
    5bbc: 910003fd     	mov	x29, sp
    5bc0: d11043ff     	sub	sp, sp, #0x410
    5bc4: d5384108     	mrs	x8, SP_EL0
    5bc8: aa0103f4     	mov	x20, x1
    5bcc: aa0003f3     	mov	x19, x0
    5bd0: f9438908     	ldr	x8, [x8, #0x710]
    5bd4: 910023e0     	add	x0, sp, #0x8
    5bd8: 2a1f03e1     	mov	w1, wzr
    5bdc: 52808002     	mov	w2, #0x400              // =1024
    5be0: f81f83a8     	stur	x8, [x29, #-0x8]
    5be4: 94000000     	bl	0x5be4 <aw8693x_container_update+0x44>
		0000000000005be4:  R_AARCH64_CALL26	memset
    5be8: 910bc260     	add	x0, x19, #0x2f0
    5bec: 94000000     	bl	0x5bec <aw8693x_container_update+0x4c>
		0000000000005bec:  R_AARCH64_CALL26	mutex_lock
    5bf0: 52804088     	mov	w8, #0x204              // =516
    5bf4: aa1303e0     	mov	x0, x19
    5bf8: 7908be68     	strh	w8, [x19, #0x45e]
    5bfc: 94000000     	bl	0x5bfc <aw8693x_container_update+0x5c>
		0000000000005bfc:  R_AARCH64_CALL26	aw8693x_stop
    5c00: aa1303e0     	mov	x0, x19
    5c04: 528008a1     	mov	w1, #0x45               // =69
    5c08: 12800082     	mov	w2, #-0x5               // =-5
    5c0c: 52800083     	mov	w3, #0x4                // =4
    5c10: 94000000     	bl	0x5c10 <aw8693x_container_update+0x70>
		0000000000005c10:  R_AARCH64_CALL26	i2c_w_bits
    5c14: 52803e80     	mov	w0, #0x1f4              // =500
    5c18: 52804b01     	mov	w1, #0x258              // =600
    5c1c: 52800042     	mov	w2, #0x2                // =2
    5c20: 94000000     	bl	0x5c20 <aw8693x_container_update+0x80>
		0000000000005c20:  R_AARCH64_CALL26	usleep_range_state
    5c24: 39517e68     	ldrb	w8, [x19, #0x45f]
    5c28: 91001297     	add	x23, x20, #0x4
    5c2c: 90000016     	adrp	x22, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5c30: 910002d6     	add	x22, x22, #0x0
		0000000000005c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5c34: 90000015     	adrp	x21, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd
    5c38: 910002b5     	add	x21, x21, #0x0
		0000000000005c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd
    5c3c: 78686ae8     	ldrh	w8, [x23, x8]
    5c40: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x277
    5c44: 91000000     	add	x0, x0, #0x0
		0000000000005c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x277
    5c48: aa1603e1     	mov	x1, x22
    5c4c: 5280cae2     	mov	w2, #0x657              // =1623
    5c50: aa1503e3     	mov	x3, x21
    5c54: 5ac00504     	rev16	w4, w8
    5c58: b9045a64     	str	w4, [x19, #0x458]
    5c5c: 94000000     	bl	0x5c5c <aw8693x_container_update+0xbc>
		0000000000005c5c:  R_AARCH64_CALL26	_printk
    5c60: b9445a68     	ldr	w8, [x19, #0x458]
    5c64: 910003e2     	mov	x2, sp
    5c68: aa1303e0     	mov	x0, x19
    5c6c: 528005e1     	mov	w1, #0x2f               // =47
    5c70: 52800063     	mov	w3, #0x3                // =3
    5c74: 53057d09     	lsr	w9, w8, #5
    5c78: 4b48090a     	sub	w10, w8, w8, lsr #2
    5c7c: 53017d08     	lsr	w8, w8, #1
    5c80: 33082d49     	bfxil	w9, w10, #8, #4
    5c84: 390007e8     	strb	w8, [sp, #0x1]
    5c88: 39000bea     	strb	w10, [sp, #0x2]
    5c8c: 390003e9     	strb	w9, [sp]
    5c90: 94000000     	bl	0x5c90 <aw8693x_container_update+0xf0>
		0000000000005c90:  R_AARCH64_CALL26	i2c_w_bytes
    5c94: 910003e2     	mov	x2, sp
    5c98: aa1303e0     	mov	x0, x19
    5c9c: 528005e1     	mov	w1, #0x2f               // =47
    5ca0: 52800063     	mov	w3, #0x3                // =3
    5ca4: 94000000     	bl	0x5ca4 <aw8693x_container_update+0x104>
		0000000000005ca4:  R_AARCH64_CALL26	i2c_r_bytes
    5ca8: 394003e8     	ldrb	w8, [sp]
    5cac: 394007e4     	ldrb	w4, [sp, #0x1]
    5cb0: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7a
    5cb4: 91000000     	add	x0, x0, #0x0
		0000000000005cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7a
    5cb8: aa1603e1     	mov	x1, x22
    5cbc: 5280cca2     	mov	w2, #0x665              // =1637
    5cc0: 53047d08     	lsr	w8, w8, #4
    5cc4: aa1503e3     	mov	x3, x21
    5cc8: 33180d04     	bfi	w4, w8, #8, #4
    5ccc: 94000000     	bl	0x5ccc <aw8693x_container_update+0x12c>
		0000000000005ccc:  R_AARCH64_CALL26	_printk
    5cd0: 394003e8     	ldrb	w8, [sp]
    5cd4: 39400be4     	ldrb	w4, [sp, #0x2]
    5cd8: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x697
    5cdc: 91000000     	add	x0, x0, #0x0
		0000000000005cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x697
    5ce0: aa1603e1     	mov	x1, x22
    5ce4: 5280cd02     	mov	w2, #0x668              // =1640
    5ce8: 33180d04     	bfi	w4, w8, #8, #4
    5cec: aa1503e3     	mov	x3, x21
    5cf0: 94000000     	bl	0x5cf0 <aw8693x_container_update+0x150>
		0000000000005cf0:  R_AARCH64_CALL26	_printk
    5cf4: b9445a68     	ldr	w8, [x19, #0x458]
    5cf8: aa1303e0     	mov	x0, x19
    5cfc: 528005a1     	mov	w1, #0x2d               // =45
    5d00: 128003e2     	mov	w2, #-0x20              // =-32
    5d04: 910013f5     	add	x21, sp, #0x4
    5d08: 5ac00909     	rev	w9, w8
    5d0c: 53087d03     	lsr	w3, w8, #8
    5d10: 53107d29     	lsr	w9, w9, #16
    5d14: 79000be9     	strh	w9, [sp, #0x4]
    5d18: 94000000     	bl	0x5d18 <aw8693x_container_update+0x178>
		0000000000005d18:  R_AARCH64_CALL26	i2c_w_bits
    5d1c: b24002a2     	orr	x2, x21, #0x1
    5d20: aa1303e0     	mov	x0, x19
    5d24: 528005c1     	mov	w1, #0x2e               // =46
    5d28: 52800023     	mov	w3, #0x1                // =1
    5d2c: 94000000     	bl	0x5d2c <aw8693x_container_update+0x18c>
		0000000000005d2c:  R_AARCH64_CALL26	i2c_w_bytes
    5d30: 7948b268     	ldrh	w8, [x19, #0x458]
    5d34: 910013e2     	add	x2, sp, #0x4
    5d38: aa1303e0     	mov	x0, x19
    5d3c: 52800801     	mov	w1, #0x40               // =64
    5d40: 52800043     	mov	w3, #0x2                // =2
    5d44: 5ac00908     	rev	w8, w8
    5d48: 53107d08     	lsr	w8, w8, #16
    5d4c: 79000be8     	strh	w8, [sp, #0x4]
    5d50: 94000000     	bl	0x5d50 <aw8693x_container_update+0x1b0>
		0000000000005d50:  R_AARCH64_CALL26	i2c_w_bytes
    5d54: 39517a76     	ldrb	w22, [x19, #0x45e]
    5d58: b9400288     	ldr	w8, [x20]
    5d5c: 6b16011f     	cmp	w8, w22
    5d60: 540001cd     	b.le	0x5d98 <aw8693x_container_update+0x1f8>
    5d64: 52810018     	mov	w24, #0x800             // =2048
    5d68: 4b160108     	sub	w8, w8, w22
    5d6c: 8b36c2e2     	add	x2, x23, w22, sxtw
    5d70: aa1303e0     	mov	x0, x19
    5d74: 7120011f     	cmp	w8, #0x800
    5d78: 52800841     	mov	w1, #0x42               // =66
    5d7c: 1a98b115     	csel	w21, w8, w24, lt
    5d80: 2a1503e3     	mov	w3, w21
    5d84: 94000000     	bl	0x5d84 <aw8693x_container_update+0x1e4>
		0000000000005d84:  R_AARCH64_CALL26	i2c_w_bytes
    5d88: b9400288     	ldr	w8, [x20]
    5d8c: 0b1602b6     	add	w22, w21, w22
    5d90: 6b0802df     	cmp	w22, w8
    5d94: 54fffeab     	b.lt	0x5d68 <aw8693x_container_update+0x1c8>
    5d98: 7948b268     	ldrh	w8, [x19, #0x458]
    5d9c: 910013e2     	add	x2, sp, #0x4
    5da0: aa1303e0     	mov	x0, x19
    5da4: 52800801     	mov	w1, #0x40               // =64
    5da8: 52800043     	mov	w3, #0x2                // =2
    5dac: 5ac00908     	rev	w8, w8
    5db0: 53107d08     	lsr	w8, w8, #16
    5db4: 79000be8     	strh	w8, [sp, #0x4]
    5db8: 94000000     	bl	0x5db8 <aw8693x_container_update+0x218>
		0000000000005db8:  R_AARCH64_CALL26	i2c_w_bytes
    5dbc: 39517a76     	ldrb	w22, [x19, #0x45e]
    5dc0: b9400288     	ldr	w8, [x20]
    5dc4: 6b16011f     	cmp	w8, w22
    5dc8: 540003ad     	b.le	0x5e3c <aw8693x_container_update+0x29c>
    5dcc: 52808018     	mov	w24, #0x400             // =1024
    5dd0: 910023f9     	add	x25, sp, #0x8
    5dd4: 4b16011a     	sub	w26, w8, w22
    5dd8: 910023e2     	add	x2, sp, #0x8
    5ddc: aa1303e0     	mov	x0, x19
    5de0: 7110035f     	cmp	w26, #0x400
    5de4: 52800841     	mov	w1, #0x42               // =66
    5de8: 1a98b355     	csel	w21, w26, w24, lt
    5dec: 2a1503e3     	mov	w3, w21
    5df0: 94000000     	bl	0x5df0 <aw8693x_container_update+0x250>
		0000000000005df0:  R_AARCH64_CALL26	i2c_r_bytes
    5df4: 93407f49     	sxtw	x9, w26
    5df8: 8b36c2e8     	add	x8, x23, w22, sxtw
    5dfc: aa1f03e4     	mov	x4, xzr
    5e00: f110013f     	cmp	x9, #0x400
    5e04: 9a98b129     	csel	x9, x9, x24, lt
    5e08: 7110009f     	cmp	w4, #0x400
    5e0c: 540007a2     	b.hs	0x5f00 <aw8693x_container_update+0x360>
    5e10: 38646b25     	ldrb	w5, [x25, x4]
    5e14: 38646906     	ldrb	w6, [x8, x4]
    5e18: 6b0600bf     	cmp	w5, w6
    5e1c: 54000241     	b.ne	0x5e64 <aw8693x_container_update+0x2c4>
    5e20: 91000484     	add	x4, x4, #0x1
    5e24: 6b04013f     	cmp	w9, w4
    5e28: 54ffff01     	b.ne	0x5e08 <aw8693x_container_update+0x268>
    5e2c: b9400288     	ldr	w8, [x20]
    5e30: 0b1602b6     	add	w22, w21, w22
    5e34: 6b0802df     	cmp	w22, w8
    5e38: 54fffceb     	b.lt	0x5dd4 <aw8693x_container_update+0x234>
    5e3c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a04
    5e40: 91000000     	add	x0, x0, #0x0
		0000000000005e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a04
    5e44: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5e48: 91000021     	add	x1, x1, #0x0
		0000000000005e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5e4c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd
    5e50: 91000063     	add	x3, x3, #0x0
		0000000000005e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd
    5e54: 5280d122     	mov	w2, #0x689              // =1673
    5e58: 94000000     	bl	0x5e58 <aw8693x_container_update+0x2b8>
		0000000000005e58:  R_AARCH64_CALL26	_printk
    5e5c: 2a1f03f4     	mov	w20, wzr
    5e60: 14000012     	b	0x5ea8 <aw8693x_container_update+0x308>
    5e64: 90000014     	adrp	x20, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5e68: 91000294     	add	x20, x20, #0x0
		0000000000005e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5e6c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6
    5e70: 91000000     	add	x0, x0, #0x0
		0000000000005e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6
    5e74: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a8
    5e78: 91000063     	add	x3, x3, #0x0
		0000000000005e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a8
    5e7c: aa1403e1     	mov	x1, x20
    5e80: 5280c602     	mov	w2, #0x630              // =1584
    5e84: 94000000     	bl	0x5e84 <aw8693x_container_update+0x2e4>
		0000000000005e84:  R_AARCH64_CALL26	_printk
    5e88: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79b
    5e8c: 91000000     	add	x0, x0, #0x0
		0000000000005e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79b
    5e90: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd
    5e94: 91000063     	add	x3, x3, #0x0
		0000000000005e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd
    5e98: aa1403e1     	mov	x1, x20
    5e9c: 5280d0e2     	mov	w2, #0x687              // =1671
    5ea0: 94000000     	bl	0x5ea0 <aw8693x_container_update+0x300>
		0000000000005ea0:  R_AARCH64_CALL26	_printk
    5ea4: 12800434     	mov	w20, #-0x22             // =-34
    5ea8: aa1303e0     	mov	x0, x19
    5eac: 528008a1     	mov	w1, #0x45               // =69
    5eb0: 12800082     	mov	w2, #-0x5               // =-5
    5eb4: 2a1f03e3     	mov	w3, wzr
    5eb8: 94000000     	bl	0x5eb8 <aw8693x_container_update+0x318>
		0000000000005eb8:  R_AARCH64_CALL26	i2c_w_bits
    5ebc: 910bc260     	add	x0, x19, #0x2f0
    5ec0: 94000000     	bl	0x5ec0 <aw8693x_container_update+0x320>
		0000000000005ec0:  R_AARCH64_CALL26	mutex_unlock
    5ec4: d5384108     	mrs	x8, SP_EL0
    5ec8: f9438908     	ldr	x8, [x8, #0x710]
    5ecc: f85f83a9     	ldur	x9, [x29, #-0x8]
    5ed0: eb09011f     	cmp	x8, x9
    5ed4: 54000181     	b.ne	0x5f04 <aw8693x_container_update+0x364>
    5ed8: 2a1403e0     	mov	w0, w20
    5edc: 911043ff     	add	sp, sp, #0x410
    5ee0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    5ee4: f9400bfc     	ldr	x28, [sp, #0x10]
    5ee8: a94457f6     	ldp	x22, x21, [sp, #0x40]
    5eec: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    5ef0: a94267fa     	ldp	x26, x25, [sp, #0x20]
    5ef4: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    5ef8: d50323bf     	autiasp
    5efc: d65f03c0     	ret
    5f00: d4200020     	brk	#0x1
    5f04: 94000000     	bl	0x5f04 <aw8693x_container_update+0x364>
		0000000000005f04:  R_AARCH64_CALL26	__stack_chk_fail
