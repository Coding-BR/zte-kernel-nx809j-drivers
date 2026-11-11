
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002128 <gf_parse_dts>:
    2128: d503233f     	paciasp
    212c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2130: a90157f6     	stp	x22, x21, [sp, #0x10]
    2134: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2138: 910003fd     	mov	x29, sp
    213c: f9400c16     	ldr	x22, [x0, #0x18]
    2140: aa0003f3     	mov	x19, x0
    2144: f9417ed5     	ldr	x21, [x22, #0x2f8]
    2148: 94000000     	bl	0x2148 <gf_parse_dts+0x20>
		0000000000002148:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    214c: 2a0003f4     	mov	w20, w0
    2150: 35000060     	cbnz	w0, 0x215c <gf_parse_dts+0x34>
    2154: f9404268     	ldr	x8, [x19, #0x80]
    2158: b5000268     	cbnz	x8, 0x21a4 <gf_parse_dts+0x7c>
    215c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000215c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0982
    2160: 91000000     	add	x0, x0, #0x0
		0000000000002160:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0982
    2164: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002164:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2168: 91000021     	add	x1, x1, #0x0
		0000000000002168:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    216c: 2a1403e2     	mov	w2, w20
    2170: 94000000     	bl	0x2170 <gf_parse_dts+0x48>
		0000000000002170:  R_AARCH64_CALL26	_printk
    2174: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002174:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03d3
    2178: 91000000     	add	x0, x0, #0x0
		0000000000002178:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03d3
    217c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000217c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2180: 91000021     	add	x1, x1, #0x0
		0000000000002180:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2184: 2a1403e2     	mov	w2, w20
    2188: 94000000     	bl	0x2188 <gf_parse_dts+0x60>
		0000000000002188:  R_AARCH64_CALL26	_printk
    218c: 2a1403e0     	mov	w0, w20
    2190: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2194: a94157f6     	ldp	x22, x21, [sp, #0x10]
    2198: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    219c: d50323bf     	autiasp
    21a0: d65f03c0     	ret
    21a4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000021a4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_01ee
    21a8: 91000000     	add	x0, x0, #0x0
		00000000000021a8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_01ee
    21ac: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000021ac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06c3
    21b0: 91000021     	add	x1, x1, #0x0
		00000000000021b0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06c3
    21b4: 2a1f03e2     	mov	w2, wzr
    21b8: 94000000     	bl	0x21b8 <gf_parse_dts+0x90>
		00000000000021b8:  R_AARCH64_CALL26	_printk
    21bc: f9404a61     	ldr	x1, [x19, #0x90]
    21c0: b40004c1     	cbz	x1, 0x2258 <gf_parse_dts+0x130>
    21c4: b13ffc3f     	cmn	x1, #0xfff
    21c8: 54000482     	b.hs	0x2258 <gf_parse_dts+0x130>
    21cc: f9404260     	ldr	x0, [x19, #0x80]
    21d0: 94000000     	bl	0x21d0 <gf_parse_dts+0xa8>
		00000000000021d0:  R_AARCH64_CALL26	pinctrl_select_state
    21d4: 34000140     	cbz	w0, 0x21fc <gf_parse_dts+0xd4>
    21d8: f9400e68     	ldr	x8, [x19, #0x18]
    21dc: 2a0003f4     	mov	w20, w0
    21e0: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000021e0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a1e
    21e4: 91000021     	add	x1, x1, #0x0
		00000000000021e4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a1e
    21e8: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000021e8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    21ec: 91000042     	add	x2, x2, #0x0
		00000000000021ec:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    21f0: 91004100     	add	x0, x8, #0x10
    21f4: 94000000     	bl	0x21f4 <gf_parse_dts+0xcc>
		00000000000021f4:  R_AARCH64_CALL26	_dev_err
    21f8: 37f80414     	tbnz	w20, #0x1f, 0x2278 <gf_parse_dts+0x150>
    21fc: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000021fc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0205
    2200: 91000000     	add	x0, x0, #0x0
		0000000000002200:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0205
    2204: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002204:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2208: 91000021     	add	x1, x1, #0x0
		0000000000002208:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    220c: 94000000     	bl	0x220c <gf_parse_dts+0xe4>
		000000000000220c:  R_AARCH64_CALL26	_printk
    2210: 5284e200     	mov	w0, #0x2710             // =10000
    2214: 5284ee81     	mov	w1, #0x2774             // =10100
    2218: 52800042     	mov	w2, #0x2                // =2
    221c: 94000000     	bl	0x221c <gf_parse_dts+0xf4>
		000000000000221c:  R_AARCH64_CALL26	usleep_range_state
    2220: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002220:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09a7
    2224: 91000021     	add	x1, x1, #0x0
		0000000000002224:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09a7
    2228: 910042c0     	add	x0, x22, #0x10
    222c: 94000000     	bl	0x222c <gf_parse_dts+0x104>
		000000000000222c:  R_AARCH64_CALL26	devm_regulator_get
    2230: b13ffc1f     	cmn	x0, #0xfff
    2234: f9004e60     	str	x0, [x19, #0x98]
    2238: 540002c3     	b.lo	0x2290 <gf_parse_dts+0x168>
    223c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000223c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02e4
    2240: 91000000     	add	x0, x0, #0x0
		0000000000002240:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02e4
    2244: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002244:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2248: 91000021     	add	x1, x1, #0x0
		0000000000002248:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    224c: 94000000     	bl	0x224c <gf_parse_dts+0x124>
		000000000000224c:  R_AARCH64_CALL26	_printk
    2250: b9409a74     	ldr	w20, [x19, #0x98]
    2254: 17ffffc8     	b	0x2174 <gf_parse_dts+0x4c>
    2258: f9400e68     	ldr	x8, [x19, #0x18]
    225c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000225c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f84
    2260: 91000021     	add	x1, x1, #0x0
		0000000000002260:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f84
    2264: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002264:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    2268: 91000042     	add	x2, x2, #0x0
		0000000000002268:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    226c: 91004100     	add	x0, x8, #0x10
    2270: 94000000     	bl	0x2270 <gf_parse_dts+0x148>
		0000000000002270:  R_AARCH64_CALL26	_dev_err
    2274: 128002b4     	mov	w20, #-0x16             // =-22
    2278: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002278:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02b6
    227c: 91000000     	add	x0, x0, #0x0
		000000000000227c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02b6
    2280: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002280:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2284: 91000021     	add	x1, x1, #0x0
		0000000000002284:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2288: 94000000     	bl	0x2288 <gf_parse_dts+0x160>
		0000000000002288:  R_AARCH64_CALL26	_printk
    228c: 17ffffba     	b	0x2174 <gf_parse_dts+0x4c>
    2290: 94000000     	bl	0x2290 <gf_parse_dts+0x168>
		0000000000002290:  R_AARCH64_CALL26	regulator_enable
    2294: 350001e0     	cbnz	w0, 0x22d0 <gf_parse_dts+0x1a8>
    2298: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002298:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_109b
    229c: 91000021     	add	x1, x1, #0x0
		000000000000229c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_109b
    22a0: aa1503e0     	mov	x0, x21
    22a4: 2a1f03e2     	mov	w2, wzr
    22a8: 94000000     	bl	0x22a8 <gf_parse_dts+0x180>
		00000000000022a8:  R_AARCH64_CALL26	of_get_named_gpio
    22ac: b9004260     	str	w0, [x19, #0x40]
    22b0: 36f802e0     	tbz	w0, #0x1f, 0x230c <gf_parse_dts+0x1e4>
    22b4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000022b4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1131
    22b8: 91000000     	add	x0, x0, #0x0
		00000000000022b8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1131
    22bc: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000022bc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    22c0: 91000021     	add	x1, x1, #0x0
		00000000000022c0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    22c4: 94000000     	bl	0x22c4 <gf_parse_dts+0x19c>
		00000000000022c4:  R_AARCH64_CALL26	_printk
    22c8: 12800014     	mov	w20, #-0x1              // =-1
    22cc: 14000040     	b	0x23cc <gf_parse_dts+0x2a4>
    22d0: 2a0003f4     	mov	w20, w0
    22d4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000022d4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d91
    22d8: 91000000     	add	x0, x0, #0x0
		00000000000022d8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d91
    22dc: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000022dc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    22e0: 91000021     	add	x1, x1, #0x0
		00000000000022e0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    22e4: 94000000     	bl	0x22e4 <gf_parse_dts+0x1bc>
		00000000000022e4:  R_AARCH64_CALL26	_printk
    22e8: f9403e60     	ldr	x0, [x19, #0x78]
    22ec: b4fff440     	cbz	x0, 0x2174 <gf_parse_dts+0x4c>
    22f0: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000022f0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1263
    22f4: 91000021     	add	x1, x1, #0x0
		00000000000022f4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1263
    22f8: 94000000     	bl	0x22f8 <gf_parse_dts+0x1d0>
		00000000000022f8:  R_AARCH64_CALL26	zlog_client_record
    22fc: f9403e60     	ldr	x0, [x19, #0x78]
    2300: 52802041     	mov	w1, #0x102              // =258
    2304: 94000000     	bl	0x2304 <gf_parse_dts+0x1dc>
		0000000000002304:  R_AARCH64_CALL26	zlog_client_notify
    2308: 17ffff9b     	b	0x2174 <gf_parse_dts+0x4c>
    230c: 2a0003e1     	mov	w1, w0
    2310: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002310:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    2314: 91000000     	add	x0, x0, #0x0
		0000000000002314:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    2318: 94000000     	bl	0x2318 <gf_parse_dts+0x1f0>
		0000000000002318:  R_AARCH64_CALL26	_printk
    231c: b9404261     	ldr	w1, [x19, #0x40]
    2320: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002320:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_045b
    2324: 91000042     	add	x2, x2, #0x0
		0000000000002324:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_045b
    2328: 910042c0     	add	x0, x22, #0x10
    232c: 94000000     	bl	0x232c <gf_parse_dts+0x204>
		000000000000232c:  R_AARCH64_CALL26	devm_gpio_request
    2330: 35000300     	cbnz	w0, 0x2390 <gf_parse_dts+0x268>
    2334: b9404261     	ldr	w1, [x19, #0x40]
    2338: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002338:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    233c: 91000000     	add	x0, x0, #0x0
		000000000000233c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    2340: 94000000     	bl	0x2340 <gf_parse_dts+0x218>
		0000000000002340:  R_AARCH64_CALL26	_printk
    2344: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002344:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e6b
    2348: 91000021     	add	x1, x1, #0x0
		0000000000002348:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e6b
    234c: aa1503e0     	mov	x0, x21
    2350: 2a1f03e2     	mov	w2, wzr
    2354: 94000000     	bl	0x2354 <gf_parse_dts+0x22c>
		0000000000002354:  R_AARCH64_CALL26	of_get_named_gpio
    2358: b9003e60     	str	w0, [x19, #0x3c]
    235c: 36f803e0     	tbz	w0, #0x1f, 0x23d8 <gf_parse_dts+0x2b0>
    2360: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002360:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_077c
    2364: 91000000     	add	x0, x0, #0x0
		0000000000002364:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_077c
    2368: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002368:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    236c: 91000021     	add	x1, x1, #0x0
		000000000000236c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2370: 94000000     	bl	0x2370 <gf_parse_dts+0x248>
		0000000000002370:  R_AARCH64_CALL26	_printk
    2374: 12800014     	mov	w20, #-0x1              // =-1
    2378: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002378:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d0b
    237c: 91000000     	add	x0, x0, #0x0
		000000000000237c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d0b
    2380: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002380:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2384: 91000021     	add	x1, x1, #0x0
		0000000000002384:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2388: 94000000     	bl	0x2388 <gf_parse_dts+0x260>
		0000000000002388:  R_AARCH64_CALL26	_printk
    238c: 14000010     	b	0x23cc <gf_parse_dts+0x2a4>
    2390: 2a0003f4     	mov	w20, w0
    2394: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002394:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_08b8
    2398: 91000000     	add	x0, x0, #0x0
		0000000000002398:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_08b8
    239c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		000000000000239c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    23a0: 91000021     	add	x1, x1, #0x0
		00000000000023a0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    23a4: 2a1403e2     	mov	w2, w20
    23a8: 94000000     	bl	0x23a8 <gf_parse_dts+0x280>
		00000000000023a8:  R_AARCH64_CALL26	_printk
    23ac: f9403e60     	ldr	x0, [x19, #0x78]
    23b0: b40000e0     	cbz	x0, 0x23cc <gf_parse_dts+0x2a4>
    23b4: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000023b4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0ac6
    23b8: 91000021     	add	x1, x1, #0x0
		00000000000023b8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0ac6
    23bc: 94000000     	bl	0x23bc <gf_parse_dts+0x294>
		00000000000023bc:  R_AARCH64_CALL26	zlog_client_record
    23c0: f9403e60     	ldr	x0, [x19, #0x78]
    23c4: 52802021     	mov	w1, #0x101              // =257
    23c8: 94000000     	bl	0x23c8 <gf_parse_dts+0x2a0>
		00000000000023c8:  R_AARCH64_CALL26	zlog_client_notify
    23cc: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000023cc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f9f
    23d0: 91000000     	add	x0, x0, #0x0
		00000000000023d0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f9f
    23d4: 17ffffab     	b	0x2280 <gf_parse_dts+0x158>
    23d8: 2a0003e1     	mov	w1, w0
    23dc: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000023dc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0b75
    23e0: 91000000     	add	x0, x0, #0x0
		00000000000023e0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0b75
    23e4: 94000000     	bl	0x23e4 <gf_parse_dts+0x2bc>
		00000000000023e4:  R_AARCH64_CALL26	_printk
    23e8: b9403e61     	ldr	w1, [x19, #0x3c]
    23ec: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000023ec:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03c8
    23f0: 91000042     	add	x2, x2, #0x0
		00000000000023f0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03c8
    23f4: 910042c0     	add	x0, x22, #0x10
    23f8: 94000000     	bl	0x23f8 <gf_parse_dts+0x2d0>
		00000000000023f8:  R_AARCH64_CALL26	devm_gpio_request
    23fc: 2a0003f4     	mov	w20, w0
    2400: 35000140     	cbnz	w0, 0x2428 <gf_parse_dts+0x300>
    2404: b9403e60     	ldr	w0, [x19, #0x3c]
    2408: 94000000     	bl	0x2408 <gf_parse_dts+0x2e0>
		0000000000002408:  R_AARCH64_CALL26	gpio_to_desc
    240c: 94000000     	bl	0x240c <gf_parse_dts+0x2e4>
		000000000000240c:  R_AARCH64_CALL26	gpiod_direction_input
    2410: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002410:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a54
    2414: 91000000     	add	x0, x0, #0x0
		0000000000002414:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a54
    2418: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002418:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    241c: 91000021     	add	x1, x1, #0x0
		000000000000241c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2420: 2a1f03e2     	mov	w2, wzr
    2424: 17ffff59     	b	0x2188 <gf_parse_dts+0x60>
    2428: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002428:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1375
    242c: 91000000     	add	x0, x0, #0x0
		000000000000242c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1375
    2430: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002430:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2434: 91000021     	add	x1, x1, #0x0
		0000000000002434:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2438: 2a1403e2     	mov	w2, w20
    243c: 94000000     	bl	0x243c <gf_parse_dts+0x314>
		000000000000243c:  R_AARCH64_CALL26	_printk
    2440: f9403e60     	ldr	x0, [x19, #0x78]
    2444: b4fff9a0     	cbz	x0, 0x2378 <gf_parse_dts+0x250>
    2448: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002448:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1200
    244c: 91000021     	add	x1, x1, #0x0
		000000000000244c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1200
    2450: 94000000     	bl	0x2450 <gf_parse_dts+0x328>
		0000000000002450:  R_AARCH64_CALL26	zlog_client_record
    2454: f9403e60     	ldr	x0, [x19, #0x78]
    2458: 52802001     	mov	w1, #0x100              // =256
    245c: 94000000     	bl	0x245c <gf_parse_dts+0x334>
		000000000000245c:  R_AARCH64_CALL26	zlog_client_notify
    2460: 17ffffc6     	b	0x2378 <gf_parse_dts+0x250>
