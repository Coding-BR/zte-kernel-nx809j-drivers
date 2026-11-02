
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b5c <gf_parse_dts>:
    1b5c: d503233f     	paciasp
    1b60: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1b64: a90157f6     	stp	x22, x21, [sp, #0x10]
    1b68: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1b6c: 910003fd     	mov	x29, sp
    1b70: f9400c16     	ldr	x22, [x0, #0x18]
    1b74: aa0003f3     	mov	x19, x0
    1b78: f9417ed5     	ldr	x21, [x22, #0x2f8]
    1b7c: 94000000     	bl	0x1b7c <gf_parse_dts+0x20>
		0000000000001b7c:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    1b80: 2a0003f4     	mov	w20, w0
    1b84: 35000060     	cbnz	w0, 0x1b90 <gf_parse_dts+0x34>
    1b88: f9404268     	ldr	x8, [x19, #0x80]
    1b8c: b5000268     	cbnz	x8, 0x1bd8 <gf_parse_dts+0x7c>
    1b90: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9b
    1b94: 91000000     	add	x0, x0, #0x0
		0000000000001b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9b
    1b98: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1b9c: 91000021     	add	x1, x1, #0x0
		0000000000001b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1ba0: 2a1403e2     	mov	w2, w20
    1ba4: 94000000     	bl	0x1ba4 <gf_parse_dts+0x48>
		0000000000001ba4:  R_AARCH64_CALL26	_printk
    1ba8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d4
    1bac: 91000000     	add	x0, x0, #0x0
		0000000000001bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d4
    1bb0: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1bb4: 91000021     	add	x1, x1, #0x0
		0000000000001bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1bb8: 2a1403e2     	mov	w2, w20
    1bbc: 94000000     	bl	0x1bbc <gf_parse_dts+0x60>
		0000000000001bbc:  R_AARCH64_CALL26	_printk
    1bc0: 2a1403e0     	mov	w0, w20
    1bc4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1bc8: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1bcc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1bd0: d50323bf     	autiasp
    1bd4: d65f03c0     	ret
    1bd8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee
    1bdc: 91000000     	add	x0, x0, #0x0
		0000000000001bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee
    1be0: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x743
    1be4: 91000021     	add	x1, x1, #0x0
		0000000000001be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x743
    1be8: 2a1f03e2     	mov	w2, wzr
    1bec: 94000000     	bl	0x1bec <gf_parse_dts+0x90>
		0000000000001bec:  R_AARCH64_CALL26	_printk
    1bf0: f9404a61     	ldr	x1, [x19, #0x90]
    1bf4: b40004c1     	cbz	x1, 0x1c8c <gf_parse_dts+0x130>
    1bf8: b13ffc3f     	cmn	x1, #0xfff
    1bfc: 54000482     	b.hs	0x1c8c <gf_parse_dts+0x130>
    1c00: f9404260     	ldr	x0, [x19, #0x80]
    1c04: 94000000     	bl	0x1c04 <gf_parse_dts+0xa8>
		0000000000001c04:  R_AARCH64_CALL26	pinctrl_select_state
    1c08: 34000140     	cbz	w0, 0x1c30 <gf_parse_dts+0xd4>
    1c0c: f9400e68     	ldr	x8, [x19, #0x18]
    1c10: 2a0003f4     	mov	w20, w0
    1c14: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb21
    1c18: 91000021     	add	x1, x1, #0x0
		0000000000001c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb21
    1c1c: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2cc>
		0000000000001c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1528
    1c20: 91000042     	add	x2, x2, #0x0
		0000000000001c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1528
    1c24: 91004100     	add	x0, x8, #0x10
    1c28: 94000000     	bl	0x1c28 <gf_parse_dts+0xcc>
		0000000000001c28:  R_AARCH64_CALL26	_dev_err
    1c2c: 37f80414     	tbnz	w20, #0x1f, 0x1cac <gf_parse_dts+0x150>
    1c30: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x205
    1c34: 91000000     	add	x0, x0, #0x0
		0000000000001c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x205
    1c38: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1c3c: 91000021     	add	x1, x1, #0x0
		0000000000001c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1c40: 94000000     	bl	0x1c40 <gf_parse_dts+0xe4>
		0000000000001c40:  R_AARCH64_CALL26	_printk
    1c44: 5284e200     	mov	w0, #0x2710             // =10000
    1c48: 5284ee81     	mov	w1, #0x2774             // =10100
    1c4c: 52800042     	mov	w2, #0x2                // =2
    1c50: 94000000     	bl	0x1c50 <gf_parse_dts+0xf4>
		0000000000001c50:  R_AARCH64_CALL26	usleep_range_state
    1c54: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac0
    1c58: 91000021     	add	x1, x1, #0x0
		0000000000001c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac0
    1c5c: 910042c0     	add	x0, x22, #0x10
    1c60: 94000000     	bl	0x1c60 <gf_parse_dts+0x104>
		0000000000001c60:  R_AARCH64_CALL26	devm_regulator_get
    1c64: b13ffc1f     	cmn	x0, #0xfff
    1c68: f9004e60     	str	x0, [x19, #0x98]
    1c6c: 540002c3     	b.lo	0x1cc4 <gf_parse_dts+0x168>
    1c70: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ff
    1c74: 91000000     	add	x0, x0, #0x0
		0000000000001c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ff
    1c78: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1c7c: 91000021     	add	x1, x1, #0x0
		0000000000001c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1c80: 94000000     	bl	0x1c80 <gf_parse_dts+0x124>
		0000000000001c80:  R_AARCH64_CALL26	_printk
    1c84: b9409a74     	ldr	w20, [x19, #0x98]
    1c88: 17ffffc8     	b	0x1ba8 <gf_parse_dts+0x4c>
    1c8c: f9400e68     	ldr	x8, [x19, #0x18]
    1c90: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x108d
    1c94: 91000021     	add	x1, x1, #0x0
		0000000000001c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x108d
    1c98: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2cc>
		0000000000001c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1528
    1c9c: 91000042     	add	x2, x2, #0x0
		0000000000001c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1528
    1ca0: 91004100     	add	x0, x8, #0x10
    1ca4: 94000000     	bl	0x1ca4 <gf_parse_dts+0x148>
		0000000000001ca4:  R_AARCH64_CALL26	_dev_err
    1ca8: 128002b4     	mov	w20, #-0x16             // =-22
    1cac: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d1
    1cb0: 91000000     	add	x0, x0, #0x0
		0000000000001cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d1
    1cb4: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1cb8: 91000021     	add	x1, x1, #0x0
		0000000000001cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1cbc: 94000000     	bl	0x1cbc <gf_parse_dts+0x160>
		0000000000001cbc:  R_AARCH64_CALL26	_printk
    1cc0: 17ffffba     	b	0x1ba8 <gf_parse_dts+0x4c>
    1cc4: 94000000     	bl	0x1cc4 <gf_parse_dts+0x168>
		0000000000001cc4:  R_AARCH64_CALL26	regulator_enable
    1cc8: 350001e0     	cbnz	w0, 0x1d04 <gf_parse_dts+0x1a8>
    1ccc: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f4
    1cd0: 91000021     	add	x1, x1, #0x0
		0000000000001cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f4
    1cd4: aa1503e0     	mov	x0, x21
    1cd8: 2a1f03e2     	mov	w2, wzr
    1cdc: 94000000     	bl	0x1cdc <gf_parse_dts+0x180>
		0000000000001cdc:  R_AARCH64_CALL26	of_get_named_gpio
    1ce0: b9004260     	str	w0, [x19, #0x40]
    1ce4: 36f802e0     	tbz	w0, #0x1f, 0x1d40 <gf_parse_dts+0x1e4>
    1ce8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12dc
    1cec: 91000000     	add	x0, x0, #0x0
		0000000000001cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12dc
    1cf0: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1cf4: 91000021     	add	x1, x1, #0x0
		0000000000001cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1cf8: 94000000     	bl	0x1cf8 <gf_parse_dts+0x19c>
		0000000000001cf8:  R_AARCH64_CALL26	_printk
    1cfc: 12800014     	mov	w20, #-0x1              // =-1
    1d00: 14000040     	b	0x1e00 <gf_parse_dts+0x2a4>
    1d04: 2a0003f4     	mov	w20, w0
    1d08: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xede
    1d0c: 91000000     	add	x0, x0, #0x0
		0000000000001d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xede
    1d10: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1d14: 91000021     	add	x1, x1, #0x0
		0000000000001d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1d18: 94000000     	bl	0x1d18 <gf_parse_dts+0x1bc>
		0000000000001d18:  R_AARCH64_CALL26	_printk
    1d1c: f9403e60     	ldr	x0, [x19, #0x78]
    1d20: b4fff440     	cbz	x0, 0x1ba8 <gf_parse_dts+0x4c>
    1d24: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1445
    1d28: 91000021     	add	x1, x1, #0x0
		0000000000001d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1445
    1d2c: 94000000     	bl	0x1d2c <gf_parse_dts+0x1d0>
		0000000000001d2c:  R_AARCH64_CALL26	zlog_client_record
    1d30: f9403e60     	ldr	x0, [x19, #0x78]
    1d34: 52802041     	mov	w1, #0x102              // =258
    1d38: 94000000     	bl	0x1d38 <gf_parse_dts+0x1dc>
		0000000000001d38:  R_AARCH64_CALL26	zlog_client_notify
    1d3c: 17ffff9b     	b	0x1ba8 <gf_parse_dts+0x4c>
    1d40: 2a0003e1     	mov	w1, w0
    1d44: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb36
    1d48: 91000000     	add	x0, x0, #0x0
		0000000000001d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb36
    1d4c: 94000000     	bl	0x1d4c <gf_parse_dts+0x1f0>
		0000000000001d4c:  R_AARCH64_CALL26	_printk
    1d50: b9404261     	ldr	w1, [x19, #0x40]
    1d54: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2cc>
		0000000000001d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x493
    1d58: 91000042     	add	x2, x2, #0x0
		0000000000001d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x493
    1d5c: 910042c0     	add	x0, x22, #0x10
    1d60: 94000000     	bl	0x1d60 <gf_parse_dts+0x204>
		0000000000001d60:  R_AARCH64_CALL26	devm_gpio_request
    1d64: 35000300     	cbnz	w0, 0x1dc4 <gf_parse_dts+0x268>
    1d68: b9404261     	ldr	w1, [x19, #0x40]
    1d6c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb36
    1d70: 91000000     	add	x0, x0, #0x0
		0000000000001d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb36
    1d74: 94000000     	bl	0x1d74 <gf_parse_dts+0x218>
		0000000000001d74:  R_AARCH64_CALL26	_printk
    1d78: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf3e
    1d7c: 91000021     	add	x1, x1, #0x0
		0000000000001d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf3e
    1d80: aa1503e0     	mov	x0, x21
    1d84: 2a1f03e2     	mov	w2, wzr
    1d88: 94000000     	bl	0x1d88 <gf_parse_dts+0x22c>
		0000000000001d88:  R_AARCH64_CALL26	of_get_named_gpio
    1d8c: b9003e60     	str	w0, [x19, #0x3c]
    1d90: 36f803e0     	tbz	w0, #0x1f, 0x1e0c <gf_parse_dts+0x2b0>
    1d94: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bb
    1d98: 91000000     	add	x0, x0, #0x0
		0000000000001d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bb
    1d9c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1da0: 91000021     	add	x1, x1, #0x0
		0000000000001da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1da4: 94000000     	bl	0x1da4 <gf_parse_dts+0x248>
		0000000000001da4:  R_AARCH64_CALL26	_printk
    1da8: 12800014     	mov	w20, #-0x1              // =-1
    1dac: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe36
    1db0: 91000000     	add	x0, x0, #0x0
		0000000000001db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe36
    1db4: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1db8: 91000021     	add	x1, x1, #0x0
		0000000000001db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1dbc: 94000000     	bl	0x1dbc <gf_parse_dts+0x260>
		0000000000001dbc:  R_AARCH64_CALL26	_printk
    1dc0: 14000010     	b	0x1e00 <gf_parse_dts+0x2a4>
    1dc4: 2a0003f4     	mov	w20, w0
    1dc8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3e
    1dcc: 91000000     	add	x0, x0, #0x0
		0000000000001dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3e
    1dd0: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1dd4: 91000021     	add	x1, x1, #0x0
		0000000000001dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1dd8: 2a1403e2     	mov	w2, w20
    1ddc: 94000000     	bl	0x1ddc <gf_parse_dts+0x280>
		0000000000001ddc:  R_AARCH64_CALL26	_printk
    1de0: f9403e60     	ldr	x0, [x19, #0x78]
    1de4: b40000e0     	cbz	x0, 0x1e00 <gf_parse_dts+0x2a4>
    1de8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20
    1dec: 91000021     	add	x1, x1, #0x0
		0000000000001dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20
    1df0: 94000000     	bl	0x1df0 <gf_parse_dts+0x294>
		0000000000001df0:  R_AARCH64_CALL26	zlog_client_record
    1df4: f9403e60     	ldr	x0, [x19, #0x78]
    1df8: 52802021     	mov	w1, #0x101              // =257
    1dfc: 94000000     	bl	0x1dfc <gf_parse_dts+0x2a0>
		0000000000001dfc:  R_AARCH64_CALL26	zlog_client_notify
    1e00: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a8
    1e04: 91000000     	add	x0, x0, #0x0
		0000000000001e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a8
    1e08: 17ffffab     	b	0x1cb4 <gf_parse_dts+0x158>
    1e0c: 2a0003e1     	mov	w1, w0
    1e10: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd09
    1e14: 91000000     	add	x0, x0, #0x0
		0000000000001e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd09
    1e18: 94000000     	bl	0x1e18 <gf_parse_dts+0x2bc>
		0000000000001e18:  R_AARCH64_CALL26	_printk
    1e1c: b9403e61     	ldr	w1, [x19, #0x3c]
    1e20: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2cc>
		0000000000001e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c9
    1e24: 91000042     	add	x2, x2, #0x0
		0000000000001e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c9
    1e28: 910042c0     	add	x0, x22, #0x10
    1e2c: 94000000     	bl	0x1e2c <gf_parse_dts+0x2d0>
		0000000000001e2c:  R_AARCH64_CALL26	devm_gpio_request
    1e30: 2a0003f4     	mov	w20, w0
    1e34: 35000140     	cbnz	w0, 0x1e5c <gf_parse_dts+0x300>
    1e38: b9403e60     	ldr	w0, [x19, #0x3c]
    1e3c: 94000000     	bl	0x1e3c <gf_parse_dts+0x2e0>
		0000000000001e3c:  R_AARCH64_CALL26	gpio_to_desc
    1e40: 94000000     	bl	0x1e40 <gf_parse_dts+0x2e4>
		0000000000001e40:  R_AARCH64_CALL26	gpiod_direction_input
    1e44: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb57
    1e48: 91000000     	add	x0, x0, #0x0
		0000000000001e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb57
    1e4c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1e50: 91000021     	add	x1, x1, #0x0
		0000000000001e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1e54: 2a1f03e2     	mov	w2, wzr
    1e58: 17ffff59     	b	0x1bbc <gf_parse_dts+0x60>
    1e5c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1537
    1e60: 91000000     	add	x0, x0, #0x0
		0000000000001e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1537
    1e64: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bc
    1e68: 91000021     	add	x1, x1, #0x0
		0000000000001e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bc
    1e6c: 2a1403e2     	mov	w2, w20
    1e70: 94000000     	bl	0x1e70 <gf_parse_dts+0x314>
		0000000000001e70:  R_AARCH64_CALL26	_printk
    1e74: f9403e60     	ldr	x0, [x19, #0x78]
    1e78: b4fff9a0     	cbz	x0, 0x1dac <gf_parse_dts+0x250>
    1e7c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x137c
    1e80: 91000021     	add	x1, x1, #0x0
		0000000000001e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x137c
    1e84: 94000000     	bl	0x1e84 <gf_parse_dts+0x328>
		0000000000001e84:  R_AARCH64_CALL26	zlog_client_record
    1e88: f9403e60     	ldr	x0, [x19, #0x78]
    1e8c: 52802001     	mov	w1, #0x100              // =256
    1e90: 94000000     	bl	0x1e90 <gf_parse_dts+0x334>
		0000000000001e90:  R_AARCH64_CALL26	zlog_client_notify
    1e94: 17ffffc6     	b	0x1dac <gf_parse_dts+0x250>
