
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e58 <gf_parse_dts>:
    1e58: d503233f     	paciasp
    1e5c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1e60: a90157f6     	stp	x22, x21, [sp, #0x10]
    1e64: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1e68: 910003fd     	mov	x29, sp
    1e6c: f9400c16     	ldr	x22, [x0, #0x18]
    1e70: aa0003f3     	mov	x19, x0
    1e74: f9417ed5     	ldr	x21, [x22, #0x2f8]
    1e78: 94000000     	bl	0x1e78 <gf_parse_dts+0x20>
		0000000000001e78:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    1e7c: 2a0003f4     	mov	w20, w0
    1e80: 35000060     	cbnz	w0, 0x1e8c <gf_parse_dts+0x34>
    1e84: f9404268     	ldr	x8, [x19, #0x80]
    1e88: b5000268     	cbnz	x8, 0x1ed4 <gf_parse_dts+0x7c>
    1e8c: 90000000     	adrp	x0, 0x1000 <gf_power_off+0x14>
		0000000000001e8c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0982
    1e90: 91000000     	add	x0, x0, #0x0
		0000000000001e90:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0982
    1e94: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001e94:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1e98: 91000021     	add	x1, x1, #0x0
		0000000000001e98:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1e9c: 2a1403e2     	mov	w2, w20
    1ea0: 94000000     	bl	0x1ea0 <gf_parse_dts+0x48>
		0000000000001ea0:  R_AARCH64_CALL26	_printk
    1ea4: 90000000     	adrp	x0, 0x1000 <gf_power_off+0x14>
		0000000000001ea4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03d3
    1ea8: 91000000     	add	x0, x0, #0x0
		0000000000001ea8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03d3
    1eac: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001eac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1eb0: 91000021     	add	x1, x1, #0x0
		0000000000001eb0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1eb4: 2a1403e2     	mov	w2, w20
    1eb8: 94000000     	bl	0x1eb8 <gf_parse_dts+0x60>
		0000000000001eb8:  R_AARCH64_CALL26	_printk
    1ebc: 2a1403e0     	mov	w0, w20
    1ec0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1ec4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1ec8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1ecc: d50323bf     	autiasp
    1ed0: d65f03c0     	ret
    1ed4: 90000000     	adrp	x0, 0x1000 <gf_power_off+0x14>
		0000000000001ed4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_01ee
    1ed8: 91000000     	add	x0, x0, #0x0
		0000000000001ed8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_01ee
    1edc: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001edc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06c3
    1ee0: 91000021     	add	x1, x1, #0x0
		0000000000001ee0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06c3
    1ee4: 2a1f03e2     	mov	w2, wzr
    1ee8: 94000000     	bl	0x1ee8 <gf_parse_dts+0x90>
		0000000000001ee8:  R_AARCH64_CALL26	_printk
    1eec: f9404a61     	ldr	x1, [x19, #0x90]
    1ef0: b40004c1     	cbz	x1, 0x1f88 <gf_parse_dts+0x130>
    1ef4: b13ffc3f     	cmn	x1, #0xfff
    1ef8: 54000482     	b.hs	0x1f88 <gf_parse_dts+0x130>
    1efc: f9404260     	ldr	x0, [x19, #0x80]
    1f00: 94000000     	bl	0x1f00 <gf_parse_dts+0xa8>
		0000000000001f00:  R_AARCH64_CALL26	pinctrl_select_state
    1f04: 34000140     	cbz	w0, 0x1f2c <gf_parse_dts+0xd4>
    1f08: f9400e68     	ldr	x8, [x19, #0x18]
    1f0c: 2a0003f4     	mov	w20, w0
    1f10: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001f10:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a1e
    1f14: 91000021     	add	x1, x1, #0x0
		0000000000001f14:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a1e
    1f18: 90000002     	adrp	x2, 0x1000 <gf_power_off+0x14>
		0000000000001f18:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    1f1c: 91000042     	add	x2, x2, #0x0
		0000000000001f1c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    1f20: 91004100     	add	x0, x8, #0x10
    1f24: 94000000     	bl	0x1f24 <gf_parse_dts+0xcc>
		0000000000001f24:  R_AARCH64_CALL26	_dev_err
    1f28: 37f80414     	tbnz	w20, #0x1f, 0x1fa8 <gf_parse_dts+0x150>
    1f2c: 90000000     	adrp	x0, 0x1000 <gf_power_off+0x14>
		0000000000001f2c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0205
    1f30: 91000000     	add	x0, x0, #0x0
		0000000000001f30:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0205
    1f34: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001f34:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1f38: 91000021     	add	x1, x1, #0x0
		0000000000001f38:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1f3c: 94000000     	bl	0x1f3c <gf_parse_dts+0xe4>
		0000000000001f3c:  R_AARCH64_CALL26	_printk
    1f40: 5284e200     	mov	w0, #0x2710             // =10000
    1f44: 5284ee81     	mov	w1, #0x2774             // =10100
    1f48: 52800042     	mov	w2, #0x2                // =2
    1f4c: 94000000     	bl	0x1f4c <gf_parse_dts+0xf4>
		0000000000001f4c:  R_AARCH64_CALL26	usleep_range_state
    1f50: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001f50:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09a7
    1f54: 91000021     	add	x1, x1, #0x0
		0000000000001f54:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09a7
    1f58: 910042c0     	add	x0, x22, #0x10
    1f5c: 94000000     	bl	0x1f5c <gf_parse_dts+0x104>
		0000000000001f5c:  R_AARCH64_CALL26	devm_regulator_get
    1f60: b13ffc1f     	cmn	x0, #0xfff
    1f64: f9004e60     	str	x0, [x19, #0x98]
    1f68: 540002c3     	b.lo	0x1fc0 <gf_parse_dts+0x168>
    1f6c: 90000000     	adrp	x0, 0x1000 <gf_power_off+0x14>
		0000000000001f6c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02e4
    1f70: 91000000     	add	x0, x0, #0x0
		0000000000001f70:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02e4
    1f74: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001f74:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1f78: 91000021     	add	x1, x1, #0x0
		0000000000001f78:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1f7c: 94000000     	bl	0x1f7c <gf_parse_dts+0x124>
		0000000000001f7c:  R_AARCH64_CALL26	_printk
    1f80: b9409a74     	ldr	w20, [x19, #0x98]
    1f84: 17ffffc8     	b	0x1ea4 <gf_parse_dts+0x4c>
    1f88: f9400e68     	ldr	x8, [x19, #0x18]
    1f8c: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001f8c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f84
    1f90: 91000021     	add	x1, x1, #0x0
		0000000000001f90:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f84
    1f94: 90000002     	adrp	x2, 0x1000 <gf_power_off+0x14>
		0000000000001f94:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    1f98: 91000042     	add	x2, x2, #0x0
		0000000000001f98:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    1f9c: 91004100     	add	x0, x8, #0x10
    1fa0: 94000000     	bl	0x1fa0 <gf_parse_dts+0x148>
		0000000000001fa0:  R_AARCH64_CALL26	_dev_err
    1fa4: 128002b4     	mov	w20, #-0x16             // =-22
    1fa8: 90000000     	adrp	x0, 0x1000 <gf_power_off+0x14>
		0000000000001fa8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02b6
    1fac: 91000000     	add	x0, x0, #0x0
		0000000000001fac:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02b6
    1fb0: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001fb0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1fb4: 91000021     	add	x1, x1, #0x0
		0000000000001fb4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1fb8: 94000000     	bl	0x1fb8 <gf_parse_dts+0x160>
		0000000000001fb8:  R_AARCH64_CALL26	_printk
    1fbc: 17ffffba     	b	0x1ea4 <gf_parse_dts+0x4c>
    1fc0: 94000000     	bl	0x1fc0 <gf_parse_dts+0x168>
		0000000000001fc0:  R_AARCH64_CALL26	regulator_enable
    1fc4: 350001e0     	cbnz	w0, 0x2000 <gf_parse_dts+0x1a8>
    1fc8: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001fc8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_109b
    1fcc: 91000021     	add	x1, x1, #0x0
		0000000000001fcc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_109b
    1fd0: aa1503e0     	mov	x0, x21
    1fd4: 2a1f03e2     	mov	w2, wzr
    1fd8: 94000000     	bl	0x1fd8 <gf_parse_dts+0x180>
		0000000000001fd8:  R_AARCH64_CALL26	of_get_named_gpio
    1fdc: b9004260     	str	w0, [x19, #0x40]
    1fe0: 36f802e0     	tbz	w0, #0x1f, 0x203c <gf_parse_dts+0x1e4>
    1fe4: 90000000     	adrp	x0, 0x1000 <gf_power_off+0x14>
		0000000000001fe4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1131
    1fe8: 91000000     	add	x0, x0, #0x0
		0000000000001fe8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1131
    1fec: 90000001     	adrp	x1, 0x1000 <gf_power_off+0x14>
		0000000000001fec:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1ff0: 91000021     	add	x1, x1, #0x0
		0000000000001ff0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1ff4: 94000000     	bl	0x1ff4 <gf_parse_dts+0x19c>
		0000000000001ff4:  R_AARCH64_CALL26	_printk
    1ff8: 12800014     	mov	w20, #-0x1              // =-1
    1ffc: 14000040     	b	0x20fc <gf_parse_dts+0x2a4>
    2000: 2a0003f4     	mov	w20, w0
    2004: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002004:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d91
    2008: 91000000     	add	x0, x0, #0x0
		0000000000002008:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d91
    200c: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		000000000000200c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2010: 91000021     	add	x1, x1, #0x0
		0000000000002010:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2014: 94000000     	bl	0x2014 <gf_parse_dts+0x1bc>
		0000000000002014:  R_AARCH64_CALL26	_printk
    2018: f9403e60     	ldr	x0, [x19, #0x78]
    201c: b4fff440     	cbz	x0, 0x1ea4 <gf_parse_dts+0x4c>
    2020: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002020:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1263
    2024: 91000021     	add	x1, x1, #0x0
		0000000000002024:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1263
    2028: 94000000     	bl	0x2028 <gf_parse_dts+0x1d0>
		0000000000002028:  R_AARCH64_CALL26	zlog_client_record
    202c: f9403e60     	ldr	x0, [x19, #0x78]
    2030: 52802041     	mov	w1, #0x102              // =258
    2034: 94000000     	bl	0x2034 <gf_parse_dts+0x1dc>
		0000000000002034:  R_AARCH64_CALL26	zlog_client_notify
    2038: 17ffff9b     	b	0x1ea4 <gf_parse_dts+0x4c>
    203c: 2a0003e1     	mov	w1, w0
    2040: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002040:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    2044: 91000000     	add	x0, x0, #0x0
		0000000000002044:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    2048: 94000000     	bl	0x2048 <gf_parse_dts+0x1f0>
		0000000000002048:  R_AARCH64_CALL26	_printk
    204c: b9404261     	ldr	w1, [x19, #0x40]
    2050: 90000002     	adrp	x2, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002050:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_045b
    2054: 91000042     	add	x2, x2, #0x0
		0000000000002054:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_045b
    2058: 910042c0     	add	x0, x22, #0x10
    205c: 94000000     	bl	0x205c <gf_parse_dts+0x204>
		000000000000205c:  R_AARCH64_CALL26	devm_gpio_request
    2060: 35000300     	cbnz	w0, 0x20c0 <gf_parse_dts+0x268>
    2064: b9404261     	ldr	w1, [x19, #0x40]
    2068: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002068:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    206c: 91000000     	add	x0, x0, #0x0
		000000000000206c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    2070: 94000000     	bl	0x2070 <gf_parse_dts+0x218>
		0000000000002070:  R_AARCH64_CALL26	_printk
    2074: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002074:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e6b
    2078: 91000021     	add	x1, x1, #0x0
		0000000000002078:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e6b
    207c: aa1503e0     	mov	x0, x21
    2080: 2a1f03e2     	mov	w2, wzr
    2084: 94000000     	bl	0x2084 <gf_parse_dts+0x22c>
		0000000000002084:  R_AARCH64_CALL26	of_get_named_gpio
    2088: b9003e60     	str	w0, [x19, #0x3c]
    208c: 36f803e0     	tbz	w0, #0x1f, 0x2108 <gf_parse_dts+0x2b0>
    2090: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002090:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_077c
    2094: 91000000     	add	x0, x0, #0x0
		0000000000002094:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_077c
    2098: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002098:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    209c: 91000021     	add	x1, x1, #0x0
		000000000000209c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    20a0: 94000000     	bl	0x20a0 <gf_parse_dts+0x248>
		00000000000020a0:  R_AARCH64_CALL26	_printk
    20a4: 12800014     	mov	w20, #-0x1              // =-1
    20a8: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		00000000000020a8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d0b
    20ac: 91000000     	add	x0, x0, #0x0
		00000000000020ac:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d0b
    20b0: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		00000000000020b0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    20b4: 91000021     	add	x1, x1, #0x0
		00000000000020b4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    20b8: 94000000     	bl	0x20b8 <gf_parse_dts+0x260>
		00000000000020b8:  R_AARCH64_CALL26	_printk
    20bc: 14000010     	b	0x20fc <gf_parse_dts+0x2a4>
    20c0: 2a0003f4     	mov	w20, w0
    20c4: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		00000000000020c4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_08b8
    20c8: 91000000     	add	x0, x0, #0x0
		00000000000020c8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_08b8
    20cc: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		00000000000020cc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    20d0: 91000021     	add	x1, x1, #0x0
		00000000000020d0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    20d4: 2a1403e2     	mov	w2, w20
    20d8: 94000000     	bl	0x20d8 <gf_parse_dts+0x280>
		00000000000020d8:  R_AARCH64_CALL26	_printk
    20dc: f9403e60     	ldr	x0, [x19, #0x78]
    20e0: b40000e0     	cbz	x0, 0x20fc <gf_parse_dts+0x2a4>
    20e4: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		00000000000020e4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0ac6
    20e8: 91000021     	add	x1, x1, #0x0
		00000000000020e8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0ac6
    20ec: 94000000     	bl	0x20ec <gf_parse_dts+0x294>
		00000000000020ec:  R_AARCH64_CALL26	zlog_client_record
    20f0: f9403e60     	ldr	x0, [x19, #0x78]
    20f4: 52802021     	mov	w1, #0x101              // =257
    20f8: 94000000     	bl	0x20f8 <gf_parse_dts+0x2a0>
		00000000000020f8:  R_AARCH64_CALL26	zlog_client_notify
    20fc: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		00000000000020fc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f9f
    2100: 91000000     	add	x0, x0, #0x0
		0000000000002100:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f9f
    2104: 17ffffab     	b	0x1fb0 <gf_parse_dts+0x158>
    2108: 2a0003e1     	mov	w1, w0
    210c: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		000000000000210c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0b75
    2110: 91000000     	add	x0, x0, #0x0
		0000000000002110:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0b75
    2114: 94000000     	bl	0x2114 <gf_parse_dts+0x2bc>
		0000000000002114:  R_AARCH64_CALL26	_printk
    2118: b9403e61     	ldr	w1, [x19, #0x3c]
    211c: 90000002     	adrp	x2, 0x2000 <gf_parse_dts+0x1a8>
		000000000000211c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03c8
    2120: 91000042     	add	x2, x2, #0x0
		0000000000002120:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03c8
    2124: 910042c0     	add	x0, x22, #0x10
    2128: 94000000     	bl	0x2128 <gf_parse_dts+0x2d0>
		0000000000002128:  R_AARCH64_CALL26	devm_gpio_request
    212c: 2a0003f4     	mov	w20, w0
    2130: 35000140     	cbnz	w0, 0x2158 <gf_parse_dts+0x300>
    2134: b9403e60     	ldr	w0, [x19, #0x3c]
    2138: 94000000     	bl	0x2138 <gf_parse_dts+0x2e0>
		0000000000002138:  R_AARCH64_CALL26	gpio_to_desc
    213c: 94000000     	bl	0x213c <gf_parse_dts+0x2e4>
		000000000000213c:  R_AARCH64_CALL26	gpiod_direction_input
    2140: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002140:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a54
    2144: 91000000     	add	x0, x0, #0x0
		0000000000002144:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a54
    2148: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002148:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    214c: 91000021     	add	x1, x1, #0x0
		000000000000214c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2150: 2a1f03e2     	mov	w2, wzr
    2154: 17ffff59     	b	0x1eb8 <gf_parse_dts+0x60>
    2158: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002158:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1375
    215c: 91000000     	add	x0, x0, #0x0
		000000000000215c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1375
    2160: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002160:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2164: 91000021     	add	x1, x1, #0x0
		0000000000002164:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2168: 2a1403e2     	mov	w2, w20
    216c: 94000000     	bl	0x216c <gf_parse_dts+0x314>
		000000000000216c:  R_AARCH64_CALL26	_printk
    2170: f9403e60     	ldr	x0, [x19, #0x78]
    2174: b4fff9a0     	cbz	x0, 0x20a8 <gf_parse_dts+0x250>
    2178: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0x1a8>
		0000000000002178:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1200
    217c: 91000021     	add	x1, x1, #0x0
		000000000000217c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1200
    2180: 94000000     	bl	0x2180 <gf_parse_dts+0x328>
		0000000000002180:  R_AARCH64_CALL26	zlog_client_record
    2184: f9403e60     	ldr	x0, [x19, #0x78]
    2188: 52802001     	mov	w1, #0x100              // =256
    218c: 94000000     	bl	0x218c <gf_parse_dts+0x334>
		000000000000218c:  R_AARCH64_CALL26	zlog_client_notify
    2190: 17ffffc6     	b	0x20a8 <gf_parse_dts+0x250>
