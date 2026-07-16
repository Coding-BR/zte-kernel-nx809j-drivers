
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b50 <gf_parse_dts>:
    1b50: d503233f     	paciasp
    1b54: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1b58: a90157f6     	stp	x22, x21, [sp, #0x10]
    1b5c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1b60: 910003fd     	mov	x29, sp
    1b64: f9400c16     	ldr	x22, [x0, #0x18]
    1b68: aa0003f3     	mov	x19, x0
    1b6c: f9417ed5     	ldr	x21, [x22, #0x2f8]
    1b70: 94000000     	bl	0x1b70 <gf_parse_dts+0x20>
		0000000000001b70:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    1b74: 2a0003f4     	mov	w20, w0
    1b78: 35000060     	cbnz	w0, 0x1b84 <gf_parse_dts+0x34>
    1b7c: f9404268     	ldr	x8, [x19, #0x80]
    1b80: b5000108     	cbnz	x8, 0x1ba0 <gf_parse_dts+0x50>
    1b84: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x982
    1b88: 91000000     	add	x0, x0, #0x0
		0000000000001b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x982
    1b8c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1b90: 91000021     	add	x1, x1, #0x0
		0000000000001b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1b94: 2a1403e2     	mov	w2, w20
    1b98: 94000000     	bl	0x1b98 <gf_parse_dts+0x48>
		0000000000001b98:  R_AARCH64_CALL26	_printk
    1b9c: 1400008d     	b	0x1dd0 <gf_parse_dts+0x280>
    1ba0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee
    1ba4: 91000000     	add	x0, x0, #0x0
		0000000000001ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee
    1ba8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3
    1bac: 91000021     	add	x1, x1, #0x0
		0000000000001bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3
    1bb0: 2a1f03e2     	mov	w2, wzr
    1bb4: 94000000     	bl	0x1bb4 <gf_parse_dts+0x64>
		0000000000001bb4:  R_AARCH64_CALL26	_printk
    1bb8: f9404a61     	ldr	x1, [x19, #0x90]
    1bbc: b40004c1     	cbz	x1, 0x1c54 <gf_parse_dts+0x104>
    1bc0: b13ffc3f     	cmn	x1, #0xfff
    1bc4: 54000482     	b.hs	0x1c54 <gf_parse_dts+0x104>
    1bc8: f9404260     	ldr	x0, [x19, #0x80]
    1bcc: 94000000     	bl	0x1bcc <gf_parse_dts+0x7c>
		0000000000001bcc:  R_AARCH64_CALL26	pinctrl_select_state
    1bd0: 34000140     	cbz	w0, 0x1bf8 <gf_parse_dts+0xa8>
    1bd4: f9400e68     	ldr	x8, [x19, #0x18]
    1bd8: 2a0003f4     	mov	w20, w0
    1bdc: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1e
    1be0: 91000021     	add	x1, x1, #0x0
		0000000000001be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1e
    1be4: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2d8>
		0000000000001be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    1be8: 91000042     	add	x2, x2, #0x0
		0000000000001be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    1bec: 91004100     	add	x0, x8, #0x10
    1bf0: 94000000     	bl	0x1bf0 <gf_parse_dts+0xa0>
		0000000000001bf0:  R_AARCH64_CALL26	_dev_err
    1bf4: 37f80414     	tbnz	w20, #0x1f, 0x1c74 <gf_parse_dts+0x124>
    1bf8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x205
    1bfc: 91000000     	add	x0, x0, #0x0
		0000000000001bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x205
    1c00: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1c04: 91000021     	add	x1, x1, #0x0
		0000000000001c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1c08: 94000000     	bl	0x1c08 <gf_parse_dts+0xb8>
		0000000000001c08:  R_AARCH64_CALL26	_printk
    1c0c: 5284e200     	mov	w0, #0x2710             // =10000
    1c10: 5284ee81     	mov	w1, #0x2774             // =10100
    1c14: 52800042     	mov	w2, #0x2                // =2
    1c18: 94000000     	bl	0x1c18 <gf_parse_dts+0xc8>
		0000000000001c18:  R_AARCH64_CALL26	usleep_range_state
    1c1c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a7
    1c20: 91000021     	add	x1, x1, #0x0
		0000000000001c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a7
    1c24: 910042c0     	add	x0, x22, #0x10
    1c28: 94000000     	bl	0x1c28 <gf_parse_dts+0xd8>
		0000000000001c28:  R_AARCH64_CALL26	devm_regulator_get
    1c2c: b13ffc1f     	cmn	x0, #0xfff
    1c30: f9004e60     	str	x0, [x19, #0x98]
    1c34: 54000263     	b.lo	0x1c80 <gf_parse_dts+0x130>
    1c38: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e4
    1c3c: 91000000     	add	x0, x0, #0x0
		0000000000001c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e4
    1c40: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1c44: 91000021     	add	x1, x1, #0x0
		0000000000001c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1c48: 94000000     	bl	0x1c48 <gf_parse_dts+0xf8>
		0000000000001c48:  R_AARCH64_CALL26	_printk
    1c4c: b9409a74     	ldr	w20, [x19, #0x98]
    1c50: 14000060     	b	0x1dd0 <gf_parse_dts+0x280>
    1c54: f9400e68     	ldr	x8, [x19, #0x18]
    1c58: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf84
    1c5c: 91000021     	add	x1, x1, #0x0
		0000000000001c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf84
    1c60: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2d8>
		0000000000001c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1366
    1c64: 91000042     	add	x2, x2, #0x0
		0000000000001c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1366
    1c68: 91004100     	add	x0, x8, #0x10
    1c6c: 94000000     	bl	0x1c6c <gf_parse_dts+0x11c>
		0000000000001c6c:  R_AARCH64_CALL26	_dev_err
    1c70: 128002b4     	mov	w20, #-0x16             // =-22
    1c74: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b6
    1c78: 91000000     	add	x0, x0, #0x0
		0000000000001c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b6
    1c7c: 14000052     	b	0x1dc4 <gf_parse_dts+0x274>
    1c80: 94000000     	bl	0x1c80 <gf_parse_dts+0x130>
		0000000000001c80:  R_AARCH64_CALL26	regulator_enable
    1c84: 350001e0     	cbnz	w0, 0x1cc0 <gf_parse_dts+0x170>
    1c88: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x109b
    1c8c: 91000021     	add	x1, x1, #0x0
		0000000000001c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x109b
    1c90: aa1503e0     	mov	x0, x21
    1c94: 2a1f03e2     	mov	w2, wzr
    1c98: 94000000     	bl	0x1c98 <gf_parse_dts+0x148>
		0000000000001c98:  R_AARCH64_CALL26	of_get_named_gpio
    1c9c: b9004260     	str	w0, [x19, #0x40]
    1ca0: 36f802e0     	tbz	w0, #0x1f, 0x1cfc <gf_parse_dts+0x1ac>
    1ca4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1131
    1ca8: 91000000     	add	x0, x0, #0x0
		0000000000001ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1131
    1cac: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1cb0: 91000021     	add	x1, x1, #0x0
		0000000000001cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1cb4: 94000000     	bl	0x1cb4 <gf_parse_dts+0x164>
		0000000000001cb4:  R_AARCH64_CALL26	_printk
    1cb8: 12800014     	mov	w20, #-0x1              // =-1
    1cbc: 14000040     	b	0x1dbc <gf_parse_dts+0x26c>
    1cc0: 2a0003f4     	mov	w20, w0
    1cc4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd91
    1cc8: 91000000     	add	x0, x0, #0x0
		0000000000001cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd91
    1ccc: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1cd0: 91000021     	add	x1, x1, #0x0
		0000000000001cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1cd4: 94000000     	bl	0x1cd4 <gf_parse_dts+0x184>
		0000000000001cd4:  R_AARCH64_CALL26	_printk
    1cd8: f9403e60     	ldr	x0, [x19, #0x78]
    1cdc: b4000700     	cbz	x0, 0x1dbc <gf_parse_dts+0x26c>
    1ce0: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001ce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1263
    1ce4: 91000021     	add	x1, x1, #0x0
		0000000000001ce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1263
    1ce8: 94000000     	bl	0x1ce8 <gf_parse_dts+0x198>
		0000000000001ce8:  R_AARCH64_CALL26	zlog_client_record
    1cec: f9403e60     	ldr	x0, [x19, #0x78]
    1cf0: 52802041     	mov	w1, #0x102              // =258
    1cf4: 94000000     	bl	0x1cf4 <gf_parse_dts+0x1a4>
		0000000000001cf4:  R_AARCH64_CALL26	zlog_client_notify
    1cf8: 14000031     	b	0x1dbc <gf_parse_dts+0x26c>
    1cfc: 2a0003e1     	mov	w1, w0
    1d00: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa33
    1d04: 91000000     	add	x0, x0, #0x0
		0000000000001d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa33
    1d08: 94000000     	bl	0x1d08 <gf_parse_dts+0x1b8>
		0000000000001d08:  R_AARCH64_CALL26	_printk
    1d0c: b9404261     	ldr	w1, [x19, #0x40]
    1d10: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2d8>
		0000000000001d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45b
    1d14: 91000042     	add	x2, x2, #0x0
		0000000000001d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45b
    1d18: 910042c0     	add	x0, x22, #0x10
    1d1c: 94000000     	bl	0x1d1c <gf_parse_dts+0x1cc>
		0000000000001d1c:  R_AARCH64_CALL26	devm_gpio_request
    1d20: 35000300     	cbnz	w0, 0x1d80 <gf_parse_dts+0x230>
    1d24: b9404261     	ldr	w1, [x19, #0x40]
    1d28: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa33
    1d2c: 91000000     	add	x0, x0, #0x0
		0000000000001d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa33
    1d30: 94000000     	bl	0x1d30 <gf_parse_dts+0x1e0>
		0000000000001d30:  R_AARCH64_CALL26	_printk
    1d34: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe6b
    1d38: 91000021     	add	x1, x1, #0x0
		0000000000001d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe6b
    1d3c: aa1503e0     	mov	x0, x21
    1d40: 2a1f03e2     	mov	w2, wzr
    1d44: 94000000     	bl	0x1d44 <gf_parse_dts+0x1f4>
		0000000000001d44:  R_AARCH64_CALL26	of_get_named_gpio
    1d48: b9003e60     	str	w0, [x19, #0x3c]
    1d4c: 36f805a0     	tbz	w0, #0x1f, 0x1e00 <gf_parse_dts+0x2b0>
    1d50: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77c
    1d54: 91000000     	add	x0, x0, #0x0
		0000000000001d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77c
    1d58: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1d5c: 91000021     	add	x1, x1, #0x0
		0000000000001d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1d60: 94000000     	bl	0x1d60 <gf_parse_dts+0x210>
		0000000000001d60:  R_AARCH64_CALL26	_printk
    1d64: 12800014     	mov	w20, #-0x1              // =-1
    1d68: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd0b
    1d6c: 91000000     	add	x0, x0, #0x0
		0000000000001d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd0b
    1d70: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1d74: 91000021     	add	x1, x1, #0x0
		0000000000001d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1d78: 94000000     	bl	0x1d78 <gf_parse_dts+0x228>
		0000000000001d78:  R_AARCH64_CALL26	_printk
    1d7c: 14000010     	b	0x1dbc <gf_parse_dts+0x26c>
    1d80: 2a0003f4     	mov	w20, w0
    1d84: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b8
    1d88: 91000000     	add	x0, x0, #0x0
		0000000000001d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b8
    1d8c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1d90: 91000021     	add	x1, x1, #0x0
		0000000000001d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1d94: 2a1403e2     	mov	w2, w20
    1d98: 94000000     	bl	0x1d98 <gf_parse_dts+0x248>
		0000000000001d98:  R_AARCH64_CALL26	_printk
    1d9c: f9403e60     	ldr	x0, [x19, #0x78]
    1da0: b40000e0     	cbz	x0, 0x1dbc <gf_parse_dts+0x26c>
    1da4: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac6
    1da8: 91000021     	add	x1, x1, #0x0
		0000000000001da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac6
    1dac: 94000000     	bl	0x1dac <gf_parse_dts+0x25c>
		0000000000001dac:  R_AARCH64_CALL26	zlog_client_record
    1db0: f9403e60     	ldr	x0, [x19, #0x78]
    1db4: 52802021     	mov	w1, #0x101              // =257
    1db8: 94000000     	bl	0x1db8 <gf_parse_dts+0x268>
		0000000000001db8:  R_AARCH64_CALL26	zlog_client_notify
    1dbc: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9f
    1dc0: 91000000     	add	x0, x0, #0x0
		0000000000001dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9f
    1dc4: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1dc8: 91000021     	add	x1, x1, #0x0
		0000000000001dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1dcc: 94000000     	bl	0x1dcc <gf_parse_dts+0x27c>
		0000000000001dcc:  R_AARCH64_CALL26	_printk
    1dd0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c8
    1dd4: 91000000     	add	x0, x0, #0x0
		0000000000001dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c8
    1dd8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1ddc: 91000021     	add	x1, x1, #0x0
		0000000000001ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1de0: 2a1403e2     	mov	w2, w20
    1de4: 94000000     	bl	0x1de4 <gf_parse_dts+0x294>
		0000000000001de4:  R_AARCH64_CALL26	_printk
    1de8: 2a1403e0     	mov	w0, w20
    1dec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1df0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1df4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1df8: d50323bf     	autiasp
    1dfc: d65f03c0     	ret
    1e00: 2a0003e1     	mov	w1, w0
    1e04: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb75
    1e08: 91000000     	add	x0, x0, #0x0
		0000000000001e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb75
    1e0c: 94000000     	bl	0x1e0c <gf_parse_dts+0x2bc>
		0000000000001e0c:  R_AARCH64_CALL26	_printk
    1e10: b9403e61     	ldr	w1, [x19, #0x3c]
    1e14: 90000002     	adrp	x2, 0x1000 <gf_probe+0x2d8>
		0000000000001e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fe
    1e18: 91000042     	add	x2, x2, #0x0
		0000000000001e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fe
    1e1c: 910042c0     	add	x0, x22, #0x10
    1e20: 94000000     	bl	0x1e20 <gf_parse_dts+0x2d0>
		0000000000001e20:  R_AARCH64_CALL26	devm_gpio_request
    1e24: 2a0003f4     	mov	w20, w0
    1e28: 35000140     	cbnz	w0, 0x1e50 <gf_parse_dts+0x300>
    1e2c: b9403e60     	ldr	w0, [x19, #0x3c]
    1e30: 94000000     	bl	0x1e30 <gf_parse_dts+0x2e0>
		0000000000001e30:  R_AARCH64_CALL26	gpio_to_desc
    1e34: 94000000     	bl	0x1e34 <gf_parse_dts+0x2e4>
		0000000000001e34:  R_AARCH64_CALL26	gpiod_direction_input
    1e38: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa54
    1e3c: 91000000     	add	x0, x0, #0x0
		0000000000001e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa54
    1e40: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1e44: 91000021     	add	x1, x1, #0x0
		0000000000001e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1e48: 2a1f03e2     	mov	w2, wzr
    1e4c: 17ffffe6     	b	0x1de4 <gf_parse_dts+0x294>
    1e50: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1375
    1e54: 91000000     	add	x0, x0, #0x0
		0000000000001e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1375
    1e58: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb
    1e5c: 91000021     	add	x1, x1, #0x0
		0000000000001e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb
    1e60: 2a1403e2     	mov	w2, w20
    1e64: 94000000     	bl	0x1e64 <gf_parse_dts+0x314>
		0000000000001e64:  R_AARCH64_CALL26	_printk
    1e68: f9403e60     	ldr	x0, [x19, #0x78]
    1e6c: b4fff7e0     	cbz	x0, 0x1d68 <gf_parse_dts+0x218>
    1e70: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1200
    1e74: 91000021     	add	x1, x1, #0x0
		0000000000001e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1200
    1e78: 94000000     	bl	0x1e78 <gf_parse_dts+0x328>
		0000000000001e78:  R_AARCH64_CALL26	zlog_client_record
    1e7c: f9403e60     	ldr	x0, [x19, #0x78]
    1e80: 52802001     	mov	w1, #0x100              // =256
    1e84: 94000000     	bl	0x1e84 <gf_parse_dts+0x334>
		0000000000001e84:  R_AARCH64_CALL26	zlog_client_notify
    1e88: 17ffffb8     	b	0x1d68 <gf_parse_dts+0x218>
