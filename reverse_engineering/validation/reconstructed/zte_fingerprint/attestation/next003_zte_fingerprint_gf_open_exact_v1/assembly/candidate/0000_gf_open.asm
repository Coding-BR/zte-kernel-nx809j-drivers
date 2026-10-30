
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d2c <gf_open>:
     d2c: d503233f     	paciasp
     d30: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     d34: a9015ff8     	stp	x24, x23, [sp, #0x10]
     d38: a90257f6     	stp	x22, x21, [sp, #0x20]
     d3c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     d40: 910003fd     	mov	x29, sp
     d44: aa0103f5     	mov	x21, x1
     d48: aa0003f6     	mov	x22, x0
     d4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x320
     d50: 91000000     	add	x0, x0, #0x0
		0000000000000d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x320
     d54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba4
     d58: 91000021     	add	x1, x1, #0x0
		0000000000000d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba4
     d5c: 94000000     	bl	0xd5c <gf_open+0x30>
		0000000000000d5c:  R_AARCH64_CALL26	_printk
     d60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d60:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     d64: 91000000     	add	x0, x0, #0x0
		0000000000000d64:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     d68: 94000000     	bl	0xd68 <gf_open+0x3c>
		0000000000000d68:  R_AARCH64_CALL26	mutex_lock
     d6c: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000d6c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     d70: 91000318     	add	x24, x24, #0x0
		0000000000000d70:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     d74: aa1803f7     	mov	x23, x24
     d78: f94002f7     	ldr	x23, [x23]
     d7c: eb1802ff     	cmp	x23, x24
     d80: d10022f3     	sub	x19, x23, #0x8
     d84: 54000140     	b.eq	0xdac <gf_open+0x80>
     d88: b9400268     	ldr	w8, [x19]
     d8c: b9404ec9     	ldr	w9, [x22, #0x4c]
     d90: 6b09011f     	cmp	w8, w9
     d94: 54ffff21     	b.ne	0xd78 <gf_open+0x4c>
     d98: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33e
     d9c: 91000000     	add	x0, x0, #0x0
		0000000000000d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33e
     da0: 94000000     	bl	0xda0 <gf_open+0x74>
		0000000000000da0:  R_AARCH64_CALL26	_printk
     da4: 2a1f03f4     	mov	w20, wzr
     da8: 14000002     	b	0xdb0 <gf_open+0x84>
     dac: 128000b4     	mov	w20, #-0x6              // =-6
     db0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000db0:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     db4: 91000000     	add	x0, x0, #0x0
		0000000000000db4:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     db8: 94000000     	bl	0xdb8 <gf_open+0x8c>
		0000000000000db8:  R_AARCH64_CALL26	zlog_register_client
     dbc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f5
     dc0: 91000108     	add	x8, x8, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f5
     dc4: f100001f     	cmp	x0, #0x0
     dc8: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb06
     dcc: 91000129     	add	x9, x9, #0x0
		0000000000000dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb06
     dd0: f9003ae0     	str	x0, [x23, #0x70]
     dd4: 9a880120     	csel	x0, x9, x8, eq
     dd8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba4
     ddc: 91000021     	add	x1, x1, #0x0
		0000000000000ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba4
     de0: 94000000     	bl	0xde0 <gf_open+0xb4>
		0000000000000de0:  R_AARCH64_CALL26	_printk
     de4: eb1802ff     	cmp	x23, x24
     de8: 540001e1     	b.ne	0xe24 <gf_open+0xf8>
     dec: b9404ec8     	ldr	w8, [x22, #0x4c]
     df0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6
     df4: 91000000     	add	x0, x0, #0x0
		0000000000000df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6
     df8: 12004d01     	and	w1, w8, #0xfffff
     dfc: 94000000     	bl	0xdfc <gf_open+0xd0>
		0000000000000dfc:  R_AARCH64_CALL26	_printk
     e00: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     e04: 91000000     	add	x0, x0, #0x0
		0000000000000e04:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     e08: 94000000     	bl	0xe08 <gf_open+0xdc>
		0000000000000e08:  R_AARCH64_CALL26	mutex_unlock
     e0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x89c
     e10: 91000000     	add	x0, x0, #0x0
		0000000000000e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x89c
     e14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba4
     e18: 91000021     	add	x1, x1, #0x0
		0000000000000e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba4
     e1c: 94000000     	bl	0xe1c <gf_open+0xf0>
		0000000000000e1c:  R_AARCH64_CALL26	_printk
     e20: 14000016     	b	0xe78 <gf_open+0x14c>
     e24: b94032e8     	ldr	w8, [x23, #0x30]
     e28: aa1603e0     	mov	x0, x22
     e2c: aa1503e1     	mov	x1, x21
     e30: 11000508     	add	w8, w8, #0x1
     e34: b90032e8     	str	w8, [x23, #0x30]
     e38: f90012b3     	str	x19, [x21, #0x20]
     e3c: 94000000     	bl	0xe3c <gf_open+0x110>
		0000000000000e3c:  R_AARCH64_CALL26	nonseekable_open
     e40: b94042e1     	ldr	w1, [x23, #0x40]
     e44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ae
     e48: 91000000     	add	x0, x0, #0x0
		0000000000000e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ae
     e4c: 94000000     	bl	0xe4c <gf_open+0x120>
		0000000000000e4c:  R_AARCH64_CALL26	_printk
     e50: b94032e8     	ldr	w8, [x23, #0x30]
     e54: 7100051f     	cmp	w8, #0x1
     e58: 540004c1     	b.ne	0xef0 <gf_open+0x1c4>
     e5c: aa1303e0     	mov	x0, x19
     e60: 94000000     	bl	0xe60 <gf_open+0x134>
		0000000000000e60:  R_AARCH64_CALL26	gf_parse_dts
     e64: 2a0003f4     	mov	w20, w0
     e68: 34000160     	cbz	w0, 0xe94 <gf_open+0x168>
     e6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e6c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     e70: 91000000     	add	x0, x0, #0x0
		0000000000000e70:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     e74: 94000000     	bl	0xe74 <gf_open+0x148>
		0000000000000e74:  R_AARCH64_CALL26	mutex_unlock
     e78: 2a1403e0     	mov	w0, w20
     e7c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     e80: a94257f6     	ldp	x22, x21, [sp, #0x20]
     e84: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     e88: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     e8c: d50323bf     	autiasp
     e90: d65f03c0     	ret
     e94: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd85
     e98: 91000000     	add	x0, x0, #0x0
		0000000000000e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd85
     e9c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x432
     ea0: 91000021     	add	x1, x1, #0x0
		0000000000000ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x432
     ea4: 94000000     	bl	0xea4 <gf_open+0x178>
		0000000000000ea4:  R_AARCH64_CALL26	_printk
     ea8: aa1303e0     	mov	x0, x19
     eac: 94000000     	bl	0xeac <gf_open+0x180>
		0000000000000eac:  R_AARCH64_CALL26	gf_irq_num
     eb0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000eb0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x15b8
     eb4: 91000042     	add	x2, x2, #0x0
		0000000000000eb4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x15b8
     eb8: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xced
     ebc: 91000084     	add	x4, x4, #0x0
		0000000000000ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xced
     ec0: aa1f03e1     	mov	x1, xzr
     ec4: 52840023     	mov	w3, #0x2001             // =8193
     ec8: aa1303e5     	mov	x5, x19
     ecc: b90042e0     	str	w0, [x23, #0x40]
     ed0: 94000000     	bl	0xed0 <gf_open+0x1a4>
		0000000000000ed0:  R_AARCH64_CALL26	request_threaded_irq
     ed4: b94042e1     	ldr	w1, [x23, #0x40]
     ed8: 350001a0     	cbnz	w0, 0xf0c <gf_open+0x1e0>
     edc: 2a0103e0     	mov	w0, w1
     ee0: 52800021     	mov	w1, #0x1                // =1
     ee4: 52800034     	mov	w20, #0x1               // =1
     ee8: 94000000     	bl	0xee8 <gf_open+0x1bc>
		0000000000000ee8:  R_AARCH64_CALL26	irq_set_irq_wake
     eec: b90046f4     	str	w20, [x23, #0x44]
     ef0: aa1303e0     	mov	x0, x19
     ef4: 528000a1     	mov	w1, #0x5                // =5
     ef8: 94000000     	bl	0xef8 <gf_open+0x1cc>
		0000000000000ef8:  R_AARCH64_CALL26	gf_hw_reset
     efc: 52800028     	mov	w8, #0x1                // =1
     f00: 2a1f03f4     	mov	w20, wzr
     f04: 3901a2e8     	strb	w8, [x23, #0x68]
     f08: 17ffffbe     	b	0xe00 <gf_open+0xd4>
     f0c: 2a0003f4     	mov	w20, w0
     f10: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x358
     f14: 91000000     	add	x0, x0, #0x0
		0000000000000f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x358
     f18: 94000000     	bl	0xf18 <gf_open+0x1ec>
		0000000000000f18:  R_AARCH64_CALL26	_printk
     f1c: aa1303e0     	mov	x0, x19
     f20: 94000000     	bl	0xf20 <gf_open+0x1f4>
		0000000000000f20:  R_AARCH64_CALL26	gf_cleanup
     f24: 17ffffd2     	b	0xe6c <gf_open+0x140>
