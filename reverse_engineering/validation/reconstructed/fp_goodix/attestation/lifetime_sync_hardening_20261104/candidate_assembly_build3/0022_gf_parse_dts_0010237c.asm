
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001cb0 <gf_parse_dts>:
    1cb0: d503233f     	paciasp
    1cb4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1cb8: a90157f6     	stp	x22, x21, [sp, #0x10]
    1cbc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1cc0: 910003fd     	mov	x29, sp
    1cc4: f9400c16     	ldr	x22, [x0, #0x18]
    1cc8: aa0003f3     	mov	x19, x0
    1ccc: f9417ed5     	ldr	x21, [x22, #0x2f8]
    1cd0: 94000000     	bl	0x1cd0 <gf_parse_dts+0x20>
		0000000000001cd0:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    1cd4: 2a0003f4     	mov	w20, w0
    1cd8: 35000060     	cbnz	w0, 0x1ce4 <gf_parse_dts+0x34>
    1cdc: f9404268     	ldr	x8, [x19, #0x80]
    1ce0: b5000268     	cbnz	x8, 0x1d2c <gf_parse_dts+0x7c>
    1ce4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001ce4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0982
    1ce8: 91000000     	add	x0, x0, #0x0
		0000000000001ce8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0982
    1cec: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001cec:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1cf0: 91000021     	add	x1, x1, #0x0
		0000000000001cf0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1cf4: 2a1403e2     	mov	w2, w20
    1cf8: 94000000     	bl	0x1cf8 <gf_parse_dts+0x48>
		0000000000001cf8:  R_AARCH64_CALL26	_printk
    1cfc: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001cfc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03d3
    1d00: 91000000     	add	x0, x0, #0x0
		0000000000001d00:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03d3
    1d04: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001d04:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1d08: 91000021     	add	x1, x1, #0x0
		0000000000001d08:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1d0c: 2a1403e2     	mov	w2, w20
    1d10: 94000000     	bl	0x1d10 <gf_parse_dts+0x60>
		0000000000001d10:  R_AARCH64_CALL26	_printk
    1d14: 2a1403e0     	mov	w0, w20
    1d18: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1d1c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1d20: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1d24: d50323bf     	autiasp
    1d28: d65f03c0     	ret
    1d2c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001d2c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_01ee
    1d30: 91000000     	add	x0, x0, #0x0
		0000000000001d30:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_01ee
    1d34: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001d34:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06c3
    1d38: 91000021     	add	x1, x1, #0x0
		0000000000001d38:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06c3
    1d3c: 2a1f03e2     	mov	w2, wzr
    1d40: 94000000     	bl	0x1d40 <gf_parse_dts+0x90>
		0000000000001d40:  R_AARCH64_CALL26	_printk
    1d44: f9404a61     	ldr	x1, [x19, #0x90]
    1d48: b40004c1     	cbz	x1, 0x1de0 <gf_parse_dts+0x130>
    1d4c: b13ffc3f     	cmn	x1, #0xfff
    1d50: 54000482     	b.hs	0x1de0 <gf_parse_dts+0x130>
    1d54: f9404260     	ldr	x0, [x19, #0x80]
    1d58: 94000000     	bl	0x1d58 <gf_parse_dts+0xa8>
		0000000000001d58:  R_AARCH64_CALL26	pinctrl_select_state
    1d5c: 34000140     	cbz	w0, 0x1d84 <gf_parse_dts+0xd4>
    1d60: f9400e68     	ldr	x8, [x19, #0x18]
    1d64: 2a0003f4     	mov	w20, w0
    1d68: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001d68:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a1e
    1d6c: 91000021     	add	x1, x1, #0x0
		0000000000001d6c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a1e
    1d70: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x44>
		0000000000001d70:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    1d74: 91000042     	add	x2, x2, #0x0
		0000000000001d74:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    1d78: 91004100     	add	x0, x8, #0x10
    1d7c: 94000000     	bl	0x1d7c <gf_parse_dts+0xcc>
		0000000000001d7c:  R_AARCH64_CALL26	_dev_err
    1d80: 37f80414     	tbnz	w20, #0x1f, 0x1e00 <gf_parse_dts+0x150>
    1d84: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001d84:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0205
    1d88: 91000000     	add	x0, x0, #0x0
		0000000000001d88:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0205
    1d8c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001d8c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1d90: 91000021     	add	x1, x1, #0x0
		0000000000001d90:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1d94: 94000000     	bl	0x1d94 <gf_parse_dts+0xe4>
		0000000000001d94:  R_AARCH64_CALL26	_printk
    1d98: 5284e200     	mov	w0, #0x2710             // =10000
    1d9c: 5284ee81     	mov	w1, #0x2774             // =10100
    1da0: 52800042     	mov	w2, #0x2                // =2
    1da4: 94000000     	bl	0x1da4 <gf_parse_dts+0xf4>
		0000000000001da4:  R_AARCH64_CALL26	usleep_range_state
    1da8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001da8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09a7
    1dac: 91000021     	add	x1, x1, #0x0
		0000000000001dac:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09a7
    1db0: 910042c0     	add	x0, x22, #0x10
    1db4: 94000000     	bl	0x1db4 <gf_parse_dts+0x104>
		0000000000001db4:  R_AARCH64_CALL26	devm_regulator_get
    1db8: b13ffc1f     	cmn	x0, #0xfff
    1dbc: f9004e60     	str	x0, [x19, #0x98]
    1dc0: 540002c3     	b.lo	0x1e18 <gf_parse_dts+0x168>
    1dc4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001dc4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02e4
    1dc8: 91000000     	add	x0, x0, #0x0
		0000000000001dc8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02e4
    1dcc: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001dcc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1dd0: 91000021     	add	x1, x1, #0x0
		0000000000001dd0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1dd4: 94000000     	bl	0x1dd4 <gf_parse_dts+0x124>
		0000000000001dd4:  R_AARCH64_CALL26	_printk
    1dd8: b9409a74     	ldr	w20, [x19, #0x98]
    1ddc: 17ffffc8     	b	0x1cfc <gf_parse_dts+0x4c>
    1de0: f9400e68     	ldr	x8, [x19, #0x18]
    1de4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001de4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f84
    1de8: 91000021     	add	x1, x1, #0x0
		0000000000001de8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f84
    1dec: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x44>
		0000000000001dec:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    1df0: 91000042     	add	x2, x2, #0x0
		0000000000001df0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    1df4: 91004100     	add	x0, x8, #0x10
    1df8: 94000000     	bl	0x1df8 <gf_parse_dts+0x148>
		0000000000001df8:  R_AARCH64_CALL26	_dev_err
    1dfc: 128002b4     	mov	w20, #-0x16             // =-22
    1e00: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001e00:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02b6
    1e04: 91000000     	add	x0, x0, #0x0
		0000000000001e04:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02b6
    1e08: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1e0c: 91000021     	add	x1, x1, #0x0
		0000000000001e0c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1e10: 94000000     	bl	0x1e10 <gf_parse_dts+0x160>
		0000000000001e10:  R_AARCH64_CALL26	_printk
    1e14: 17ffffba     	b	0x1cfc <gf_parse_dts+0x4c>
    1e18: 94000000     	bl	0x1e18 <gf_parse_dts+0x168>
		0000000000001e18:  R_AARCH64_CALL26	regulator_enable
    1e1c: 350001e0     	cbnz	w0, 0x1e58 <gf_parse_dts+0x1a8>
    1e20: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001e20:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_109b
    1e24: 91000021     	add	x1, x1, #0x0
		0000000000001e24:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_109b
    1e28: aa1503e0     	mov	x0, x21
    1e2c: 2a1f03e2     	mov	w2, wzr
    1e30: 94000000     	bl	0x1e30 <gf_parse_dts+0x180>
		0000000000001e30:  R_AARCH64_CALL26	of_get_named_gpio
    1e34: b9004260     	str	w0, [x19, #0x40]
    1e38: 36f802e0     	tbz	w0, #0x1f, 0x1e94 <gf_parse_dts+0x1e4>
    1e3c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001e3c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1131
    1e40: 91000000     	add	x0, x0, #0x0
		0000000000001e40:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1131
    1e44: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001e44:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1e48: 91000021     	add	x1, x1, #0x0
		0000000000001e48:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1e4c: 94000000     	bl	0x1e4c <gf_parse_dts+0x19c>
		0000000000001e4c:  R_AARCH64_CALL26	_printk
    1e50: 12800014     	mov	w20, #-0x1              // =-1
    1e54: 14000040     	b	0x1f54 <gf_parse_dts+0x2a4>
    1e58: 2a0003f4     	mov	w20, w0
    1e5c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001e5c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d91
    1e60: 91000000     	add	x0, x0, #0x0
		0000000000001e60:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d91
    1e64: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001e64:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1e68: 91000021     	add	x1, x1, #0x0
		0000000000001e68:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1e6c: 94000000     	bl	0x1e6c <gf_parse_dts+0x1bc>
		0000000000001e6c:  R_AARCH64_CALL26	_printk
    1e70: f9403e60     	ldr	x0, [x19, #0x78]
    1e74: b4fff440     	cbz	x0, 0x1cfc <gf_parse_dts+0x4c>
    1e78: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001e78:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1263
    1e7c: 91000021     	add	x1, x1, #0x0
		0000000000001e7c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1263
    1e80: 94000000     	bl	0x1e80 <gf_parse_dts+0x1d0>
		0000000000001e80:  R_AARCH64_CALL26	zlog_client_record
    1e84: f9403e60     	ldr	x0, [x19, #0x78]
    1e88: 52802041     	mov	w1, #0x102              // =258
    1e8c: 94000000     	bl	0x1e8c <gf_parse_dts+0x1dc>
		0000000000001e8c:  R_AARCH64_CALL26	zlog_client_notify
    1e90: 17ffff9b     	b	0x1cfc <gf_parse_dts+0x4c>
    1e94: 2a0003e1     	mov	w1, w0
    1e98: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001e98:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    1e9c: 91000000     	add	x0, x0, #0x0
		0000000000001e9c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    1ea0: 94000000     	bl	0x1ea0 <gf_parse_dts+0x1f0>
		0000000000001ea0:  R_AARCH64_CALL26	_printk
    1ea4: b9404261     	ldr	w1, [x19, #0x40]
    1ea8: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x44>
		0000000000001ea8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_045b
    1eac: 91000042     	add	x2, x2, #0x0
		0000000000001eac:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_045b
    1eb0: 910042c0     	add	x0, x22, #0x10
    1eb4: 94000000     	bl	0x1eb4 <gf_parse_dts+0x204>
		0000000000001eb4:  R_AARCH64_CALL26	devm_gpio_request
    1eb8: 35000300     	cbnz	w0, 0x1f18 <gf_parse_dts+0x268>
    1ebc: b9404261     	ldr	w1, [x19, #0x40]
    1ec0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001ec0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    1ec4: 91000000     	add	x0, x0, #0x0
		0000000000001ec4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    1ec8: 94000000     	bl	0x1ec8 <gf_parse_dts+0x218>
		0000000000001ec8:  R_AARCH64_CALL26	_printk
    1ecc: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001ecc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e6b
    1ed0: 91000021     	add	x1, x1, #0x0
		0000000000001ed0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e6b
    1ed4: aa1503e0     	mov	x0, x21
    1ed8: 2a1f03e2     	mov	w2, wzr
    1edc: 94000000     	bl	0x1edc <gf_parse_dts+0x22c>
		0000000000001edc:  R_AARCH64_CALL26	of_get_named_gpio
    1ee0: b9003e60     	str	w0, [x19, #0x3c]
    1ee4: 36f803e0     	tbz	w0, #0x1f, 0x1f60 <gf_parse_dts+0x2b0>
    1ee8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001ee8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_077c
    1eec: 91000000     	add	x0, x0, #0x0
		0000000000001eec:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_077c
    1ef0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001ef0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1ef4: 91000021     	add	x1, x1, #0x0
		0000000000001ef4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1ef8: 94000000     	bl	0x1ef8 <gf_parse_dts+0x248>
		0000000000001ef8:  R_AARCH64_CALL26	_printk
    1efc: 12800014     	mov	w20, #-0x1              // =-1
    1f00: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001f00:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d0b
    1f04: 91000000     	add	x0, x0, #0x0
		0000000000001f04:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d0b
    1f08: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001f08:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1f0c: 91000021     	add	x1, x1, #0x0
		0000000000001f0c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1f10: 94000000     	bl	0x1f10 <gf_parse_dts+0x260>
		0000000000001f10:  R_AARCH64_CALL26	_printk
    1f14: 14000010     	b	0x1f54 <gf_parse_dts+0x2a4>
    1f18: 2a0003f4     	mov	w20, w0
    1f1c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001f1c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_08b8
    1f20: 91000000     	add	x0, x0, #0x0
		0000000000001f20:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_08b8
    1f24: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001f24:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1f28: 91000021     	add	x1, x1, #0x0
		0000000000001f28:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1f2c: 2a1403e2     	mov	w2, w20
    1f30: 94000000     	bl	0x1f30 <gf_parse_dts+0x280>
		0000000000001f30:  R_AARCH64_CALL26	_printk
    1f34: f9403e60     	ldr	x0, [x19, #0x78]
    1f38: b40000e0     	cbz	x0, 0x1f54 <gf_parse_dts+0x2a4>
    1f3c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001f3c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0ac6
    1f40: 91000021     	add	x1, x1, #0x0
		0000000000001f40:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0ac6
    1f44: 94000000     	bl	0x1f44 <gf_parse_dts+0x294>
		0000000000001f44:  R_AARCH64_CALL26	zlog_client_record
    1f48: f9403e60     	ldr	x0, [x19, #0x78]
    1f4c: 52802021     	mov	w1, #0x101              // =257
    1f50: 94000000     	bl	0x1f50 <gf_parse_dts+0x2a0>
		0000000000001f50:  R_AARCH64_CALL26	zlog_client_notify
    1f54: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001f54:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f9f
    1f58: 91000000     	add	x0, x0, #0x0
		0000000000001f58:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f9f
    1f5c: 17ffffab     	b	0x1e08 <gf_parse_dts+0x158>
    1f60: 2a0003e1     	mov	w1, w0
    1f64: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001f64:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0b75
    1f68: 91000000     	add	x0, x0, #0x0
		0000000000001f68:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0b75
    1f6c: 94000000     	bl	0x1f6c <gf_parse_dts+0x2bc>
		0000000000001f6c:  R_AARCH64_CALL26	_printk
    1f70: b9403e61     	ldr	w1, [x19, #0x3c]
    1f74: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x44>
		0000000000001f74:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03c8
    1f78: 91000042     	add	x2, x2, #0x0
		0000000000001f78:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03c8
    1f7c: 910042c0     	add	x0, x22, #0x10
    1f80: 94000000     	bl	0x1f80 <gf_parse_dts+0x2d0>
		0000000000001f80:  R_AARCH64_CALL26	devm_gpio_request
    1f84: 2a0003f4     	mov	w20, w0
    1f88: 35000140     	cbnz	w0, 0x1fb0 <gf_parse_dts+0x300>
    1f8c: b9403e60     	ldr	w0, [x19, #0x3c]
    1f90: 94000000     	bl	0x1f90 <gf_parse_dts+0x2e0>
		0000000000001f90:  R_AARCH64_CALL26	gpio_to_desc
    1f94: 94000000     	bl	0x1f94 <gf_parse_dts+0x2e4>
		0000000000001f94:  R_AARCH64_CALL26	gpiod_direction_input
    1f98: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001f98:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a54
    1f9c: 91000000     	add	x0, x0, #0x0
		0000000000001f9c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a54
    1fa0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001fa0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1fa4: 91000021     	add	x1, x1, #0x0
		0000000000001fa4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1fa8: 2a1f03e2     	mov	w2, wzr
    1fac: 17ffff59     	b	0x1d10 <gf_parse_dts+0x60>
    1fb0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001fb0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1375
    1fb4: 91000000     	add	x0, x0, #0x0
		0000000000001fb4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1375
    1fb8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001fb8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1fbc: 91000021     	add	x1, x1, #0x0
		0000000000001fbc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1fc0: 2a1403e2     	mov	w2, w20
    1fc4: 94000000     	bl	0x1fc4 <gf_parse_dts+0x314>
		0000000000001fc4:  R_AARCH64_CALL26	_printk
    1fc8: f9403e60     	ldr	x0, [x19, #0x78]
    1fcc: b4fff9a0     	cbz	x0, 0x1f00 <gf_parse_dts+0x250>
    1fd0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001fd0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1200
    1fd4: 91000021     	add	x1, x1, #0x0
		0000000000001fd4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1200
    1fd8: 94000000     	bl	0x1fd8 <gf_parse_dts+0x328>
		0000000000001fd8:  R_AARCH64_CALL26	zlog_client_record
    1fdc: f9403e60     	ldr	x0, [x19, #0x78]
    1fe0: 52802001     	mov	w1, #0x100              // =256
    1fe4: 94000000     	bl	0x1fe4 <gf_parse_dts+0x334>
		0000000000001fe4:  R_AARCH64_CALL26	zlog_client_notify
    1fe8: 17ffffc6     	b	0x1f00 <gf_parse_dts+0x250>
