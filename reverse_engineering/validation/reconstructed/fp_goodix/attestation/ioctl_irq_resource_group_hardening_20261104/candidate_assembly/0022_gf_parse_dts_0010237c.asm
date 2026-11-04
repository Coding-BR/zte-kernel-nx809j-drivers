
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f54 <gf_parse_dts>:
    1f54: d503233f     	paciasp
    1f58: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1f5c: a90157f6     	stp	x22, x21, [sp, #0x10]
    1f60: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1f64: 910003fd     	mov	x29, sp
    1f68: f9400c16     	ldr	x22, [x0, #0x18]
    1f6c: aa0003f3     	mov	x19, x0
    1f70: f9417ed5     	ldr	x21, [x22, #0x2f8]
    1f74: 94000000     	bl	0x1f74 <gf_parse_dts+0x20>
		0000000000001f74:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    1f78: 2a0003f4     	mov	w20, w0
    1f7c: 35000060     	cbnz	w0, 0x1f88 <gf_parse_dts+0x34>
    1f80: f9404268     	ldr	x8, [x19, #0x80]
    1f84: b5000268     	cbnz	x8, 0x1fd0 <gf_parse_dts+0x7c>
    1f88: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001f88:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0982
    1f8c: 91000000     	add	x0, x0, #0x0
		0000000000001f8c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0982
    1f90: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001f90:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1f94: 91000021     	add	x1, x1, #0x0
		0000000000001f94:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1f98: 2a1403e2     	mov	w2, w20
    1f9c: 94000000     	bl	0x1f9c <gf_parse_dts+0x48>
		0000000000001f9c:  R_AARCH64_CALL26	_printk
    1fa0: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001fa0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03d3
    1fa4: 91000000     	add	x0, x0, #0x0
		0000000000001fa4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03d3
    1fa8: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001fa8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    1fac: 91000021     	add	x1, x1, #0x0
		0000000000001fac:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    1fb0: 2a1403e2     	mov	w2, w20
    1fb4: 94000000     	bl	0x1fb4 <gf_parse_dts+0x60>
		0000000000001fb4:  R_AARCH64_CALL26	_printk
    1fb8: 2a1403e0     	mov	w0, w20
    1fbc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1fc0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1fc4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1fc8: d50323bf     	autiasp
    1fcc: d65f03c0     	ret
    1fd0: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001fd0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_01ee
    1fd4: 91000000     	add	x0, x0, #0x0
		0000000000001fd4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_01ee
    1fd8: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001fd8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06c3
    1fdc: 91000021     	add	x1, x1, #0x0
		0000000000001fdc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06c3
    1fe0: 2a1f03e2     	mov	w2, wzr
    1fe4: 94000000     	bl	0x1fe4 <gf_parse_dts+0x90>
		0000000000001fe4:  R_AARCH64_CALL26	_printk
    1fe8: f9404a61     	ldr	x1, [x19, #0x90]
    1fec: b40004c1     	cbz	x1, 0x2084 <gf_parse_dts+0x130>
    1ff0: b13ffc3f     	cmn	x1, #0xfff
    1ff4: 54000482     	b.hs	0x2084 <gf_parse_dts+0x130>
    1ff8: f9404260     	ldr	x0, [x19, #0x80]
    1ffc: 94000000     	bl	0x1ffc <gf_parse_dts+0xa8>
		0000000000001ffc:  R_AARCH64_CALL26	pinctrl_select_state
    2000: 34000140     	cbz	w0, 0x2028 <gf_parse_dts+0xd4>
    2004: f9400e68     	ldr	x8, [x19, #0x18]
    2008: 2a0003f4     	mov	w20, w0
    200c: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		000000000000200c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a1e
    2010: 91000021     	add	x1, x1, #0x0
		0000000000002010:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a1e
    2014: 90000002     	adrp	x2, 0x2000 <gf_parse_dts+0xac>
		0000000000002014:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    2018: 91000042     	add	x2, x2, #0x0
		0000000000002018:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    201c: 91004100     	add	x0, x8, #0x10
    2020: 94000000     	bl	0x2020 <gf_parse_dts+0xcc>
		0000000000002020:  R_AARCH64_CALL26	_dev_err
    2024: 37f80414     	tbnz	w20, #0x1f, 0x20a4 <gf_parse_dts+0x150>
    2028: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		0000000000002028:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0205
    202c: 91000000     	add	x0, x0, #0x0
		000000000000202c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0205
    2030: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		0000000000002030:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2034: 91000021     	add	x1, x1, #0x0
		0000000000002034:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2038: 94000000     	bl	0x2038 <gf_parse_dts+0xe4>
		0000000000002038:  R_AARCH64_CALL26	_printk
    203c: 5284e200     	mov	w0, #0x2710             // =10000
    2040: 5284ee81     	mov	w1, #0x2774             // =10100
    2044: 52800042     	mov	w2, #0x2                // =2
    2048: 94000000     	bl	0x2048 <gf_parse_dts+0xf4>
		0000000000002048:  R_AARCH64_CALL26	usleep_range_state
    204c: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		000000000000204c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09a7
    2050: 91000021     	add	x1, x1, #0x0
		0000000000002050:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09a7
    2054: 910042c0     	add	x0, x22, #0x10
    2058: 94000000     	bl	0x2058 <gf_parse_dts+0x104>
		0000000000002058:  R_AARCH64_CALL26	devm_regulator_get
    205c: b13ffc1f     	cmn	x0, #0xfff
    2060: f9004e60     	str	x0, [x19, #0x98]
    2064: 540002c3     	b.lo	0x20bc <gf_parse_dts+0x168>
    2068: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		0000000000002068:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02e4
    206c: 91000000     	add	x0, x0, #0x0
		000000000000206c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02e4
    2070: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		0000000000002070:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2074: 91000021     	add	x1, x1, #0x0
		0000000000002074:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2078: 94000000     	bl	0x2078 <gf_parse_dts+0x124>
		0000000000002078:  R_AARCH64_CALL26	_printk
    207c: b9409a74     	ldr	w20, [x19, #0x98]
    2080: 17ffffc8     	b	0x1fa0 <gf_parse_dts+0x4c>
    2084: f9400e68     	ldr	x8, [x19, #0x18]
    2088: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		0000000000002088:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f84
    208c: 91000021     	add	x1, x1, #0x0
		000000000000208c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f84
    2090: 90000002     	adrp	x2, 0x2000 <gf_parse_dts+0xac>
		0000000000002090:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    2094: 91000042     	add	x2, x2, #0x0
		0000000000002094:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    2098: 91004100     	add	x0, x8, #0x10
    209c: 94000000     	bl	0x209c <gf_parse_dts+0x148>
		000000000000209c:  R_AARCH64_CALL26	_dev_err
    20a0: 128002b4     	mov	w20, #-0x16             // =-22
    20a4: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		00000000000020a4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02b6
    20a8: 91000000     	add	x0, x0, #0x0
		00000000000020a8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02b6
    20ac: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		00000000000020ac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    20b0: 91000021     	add	x1, x1, #0x0
		00000000000020b0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    20b4: 94000000     	bl	0x20b4 <gf_parse_dts+0x160>
		00000000000020b4:  R_AARCH64_CALL26	_printk
    20b8: 17ffffba     	b	0x1fa0 <gf_parse_dts+0x4c>
    20bc: 94000000     	bl	0x20bc <gf_parse_dts+0x168>
		00000000000020bc:  R_AARCH64_CALL26	regulator_enable
    20c0: 350001e0     	cbnz	w0, 0x20fc <gf_parse_dts+0x1a8>
    20c4: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		00000000000020c4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_109b
    20c8: 91000021     	add	x1, x1, #0x0
		00000000000020c8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_109b
    20cc: aa1503e0     	mov	x0, x21
    20d0: 2a1f03e2     	mov	w2, wzr
    20d4: 94000000     	bl	0x20d4 <gf_parse_dts+0x180>
		00000000000020d4:  R_AARCH64_CALL26	of_get_named_gpio
    20d8: b9004260     	str	w0, [x19, #0x40]
    20dc: 36f802e0     	tbz	w0, #0x1f, 0x2138 <gf_parse_dts+0x1e4>
    20e0: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		00000000000020e0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1131
    20e4: 91000000     	add	x0, x0, #0x0
		00000000000020e4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1131
    20e8: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		00000000000020e8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    20ec: 91000021     	add	x1, x1, #0x0
		00000000000020ec:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    20f0: 94000000     	bl	0x20f0 <gf_parse_dts+0x19c>
		00000000000020f0:  R_AARCH64_CALL26	_printk
    20f4: 12800014     	mov	w20, #-0x1              // =-1
    20f8: 14000040     	b	0x21f8 <gf_parse_dts+0x2a4>
    20fc: 2a0003f4     	mov	w20, w0
    2100: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		0000000000002100:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d91
    2104: 91000000     	add	x0, x0, #0x0
		0000000000002104:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d91
    2108: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		0000000000002108:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    210c: 91000021     	add	x1, x1, #0x0
		000000000000210c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2110: 94000000     	bl	0x2110 <gf_parse_dts+0x1bc>
		0000000000002110:  R_AARCH64_CALL26	_printk
    2114: f9403e60     	ldr	x0, [x19, #0x78]
    2118: b4fff440     	cbz	x0, 0x1fa0 <gf_parse_dts+0x4c>
    211c: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		000000000000211c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1263
    2120: 91000021     	add	x1, x1, #0x0
		0000000000002120:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1263
    2124: 94000000     	bl	0x2124 <gf_parse_dts+0x1d0>
		0000000000002124:  R_AARCH64_CALL26	zlog_client_record
    2128: f9403e60     	ldr	x0, [x19, #0x78]
    212c: 52802041     	mov	w1, #0x102              // =258
    2130: 94000000     	bl	0x2130 <gf_parse_dts+0x1dc>
		0000000000002130:  R_AARCH64_CALL26	zlog_client_notify
    2134: 17ffff9b     	b	0x1fa0 <gf_parse_dts+0x4c>
    2138: 2a0003e1     	mov	w1, w0
    213c: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		000000000000213c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    2140: 91000000     	add	x0, x0, #0x0
		0000000000002140:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    2144: 94000000     	bl	0x2144 <gf_parse_dts+0x1f0>
		0000000000002144:  R_AARCH64_CALL26	_printk
    2148: b9404261     	ldr	w1, [x19, #0x40]
    214c: 90000002     	adrp	x2, 0x2000 <gf_parse_dts+0xac>
		000000000000214c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_045b
    2150: 91000042     	add	x2, x2, #0x0
		0000000000002150:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_045b
    2154: 910042c0     	add	x0, x22, #0x10
    2158: 94000000     	bl	0x2158 <gf_parse_dts+0x204>
		0000000000002158:  R_AARCH64_CALL26	devm_gpio_request
    215c: 35000300     	cbnz	w0, 0x21bc <gf_parse_dts+0x268>
    2160: b9404261     	ldr	w1, [x19, #0x40]
    2164: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		0000000000002164:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    2168: 91000000     	add	x0, x0, #0x0
		0000000000002168:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    216c: 94000000     	bl	0x216c <gf_parse_dts+0x218>
		000000000000216c:  R_AARCH64_CALL26	_printk
    2170: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		0000000000002170:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e6b
    2174: 91000021     	add	x1, x1, #0x0
		0000000000002174:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e6b
    2178: aa1503e0     	mov	x0, x21
    217c: 2a1f03e2     	mov	w2, wzr
    2180: 94000000     	bl	0x2180 <gf_parse_dts+0x22c>
		0000000000002180:  R_AARCH64_CALL26	of_get_named_gpio
    2184: b9003e60     	str	w0, [x19, #0x3c]
    2188: 36f803e0     	tbz	w0, #0x1f, 0x2204 <gf_parse_dts+0x2b0>
    218c: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		000000000000218c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_077c
    2190: 91000000     	add	x0, x0, #0x0
		0000000000002190:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_077c
    2194: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		0000000000002194:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2198: 91000021     	add	x1, x1, #0x0
		0000000000002198:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    219c: 94000000     	bl	0x219c <gf_parse_dts+0x248>
		000000000000219c:  R_AARCH64_CALL26	_printk
    21a0: 12800014     	mov	w20, #-0x1              // =-1
    21a4: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		00000000000021a4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d0b
    21a8: 91000000     	add	x0, x0, #0x0
		00000000000021a8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d0b
    21ac: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		00000000000021ac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    21b0: 91000021     	add	x1, x1, #0x0
		00000000000021b0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    21b4: 94000000     	bl	0x21b4 <gf_parse_dts+0x260>
		00000000000021b4:  R_AARCH64_CALL26	_printk
    21b8: 14000010     	b	0x21f8 <gf_parse_dts+0x2a4>
    21bc: 2a0003f4     	mov	w20, w0
    21c0: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		00000000000021c0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_08b8
    21c4: 91000000     	add	x0, x0, #0x0
		00000000000021c4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_08b8
    21c8: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		00000000000021c8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    21cc: 91000021     	add	x1, x1, #0x0
		00000000000021cc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    21d0: 2a1403e2     	mov	w2, w20
    21d4: 94000000     	bl	0x21d4 <gf_parse_dts+0x280>
		00000000000021d4:  R_AARCH64_CALL26	_printk
    21d8: f9403e60     	ldr	x0, [x19, #0x78]
    21dc: b40000e0     	cbz	x0, 0x21f8 <gf_parse_dts+0x2a4>
    21e0: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		00000000000021e0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0ac6
    21e4: 91000021     	add	x1, x1, #0x0
		00000000000021e4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0ac6
    21e8: 94000000     	bl	0x21e8 <gf_parse_dts+0x294>
		00000000000021e8:  R_AARCH64_CALL26	zlog_client_record
    21ec: f9403e60     	ldr	x0, [x19, #0x78]
    21f0: 52802021     	mov	w1, #0x101              // =257
    21f4: 94000000     	bl	0x21f4 <gf_parse_dts+0x2a0>
		00000000000021f4:  R_AARCH64_CALL26	zlog_client_notify
    21f8: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		00000000000021f8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f9f
    21fc: 91000000     	add	x0, x0, #0x0
		00000000000021fc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f9f
    2200: 17ffffab     	b	0x20ac <gf_parse_dts+0x158>
    2204: 2a0003e1     	mov	w1, w0
    2208: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		0000000000002208:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0b75
    220c: 91000000     	add	x0, x0, #0x0
		000000000000220c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0b75
    2210: 94000000     	bl	0x2210 <gf_parse_dts+0x2bc>
		0000000000002210:  R_AARCH64_CALL26	_printk
    2214: b9403e61     	ldr	w1, [x19, #0x3c]
    2218: 90000002     	adrp	x2, 0x2000 <gf_parse_dts+0xac>
		0000000000002218:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03c8
    221c: 91000042     	add	x2, x2, #0x0
		000000000000221c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03c8
    2220: 910042c0     	add	x0, x22, #0x10
    2224: 94000000     	bl	0x2224 <gf_parse_dts+0x2d0>
		0000000000002224:  R_AARCH64_CALL26	devm_gpio_request
    2228: 2a0003f4     	mov	w20, w0
    222c: 35000140     	cbnz	w0, 0x2254 <gf_parse_dts+0x300>
    2230: b9403e60     	ldr	w0, [x19, #0x3c]
    2234: 94000000     	bl	0x2234 <gf_parse_dts+0x2e0>
		0000000000002234:  R_AARCH64_CALL26	gpio_to_desc
    2238: 94000000     	bl	0x2238 <gf_parse_dts+0x2e4>
		0000000000002238:  R_AARCH64_CALL26	gpiod_direction_input
    223c: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		000000000000223c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a54
    2240: 91000000     	add	x0, x0, #0x0
		0000000000002240:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a54
    2244: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		0000000000002244:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2248: 91000021     	add	x1, x1, #0x0
		0000000000002248:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    224c: 2a1f03e2     	mov	w2, wzr
    2250: 17ffff59     	b	0x1fb4 <gf_parse_dts+0x60>
    2254: 90000000     	adrp	x0, 0x2000 <gf_parse_dts+0xac>
		0000000000002254:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1375
    2258: 91000000     	add	x0, x0, #0x0
		0000000000002258:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1375
    225c: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		000000000000225c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2260: 91000021     	add	x1, x1, #0x0
		0000000000002260:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2264: 2a1403e2     	mov	w2, w20
    2268: 94000000     	bl	0x2268 <gf_parse_dts+0x314>
		0000000000002268:  R_AARCH64_CALL26	_printk
    226c: f9403e60     	ldr	x0, [x19, #0x78]
    2270: b4fff9a0     	cbz	x0, 0x21a4 <gf_parse_dts+0x250>
    2274: 90000001     	adrp	x1, 0x2000 <gf_parse_dts+0xac>
		0000000000002274:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1200
    2278: 91000021     	add	x1, x1, #0x0
		0000000000002278:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1200
    227c: 94000000     	bl	0x227c <gf_parse_dts+0x328>
		000000000000227c:  R_AARCH64_CALL26	zlog_client_record
    2280: f9403e60     	ldr	x0, [x19, #0x78]
    2284: 52802001     	mov	w1, #0x100              // =256
    2288: 94000000     	bl	0x2288 <gf_parse_dts+0x334>
		0000000000002288:  R_AARCH64_CALL26	zlog_client_notify
    228c: 17ffffc6     	b	0x21a4 <gf_parse_dts+0x250>
