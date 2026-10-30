
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005bd0 <aw8693x_container_update>:
    5bd0: d503233f     	paciasp
    5bd4: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    5bd8: f9000bfc     	str	x28, [sp, #0x10]
    5bdc: a90267fa     	stp	x26, x25, [sp, #0x20]
    5be0: a9035ff8     	stp	x24, x23, [sp, #0x30]
    5be4: a90457f6     	stp	x22, x21, [sp, #0x40]
    5be8: a9054ff4     	stp	x20, x19, [sp, #0x50]
    5bec: 910003fd     	mov	x29, sp
    5bf0: d11043ff     	sub	sp, sp, #0x410
    5bf4: d5384108     	mrs	x8, SP_EL0
    5bf8: aa0103f4     	mov	x20, x1
    5bfc: aa0003f3     	mov	x19, x0
    5c00: f9438908     	ldr	x8, [x8, #0x710]
    5c04: 910023e0     	add	x0, sp, #0x8
    5c08: 2a1f03e1     	mov	w1, wzr
    5c0c: 52808002     	mov	w2, #0x400              // =1024
    5c10: f81f83a8     	stur	x8, [x29, #-0x8]
    5c14: 94000000     	bl	0x5c14 <aw8693x_container_update+0x44>
		0000000000005c14:  R_AARCH64_CALL26	memset
    5c18: 910bc260     	add	x0, x19, #0x2f0
    5c1c: 94000000     	bl	0x5c1c <aw8693x_container_update+0x4c>
		0000000000005c1c:  R_AARCH64_CALL26	mutex_lock
    5c20: 52804088     	mov	w8, #0x204              // =516
    5c24: aa1303e0     	mov	x0, x19
    5c28: 7908be68     	strh	w8, [x19, #0x45e]
    5c2c: 94000000     	bl	0x5c2c <aw8693x_container_update+0x5c>
		0000000000005c2c:  R_AARCH64_CALL26	aw8693x_stop
    5c30: aa1303e0     	mov	x0, x19
    5c34: 528008a1     	mov	w1, #0x45               // =69
    5c38: 12800082     	mov	w2, #-0x5               // =-5
    5c3c: 52800083     	mov	w3, #0x4                // =4
    5c40: 94000000     	bl	0x5c40 <aw8693x_container_update+0x70>
		0000000000005c40:  R_AARCH64_CALL26	i2c_w_bits
    5c44: 52803e80     	mov	w0, #0x1f4              // =500
    5c48: 52804b01     	mov	w1, #0x258              // =600
    5c4c: 52800042     	mov	w2, #0x2                // =2
    5c50: 94000000     	bl	0x5c50 <aw8693x_container_update+0x80>
		0000000000005c50:  R_AARCH64_CALL26	usleep_range_state
    5c54: 39517e68     	ldrb	w8, [x19, #0x45f]
    5c58: 91001297     	add	x23, x20, #0x4
    5c5c: 90000016     	adrp	x22, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5c60: 910002d6     	add	x22, x22, #0x0
		0000000000005c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5c64: 90000015     	adrp	x21, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd
    5c68: 910002b5     	add	x21, x21, #0x0
		0000000000005c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd
    5c6c: 78686ae8     	ldrh	w8, [x23, x8]
    5c70: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x238
    5c74: 91000000     	add	x0, x0, #0x0
		0000000000005c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x238
    5c78: aa1603e1     	mov	x1, x22
    5c7c: 5280cae2     	mov	w2, #0x657              // =1623
    5c80: aa1503e3     	mov	x3, x21
    5c84: 5ac00504     	rev16	w4, w8
    5c88: b9045a64     	str	w4, [x19, #0x458]
    5c8c: 94000000     	bl	0x5c8c <aw8693x_container_update+0xbc>
		0000000000005c8c:  R_AARCH64_CALL26	_printk
    5c90: b9445a68     	ldr	w8, [x19, #0x458]
    5c94: 910003e2     	mov	x2, sp
    5c98: aa1303e0     	mov	x0, x19
    5c9c: 528005e1     	mov	w1, #0x2f               // =47
    5ca0: 52800063     	mov	w3, #0x3                // =3
    5ca4: 53057d09     	lsr	w9, w8, #5
    5ca8: 4b48090a     	sub	w10, w8, w8, lsr #2
    5cac: 53017d08     	lsr	w8, w8, #1
    5cb0: 33082d49     	bfxil	w9, w10, #8, #4
    5cb4: 390007e8     	strb	w8, [sp, #0x1]
    5cb8: 39000bea     	strb	w10, [sp, #0x2]
    5cbc: 390003e9     	strb	w9, [sp]
    5cc0: 94000000     	bl	0x5cc0 <aw8693x_container_update+0xf0>
		0000000000005cc0:  R_AARCH64_CALL26	i2c_w_bytes
    5cc4: 910003e2     	mov	x2, sp
    5cc8: aa1303e0     	mov	x0, x19
    5ccc: 528005e1     	mov	w1, #0x2f               // =47
    5cd0: 52800063     	mov	w3, #0x3                // =3
    5cd4: 94000000     	bl	0x5cd4 <aw8693x_container_update+0x104>
		0000000000005cd4:  R_AARCH64_CALL26	i2c_r_bytes
    5cd8: 394003e8     	ldrb	w8, [sp]
    5cdc: 394007e4     	ldrb	w4, [sp, #0x1]
    5ce0: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005ce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x896
    5ce4: 91000000     	add	x0, x0, #0x0
		0000000000005ce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x896
    5ce8: aa1603e1     	mov	x1, x22
    5cec: 5280cca2     	mov	w2, #0x665              // =1637
    5cf0: 53047d08     	lsr	w8, w8, #4
    5cf4: aa1503e3     	mov	x3, x21
    5cf8: 33180d04     	bfi	w4, w8, #8, #4
    5cfc: 94000000     	bl	0x5cfc <aw8693x_container_update+0x12c>
		0000000000005cfc:  R_AARCH64_CALL26	_printk
    5d00: 394003e8     	ldrb	w8, [sp]
    5d04: 39400be4     	ldrb	w4, [sp, #0x2]
    5d08: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x510
    5d0c: 91000000     	add	x0, x0, #0x0
		0000000000005d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x510
    5d10: aa1603e1     	mov	x1, x22
    5d14: 5280cd02     	mov	w2, #0x668              // =1640
    5d18: 33180d04     	bfi	w4, w8, #8, #4
    5d1c: aa1503e3     	mov	x3, x21
    5d20: 94000000     	bl	0x5d20 <aw8693x_container_update+0x150>
		0000000000005d20:  R_AARCH64_CALL26	_printk
    5d24: b9445a68     	ldr	w8, [x19, #0x458]
    5d28: aa1303e0     	mov	x0, x19
    5d2c: 528005a1     	mov	w1, #0x2d               // =45
    5d30: 128003e2     	mov	w2, #-0x20              // =-32
    5d34: 910013f5     	add	x21, sp, #0x4
    5d38: 5ac00909     	rev	w9, w8
    5d3c: 53087d03     	lsr	w3, w8, #8
    5d40: 53107d29     	lsr	w9, w9, #16
    5d44: 79000be9     	strh	w9, [sp, #0x4]
    5d48: 94000000     	bl	0x5d48 <aw8693x_container_update+0x178>
		0000000000005d48:  R_AARCH64_CALL26	i2c_w_bits
    5d4c: b24002a2     	orr	x2, x21, #0x1
    5d50: aa1303e0     	mov	x0, x19
    5d54: 528005c1     	mov	w1, #0x2e               // =46
    5d58: 52800023     	mov	w3, #0x1                // =1
    5d5c: 94000000     	bl	0x5d5c <aw8693x_container_update+0x18c>
		0000000000005d5c:  R_AARCH64_CALL26	i2c_w_bytes
    5d60: 7948b268     	ldrh	w8, [x19, #0x458]
    5d64: 910013e2     	add	x2, sp, #0x4
    5d68: aa1303e0     	mov	x0, x19
    5d6c: 52800801     	mov	w1, #0x40               // =64
    5d70: 52800043     	mov	w3, #0x2                // =2
    5d74: 5ac00908     	rev	w8, w8
    5d78: 53107d08     	lsr	w8, w8, #16
    5d7c: 79000be8     	strh	w8, [sp, #0x4]
    5d80: 94000000     	bl	0x5d80 <aw8693x_container_update+0x1b0>
		0000000000005d80:  R_AARCH64_CALL26	i2c_w_bytes
    5d84: 39517a76     	ldrb	w22, [x19, #0x45e]
    5d88: b9400288     	ldr	w8, [x20]
    5d8c: 6b16011f     	cmp	w8, w22
    5d90: 540001cd     	b.le	0x5dc8 <aw8693x_container_update+0x1f8>
    5d94: 52810018     	mov	w24, #0x800             // =2048
    5d98: 4b160108     	sub	w8, w8, w22
    5d9c: 8b36c2e2     	add	x2, x23, w22, sxtw
    5da0: aa1303e0     	mov	x0, x19
    5da4: 7120011f     	cmp	w8, #0x800
    5da8: 52800841     	mov	w1, #0x42               // =66
    5dac: 1a98b115     	csel	w21, w8, w24, lt
    5db0: 2a1503e3     	mov	w3, w21
    5db4: 94000000     	bl	0x5db4 <aw8693x_container_update+0x1e4>
		0000000000005db4:  R_AARCH64_CALL26	i2c_w_bytes
    5db8: b9400288     	ldr	w8, [x20]
    5dbc: 0b1602b6     	add	w22, w21, w22
    5dc0: 6b0802df     	cmp	w22, w8
    5dc4: 54fffeab     	b.lt	0x5d98 <aw8693x_container_update+0x1c8>
    5dc8: 7948b268     	ldrh	w8, [x19, #0x458]
    5dcc: 910013e2     	add	x2, sp, #0x4
    5dd0: aa1303e0     	mov	x0, x19
    5dd4: 52800801     	mov	w1, #0x40               // =64
    5dd8: 52800043     	mov	w3, #0x2                // =2
    5ddc: 5ac00908     	rev	w8, w8
    5de0: 53107d08     	lsr	w8, w8, #16
    5de4: 79000be8     	strh	w8, [sp, #0x4]
    5de8: 94000000     	bl	0x5de8 <aw8693x_container_update+0x218>
		0000000000005de8:  R_AARCH64_CALL26	i2c_w_bytes
    5dec: 39517a76     	ldrb	w22, [x19, #0x45e]
    5df0: b9400288     	ldr	w8, [x20]
    5df4: 6b16011f     	cmp	w8, w22
    5df8: 540003ad     	b.le	0x5e6c <aw8693x_container_update+0x29c>
    5dfc: 52808018     	mov	w24, #0x400             // =1024
    5e00: 910023f9     	add	x25, sp, #0x8
    5e04: 4b16011a     	sub	w26, w8, w22
    5e08: 910023e2     	add	x2, sp, #0x8
    5e0c: aa1303e0     	mov	x0, x19
    5e10: 7110035f     	cmp	w26, #0x400
    5e14: 52800841     	mov	w1, #0x42               // =66
    5e18: 1a98b355     	csel	w21, w26, w24, lt
    5e1c: 2a1503e3     	mov	w3, w21
    5e20: 94000000     	bl	0x5e20 <aw8693x_container_update+0x250>
		0000000000005e20:  R_AARCH64_CALL26	i2c_r_bytes
    5e24: 93407f49     	sxtw	x9, w26
    5e28: 8b36c2e8     	add	x8, x23, w22, sxtw
    5e2c: aa1f03e4     	mov	x4, xzr
    5e30: f110013f     	cmp	x9, #0x400
    5e34: 9a98b129     	csel	x9, x9, x24, lt
    5e38: 7110009f     	cmp	w4, #0x400
    5e3c: 540007a2     	b.hs	0x5f30 <aw8693x_container_update+0x360>
    5e40: 38646b25     	ldrb	w5, [x25, x4]
    5e44: 38646906     	ldrb	w6, [x8, x4]
    5e48: 6b0600bf     	cmp	w5, w6
    5e4c: 54000241     	b.ne	0x5e94 <aw8693x_container_update+0x2c4>
    5e50: 91000484     	add	x4, x4, #0x1
    5e54: 6b04013f     	cmp	w9, w4
    5e58: 54ffff01     	b.ne	0x5e38 <aw8693x_container_update+0x268>
    5e5c: b9400288     	ldr	w8, [x20]
    5e60: 0b1602b6     	add	w22, w21, w22
    5e64: 6b0802df     	cmp	w22, w8
    5e68: 54fffceb     	b.lt	0x5e04 <aw8693x_container_update+0x234>
    5e6c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ab
    5e70: 91000000     	add	x0, x0, #0x0
		0000000000005e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ab
    5e74: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5e78: 91000021     	add	x1, x1, #0x0
		0000000000005e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5e7c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd
    5e80: 91000063     	add	x3, x3, #0x0
		0000000000005e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd
    5e84: 5280d122     	mov	w2, #0x689              // =1673
    5e88: 94000000     	bl	0x5e88 <aw8693x_container_update+0x2b8>
		0000000000005e88:  R_AARCH64_CALL26	_printk
    5e8c: 2a1f03f4     	mov	w20, wzr
    5e90: 14000012     	b	0x5ed8 <aw8693x_container_update+0x308>
    5e94: 90000014     	adrp	x20, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5e98: 91000294     	add	x20, x20, #0x0
		0000000000005e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5e9c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6
    5ea0: 91000000     	add	x0, x0, #0x0
		0000000000005ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6
    5ea4: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1015
    5ea8: 91000063     	add	x3, x3, #0x0
		0000000000005ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1015
    5eac: aa1403e1     	mov	x1, x20
    5eb0: 5280c602     	mov	w2, #0x630              // =1584
    5eb4: 94000000     	bl	0x5eb4 <aw8693x_container_update+0x2e4>
		0000000000005eb4:  R_AARCH64_CALL26	_printk
    5eb8: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b2
    5ebc: 91000000     	add	x0, x0, #0x0
		0000000000005ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b2
    5ec0: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005ec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd
    5ec4: 91000063     	add	x3, x3, #0x0
		0000000000005ec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd
    5ec8: aa1403e1     	mov	x1, x20
    5ecc: 5280d0e2     	mov	w2, #0x687              // =1671
    5ed0: 94000000     	bl	0x5ed0 <aw8693x_container_update+0x300>
		0000000000005ed0:  R_AARCH64_CALL26	_printk
    5ed4: 12800434     	mov	w20, #-0x22             // =-34
    5ed8: aa1303e0     	mov	x0, x19
    5edc: 528008a1     	mov	w1, #0x45               // =69
    5ee0: 12800082     	mov	w2, #-0x5               // =-5
    5ee4: 2a1f03e3     	mov	w3, wzr
    5ee8: 94000000     	bl	0x5ee8 <aw8693x_container_update+0x318>
		0000000000005ee8:  R_AARCH64_CALL26	i2c_w_bits
    5eec: 910bc260     	add	x0, x19, #0x2f0
    5ef0: 94000000     	bl	0x5ef0 <aw8693x_container_update+0x320>
		0000000000005ef0:  R_AARCH64_CALL26	mutex_unlock
    5ef4: d5384108     	mrs	x8, SP_EL0
    5ef8: f9438908     	ldr	x8, [x8, #0x710]
    5efc: f85f83a9     	ldur	x9, [x29, #-0x8]
    5f00: eb09011f     	cmp	x8, x9
    5f04: 54000181     	b.ne	0x5f34 <aw8693x_container_update+0x364>
    5f08: 2a1403e0     	mov	w0, w20
    5f0c: 911043ff     	add	sp, sp, #0x410
    5f10: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    5f14: f9400bfc     	ldr	x28, [sp, #0x10]
    5f18: a94457f6     	ldp	x22, x21, [sp, #0x40]
    5f1c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    5f20: a94267fa     	ldp	x26, x25, [sp, #0x20]
    5f24: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    5f28: d50323bf     	autiasp
    5f2c: d65f03c0     	ret
    5f30: d4200020     	brk	#0x1
    5f34: 94000000     	bl	0x5f34 <aw8693x_container_update+0x364>
		0000000000005f34:  R_AARCH64_CALL26	__stack_chk_fail
