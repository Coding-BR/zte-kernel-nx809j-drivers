
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001cb4 <gf_parse_dts>:
    1cb4: d503233f     	paciasp
    1cb8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1cbc: a90157f6     	stp	x22, x21, [sp, #0x10]
    1cc0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1cc4: 910003fd     	mov	x29, sp
    1cc8: f9400c16     	ldr	x22, [x0, #0x18]
    1ccc: aa0003f3     	mov	x19, x0
    1cd0: f9417ed5     	ldr	x21, [x22, #0x2f8]
    1cd4: 94000000     	bl	0x1cd4 <gf_parse_dts+0x20>
		0000000000001cd4:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    1cd8: 2a0003f4     	mov	w20, w0
    1cdc: 35000060     	cbnz	w0, 0x1ce8 <gf_parse_dts+0x34>
    1ce0: f9404268     	ldr	x8, [x19, #0x80]
    1ce4: b5000268     	cbnz	x8, 0x1d30 <gf_parse_dts+0x7c>
    1ce8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001ce8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0982
    1cec: 91000000     	add	x0, x0, #0x0
		0000000000001cec:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0982
    1cf0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001cf0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1cf4: 91000021     	add	x1, x1, #0x0
		0000000000001cf4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1cf8: 2a1403e2     	mov	w2, w20
    1cfc: 94000000     	bl	0x1cfc <gf_parse_dts+0x48>
		0000000000001cfc:  R_AARCH64_CALL26	_printk
    1d00: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001d00:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03d3
    1d04: 91000000     	add	x0, x0, #0x0
		0000000000001d04:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03d3
    1d08: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001d08:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1d0c: 91000021     	add	x1, x1, #0x0
		0000000000001d0c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1d10: 2a1403e2     	mov	w2, w20
    1d14: 94000000     	bl	0x1d14 <gf_parse_dts+0x60>
		0000000000001d14:  R_AARCH64_CALL26	_printk
    1d18: 2a1403e0     	mov	w0, w20
    1d1c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1d20: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1d24: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1d28: d50323bf     	autiasp
    1d2c: d65f03c0     	ret
    1d30: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001d30:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_01ee
    1d34: 91000000     	add	x0, x0, #0x0
		0000000000001d34:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_01ee
    1d38: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001d38:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06c3
    1d3c: 91000021     	add	x1, x1, #0x0
		0000000000001d3c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06c3
    1d40: 2a1f03e2     	mov	w2, wzr
    1d44: 94000000     	bl	0x1d44 <gf_parse_dts+0x90>
		0000000000001d44:  R_AARCH64_CALL26	_printk
    1d48: f9404a61     	ldr	x1, [x19, #0x90]
    1d4c: b40004c1     	cbz	x1, 0x1de4 <gf_parse_dts+0x130>
    1d50: b13ffc3f     	cmn	x1, #0xfff
    1d54: 54000482     	b.hs	0x1de4 <gf_parse_dts+0x130>
    1d58: f9404260     	ldr	x0, [x19, #0x80]
    1d5c: 94000000     	bl	0x1d5c <gf_parse_dts+0xa8>
		0000000000001d5c:  R_AARCH64_CALL26	pinctrl_select_state
    1d60: 34000140     	cbz	w0, 0x1d88 <gf_parse_dts+0xd4>
    1d64: f9400e68     	ldr	x8, [x19, #0x18]
    1d68: 2a0003f4     	mov	w20, w0
    1d6c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001d6c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a1e
    1d70: 91000021     	add	x1, x1, #0x0
		0000000000001d70:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a1e
    1d74: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x40>
		0000000000001d74:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    1d78: 91000042     	add	x2, x2, #0x0
		0000000000001d78:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    1d7c: 91004100     	add	x0, x8, #0x10
    1d80: 94000000     	bl	0x1d80 <gf_parse_dts+0xcc>
		0000000000001d80:  R_AARCH64_CALL26	_dev_err
    1d84: 37f80414     	tbnz	w20, #0x1f, 0x1e04 <gf_parse_dts+0x150>
    1d88: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001d88:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0205
    1d8c: 91000000     	add	x0, x0, #0x0
		0000000000001d8c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0205
    1d90: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001d90:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1d94: 91000021     	add	x1, x1, #0x0
		0000000000001d94:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1d98: 94000000     	bl	0x1d98 <gf_parse_dts+0xe4>
		0000000000001d98:  R_AARCH64_CALL26	_printk
    1d9c: 5284e200     	mov	w0, #0x2710             // =10000
    1da0: 5284ee81     	mov	w1, #0x2774             // =10100
    1da4: 52800042     	mov	w2, #0x2                // =2
    1da8: 94000000     	bl	0x1da8 <gf_parse_dts+0xf4>
		0000000000001da8:  R_AARCH64_CALL26	usleep_range_state
    1dac: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001dac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09a7
    1db0: 91000021     	add	x1, x1, #0x0
		0000000000001db0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09a7
    1db4: 910042c0     	add	x0, x22, #0x10
    1db8: 94000000     	bl	0x1db8 <gf_parse_dts+0x104>
		0000000000001db8:  R_AARCH64_CALL26	devm_regulator_get
    1dbc: b13ffc1f     	cmn	x0, #0xfff
    1dc0: f9004e60     	str	x0, [x19, #0x98]
    1dc4: 540002c3     	b.lo	0x1e1c <gf_parse_dts+0x168>
    1dc8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001dc8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02e4
    1dcc: 91000000     	add	x0, x0, #0x0
		0000000000001dcc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02e4
    1dd0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001dd0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1dd4: 91000021     	add	x1, x1, #0x0
		0000000000001dd4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1dd8: 94000000     	bl	0x1dd8 <gf_parse_dts+0x124>
		0000000000001dd8:  R_AARCH64_CALL26	_printk
    1ddc: b9409a74     	ldr	w20, [x19, #0x98]
    1de0: 17ffffc8     	b	0x1d00 <gf_parse_dts+0x4c>
    1de4: f9400e68     	ldr	x8, [x19, #0x18]
    1de8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001de8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f84
    1dec: 91000021     	add	x1, x1, #0x0
		0000000000001dec:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f84
    1df0: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x40>
		0000000000001df0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    1df4: 91000042     	add	x2, x2, #0x0
		0000000000001df4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    1df8: 91004100     	add	x0, x8, #0x10
    1dfc: 94000000     	bl	0x1dfc <gf_parse_dts+0x148>
		0000000000001dfc:  R_AARCH64_CALL26	_dev_err
    1e00: 128002b4     	mov	w20, #-0x16             // =-22
    1e04: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001e04:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02b6
    1e08: 91000000     	add	x0, x0, #0x0
		0000000000001e08:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02b6
    1e0c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001e0c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1e10: 91000021     	add	x1, x1, #0x0
		0000000000001e10:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1e14: 94000000     	bl	0x1e14 <gf_parse_dts+0x160>
		0000000000001e14:  R_AARCH64_CALL26	_printk
    1e18: 17ffffba     	b	0x1d00 <gf_parse_dts+0x4c>
    1e1c: 94000000     	bl	0x1e1c <gf_parse_dts+0x168>
		0000000000001e1c:  R_AARCH64_CALL26	regulator_enable
    1e20: 350001e0     	cbnz	w0, 0x1e5c <gf_parse_dts+0x1a8>
    1e24: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001e24:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_109b
    1e28: 91000021     	add	x1, x1, #0x0
		0000000000001e28:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_109b
    1e2c: aa1503e0     	mov	x0, x21
    1e30: 2a1f03e2     	mov	w2, wzr
    1e34: 94000000     	bl	0x1e34 <gf_parse_dts+0x180>
		0000000000001e34:  R_AARCH64_CALL26	of_get_named_gpio
    1e38: b9004260     	str	w0, [x19, #0x40]
    1e3c: 36f802e0     	tbz	w0, #0x1f, 0x1e98 <gf_parse_dts+0x1e4>
    1e40: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001e40:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1131
    1e44: 91000000     	add	x0, x0, #0x0
		0000000000001e44:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1131
    1e48: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001e48:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1e4c: 91000021     	add	x1, x1, #0x0
		0000000000001e4c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1e50: 94000000     	bl	0x1e50 <gf_parse_dts+0x19c>
		0000000000001e50:  R_AARCH64_CALL26	_printk
    1e54: 12800014     	mov	w20, #-0x1              // =-1
    1e58: 14000040     	b	0x1f58 <gf_parse_dts+0x2a4>
    1e5c: 2a0003f4     	mov	w20, w0
    1e60: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001e60:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d91
    1e64: 91000000     	add	x0, x0, #0x0
		0000000000001e64:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d91
    1e68: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001e68:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1e6c: 91000021     	add	x1, x1, #0x0
		0000000000001e6c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1e70: 94000000     	bl	0x1e70 <gf_parse_dts+0x1bc>
		0000000000001e70:  R_AARCH64_CALL26	_printk
    1e74: f9403e60     	ldr	x0, [x19, #0x78]
    1e78: b4fff440     	cbz	x0, 0x1d00 <gf_parse_dts+0x4c>
    1e7c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001e7c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1263
    1e80: 91000021     	add	x1, x1, #0x0
		0000000000001e80:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1263
    1e84: 94000000     	bl	0x1e84 <gf_parse_dts+0x1d0>
		0000000000001e84:  R_AARCH64_CALL26	zlog_client_record
    1e88: f9403e60     	ldr	x0, [x19, #0x78]
    1e8c: 52802041     	mov	w1, #0x102              // =258
    1e90: 94000000     	bl	0x1e90 <gf_parse_dts+0x1dc>
		0000000000001e90:  R_AARCH64_CALL26	zlog_client_notify
    1e94: 17ffff9b     	b	0x1d00 <gf_parse_dts+0x4c>
    1e98: 2a0003e1     	mov	w1, w0
    1e9c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001e9c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    1ea0: 91000000     	add	x0, x0, #0x0
		0000000000001ea0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    1ea4: 94000000     	bl	0x1ea4 <gf_parse_dts+0x1f0>
		0000000000001ea4:  R_AARCH64_CALL26	_printk
    1ea8: b9404261     	ldr	w1, [x19, #0x40]
    1eac: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x40>
		0000000000001eac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_045b
    1eb0: 91000042     	add	x2, x2, #0x0
		0000000000001eb0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_045b
    1eb4: 910042c0     	add	x0, x22, #0x10
    1eb8: 94000000     	bl	0x1eb8 <gf_parse_dts+0x204>
		0000000000001eb8:  R_AARCH64_CALL26	devm_gpio_request
    1ebc: 35000300     	cbnz	w0, 0x1f1c <gf_parse_dts+0x268>
    1ec0: b9404261     	ldr	w1, [x19, #0x40]
    1ec4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001ec4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    1ec8: 91000000     	add	x0, x0, #0x0
		0000000000001ec8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    1ecc: 94000000     	bl	0x1ecc <gf_parse_dts+0x218>
		0000000000001ecc:  R_AARCH64_CALL26	_printk
    1ed0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001ed0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e6b
    1ed4: 91000021     	add	x1, x1, #0x0
		0000000000001ed4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e6b
    1ed8: aa1503e0     	mov	x0, x21
    1edc: 2a1f03e2     	mov	w2, wzr
    1ee0: 94000000     	bl	0x1ee0 <gf_parse_dts+0x22c>
		0000000000001ee0:  R_AARCH64_CALL26	of_get_named_gpio
    1ee4: b9003e60     	str	w0, [x19, #0x3c]
    1ee8: 36f803e0     	tbz	w0, #0x1f, 0x1f64 <gf_parse_dts+0x2b0>
    1eec: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001eec:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_077c
    1ef0: 91000000     	add	x0, x0, #0x0
		0000000000001ef0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_077c
    1ef4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001ef4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1ef8: 91000021     	add	x1, x1, #0x0
		0000000000001ef8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1efc: 94000000     	bl	0x1efc <gf_parse_dts+0x248>
		0000000000001efc:  R_AARCH64_CALL26	_printk
    1f00: 12800014     	mov	w20, #-0x1              // =-1
    1f04: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001f04:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d0b
    1f08: 91000000     	add	x0, x0, #0x0
		0000000000001f08:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d0b
    1f0c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001f0c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1f10: 91000021     	add	x1, x1, #0x0
		0000000000001f10:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1f14: 94000000     	bl	0x1f14 <gf_parse_dts+0x260>
		0000000000001f14:  R_AARCH64_CALL26	_printk
    1f18: 14000010     	b	0x1f58 <gf_parse_dts+0x2a4>
    1f1c: 2a0003f4     	mov	w20, w0
    1f20: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001f20:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_08b8
    1f24: 91000000     	add	x0, x0, #0x0
		0000000000001f24:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_08b8
    1f28: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001f28:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1f2c: 91000021     	add	x1, x1, #0x0
		0000000000001f2c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1f30: 2a1403e2     	mov	w2, w20
    1f34: 94000000     	bl	0x1f34 <gf_parse_dts+0x280>
		0000000000001f34:  R_AARCH64_CALL26	_printk
    1f38: f9403e60     	ldr	x0, [x19, #0x78]
    1f3c: b40000e0     	cbz	x0, 0x1f58 <gf_parse_dts+0x2a4>
    1f40: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001f40:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0ac6
    1f44: 91000021     	add	x1, x1, #0x0
		0000000000001f44:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0ac6
    1f48: 94000000     	bl	0x1f48 <gf_parse_dts+0x294>
		0000000000001f48:  R_AARCH64_CALL26	zlog_client_record
    1f4c: f9403e60     	ldr	x0, [x19, #0x78]
    1f50: 52802021     	mov	w1, #0x101              // =257
    1f54: 94000000     	bl	0x1f54 <gf_parse_dts+0x2a0>
		0000000000001f54:  R_AARCH64_CALL26	zlog_client_notify
    1f58: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001f58:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f9f
    1f5c: 91000000     	add	x0, x0, #0x0
		0000000000001f5c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f9f
    1f60: 17ffffab     	b	0x1e0c <gf_parse_dts+0x158>
    1f64: 2a0003e1     	mov	w1, w0
    1f68: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001f68:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0b75
    1f6c: 91000000     	add	x0, x0, #0x0
		0000000000001f6c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0b75
    1f70: 94000000     	bl	0x1f70 <gf_parse_dts+0x2bc>
		0000000000001f70:  R_AARCH64_CALL26	_printk
    1f74: b9403e61     	ldr	w1, [x19, #0x3c]
    1f78: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x40>
		0000000000001f78:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03c8
    1f7c: 91000042     	add	x2, x2, #0x0
		0000000000001f7c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03c8
    1f80: 910042c0     	add	x0, x22, #0x10
    1f84: 94000000     	bl	0x1f84 <gf_parse_dts+0x2d0>
		0000000000001f84:  R_AARCH64_CALL26	devm_gpio_request
    1f88: 2a0003f4     	mov	w20, w0
    1f8c: 35000140     	cbnz	w0, 0x1fb4 <gf_parse_dts+0x300>
    1f90: b9403e60     	ldr	w0, [x19, #0x3c]
    1f94: 94000000     	bl	0x1f94 <gf_parse_dts+0x2e0>
		0000000000001f94:  R_AARCH64_CALL26	gpio_to_desc
    1f98: 94000000     	bl	0x1f98 <gf_parse_dts+0x2e4>
		0000000000001f98:  R_AARCH64_CALL26	gpiod_direction_input
    1f9c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001f9c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a54
    1fa0: 91000000     	add	x0, x0, #0x0
		0000000000001fa0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a54
    1fa4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001fa4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1fa8: 91000021     	add	x1, x1, #0x0
		0000000000001fa8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1fac: 2a1f03e2     	mov	w2, wzr
    1fb0: 17ffff59     	b	0x1d14 <gf_parse_dts+0x60>
    1fb4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001fb4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1375
    1fb8: 91000000     	add	x0, x0, #0x0
		0000000000001fb8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1375
    1fbc: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001fbc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1fc0: 91000021     	add	x1, x1, #0x0
		0000000000001fc0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1fc4: 2a1403e2     	mov	w2, w20
    1fc8: 94000000     	bl	0x1fc8 <gf_parse_dts+0x314>
		0000000000001fc8:  R_AARCH64_CALL26	_printk
    1fcc: f9403e60     	ldr	x0, [x19, #0x78]
    1fd0: b4fff9a0     	cbz	x0, 0x1f04 <gf_parse_dts+0x250>
    1fd4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001fd4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1200
    1fd8: 91000021     	add	x1, x1, #0x0
		0000000000001fd8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1200
    1fdc: 94000000     	bl	0x1fdc <gf_parse_dts+0x328>
		0000000000001fdc:  R_AARCH64_CALL26	zlog_client_record
    1fe0: f9403e60     	ldr	x0, [x19, #0x78]
    1fe4: 52802001     	mov	w1, #0x100              // =256
    1fe8: 94000000     	bl	0x1fe8 <gf_parse_dts+0x334>
		0000000000001fe8:  R_AARCH64_CALL26	zlog_client_notify
    1fec: 17ffffc6     	b	0x1f04 <gf_parse_dts+0x250>
