
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002148 <gf_parse_dts>:
    2148: d503233f     	paciasp
    214c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2150: a90157f6     	stp	x22, x21, [sp, #0x10]
    2154: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2158: 910003fd     	mov	x29, sp
    215c: f9400c16     	ldr	x22, [x0, #0x18]
    2160: aa0003f3     	mov	x19, x0
    2164: f9417ed5     	ldr	x21, [x22, #0x2f8]
    2168: 94000000     	bl	0x2168 <gf_parse_dts+0x20>
		0000000000002168:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    216c: 2a0003f4     	mov	w20, w0
    2170: 35000060     	cbnz	w0, 0x217c <gf_parse_dts+0x34>
    2174: f9404268     	ldr	x8, [x19, #0x80]
    2178: b5000268     	cbnz	x8, 0x21c4 <gf_parse_dts+0x7c>
    217c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		000000000000217c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0982
    2180: 91000000     	add	x0, x0, #0x0
		0000000000002180:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0982
    2184: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002184:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2188: 91000021     	add	x1, x1, #0x0
		0000000000002188:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    218c: 2a1403e2     	mov	w2, w20
    2190: 94000000     	bl	0x2190 <gf_parse_dts+0x48>
		0000000000002190:  R_AARCH64_CALL26	_printk
    2194: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002194:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03d3
    2198: 91000000     	add	x0, x0, #0x0
		0000000000002198:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03d3
    219c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		000000000000219c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    21a0: 91000021     	add	x1, x1, #0x0
		00000000000021a0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    21a4: 2a1403e2     	mov	w2, w20
    21a8: 94000000     	bl	0x21a8 <gf_parse_dts+0x60>
		00000000000021a8:  R_AARCH64_CALL26	_printk
    21ac: 2a1403e0     	mov	w0, w20
    21b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    21b4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    21b8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    21bc: d50323bf     	autiasp
    21c0: d65f03c0     	ret
    21c4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000021c4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_01ee
    21c8: 91000000     	add	x0, x0, #0x0
		00000000000021c8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_01ee
    21cc: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000021cc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06c3
    21d0: 91000021     	add	x1, x1, #0x0
		00000000000021d0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06c3
    21d4: 2a1f03e2     	mov	w2, wzr
    21d8: 94000000     	bl	0x21d8 <gf_parse_dts+0x90>
		00000000000021d8:  R_AARCH64_CALL26	_printk
    21dc: f9404a61     	ldr	x1, [x19, #0x90]
    21e0: b40004c1     	cbz	x1, 0x2278 <gf_parse_dts+0x130>
    21e4: b13ffc3f     	cmn	x1, #0xfff
    21e8: 54000482     	b.hs	0x2278 <gf_parse_dts+0x130>
    21ec: f9404260     	ldr	x0, [x19, #0x80]
    21f0: 94000000     	bl	0x21f0 <gf_parse_dts+0xa8>
		00000000000021f0:  R_AARCH64_CALL26	pinctrl_select_state
    21f4: 34000140     	cbz	w0, 0x221c <gf_parse_dts+0xd4>
    21f8: f9400e68     	ldr	x8, [x19, #0x18]
    21fc: 2a0003f4     	mov	w20, w0
    2200: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002200:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a1e
    2204: 91000021     	add	x1, x1, #0x0
		0000000000002204:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a1e
    2208: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002208:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    220c: 91000042     	add	x2, x2, #0x0
		000000000000220c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    2210: 91004100     	add	x0, x8, #0x10
    2214: 94000000     	bl	0x2214 <gf_parse_dts+0xcc>
		0000000000002214:  R_AARCH64_CALL26	_dev_err
    2218: 37f80414     	tbnz	w20, #0x1f, 0x2298 <gf_parse_dts+0x150>
    221c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		000000000000221c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0205
    2220: 91000000     	add	x0, x0, #0x0
		0000000000002220:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0205
    2224: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002224:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2228: 91000021     	add	x1, x1, #0x0
		0000000000002228:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    222c: 94000000     	bl	0x222c <gf_parse_dts+0xe4>
		000000000000222c:  R_AARCH64_CALL26	_printk
    2230: 5284e200     	mov	w0, #0x2710             // =10000
    2234: 5284ee81     	mov	w1, #0x2774             // =10100
    2238: 52800042     	mov	w2, #0x2                // =2
    223c: 94000000     	bl	0x223c <gf_parse_dts+0xf4>
		000000000000223c:  R_AARCH64_CALL26	usleep_range_state
    2240: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002240:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09a7
    2244: 91000021     	add	x1, x1, #0x0
		0000000000002244:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09a7
    2248: 910042c0     	add	x0, x22, #0x10
    224c: 94000000     	bl	0x224c <gf_parse_dts+0x104>
		000000000000224c:  R_AARCH64_CALL26	devm_regulator_get
    2250: b13ffc1f     	cmn	x0, #0xfff
    2254: f9004e60     	str	x0, [x19, #0x98]
    2258: 540002c3     	b.lo	0x22b0 <gf_parse_dts+0x168>
    225c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		000000000000225c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02e4
    2260: 91000000     	add	x0, x0, #0x0
		0000000000002260:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02e4
    2264: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002264:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2268: 91000021     	add	x1, x1, #0x0
		0000000000002268:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    226c: 94000000     	bl	0x226c <gf_parse_dts+0x124>
		000000000000226c:  R_AARCH64_CALL26	_printk
    2270: b9409a74     	ldr	w20, [x19, #0x98]
    2274: 17ffffc8     	b	0x2194 <gf_parse_dts+0x4c>
    2278: f9400e68     	ldr	x8, [x19, #0x18]
    227c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		000000000000227c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f84
    2280: 91000021     	add	x1, x1, #0x0
		0000000000002280:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f84
    2284: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002284:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    2288: 91000042     	add	x2, x2, #0x0
		0000000000002288:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    228c: 91004100     	add	x0, x8, #0x10
    2290: 94000000     	bl	0x2290 <gf_parse_dts+0x148>
		0000000000002290:  R_AARCH64_CALL26	_dev_err
    2294: 128002b4     	mov	w20, #-0x16             // =-22
    2298: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002298:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02b6
    229c: 91000000     	add	x0, x0, #0x0
		000000000000229c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02b6
    22a0: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000022a0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    22a4: 91000021     	add	x1, x1, #0x0
		00000000000022a4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    22a8: 94000000     	bl	0x22a8 <gf_parse_dts+0x160>
		00000000000022a8:  R_AARCH64_CALL26	_printk
    22ac: 17ffffba     	b	0x2194 <gf_parse_dts+0x4c>
    22b0: 94000000     	bl	0x22b0 <gf_parse_dts+0x168>
		00000000000022b0:  R_AARCH64_CALL26	regulator_enable
    22b4: 350001e0     	cbnz	w0, 0x22f0 <gf_parse_dts+0x1a8>
    22b8: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000022b8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_109b
    22bc: 91000021     	add	x1, x1, #0x0
		00000000000022bc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_109b
    22c0: aa1503e0     	mov	x0, x21
    22c4: 2a1f03e2     	mov	w2, wzr
    22c8: 94000000     	bl	0x22c8 <gf_parse_dts+0x180>
		00000000000022c8:  R_AARCH64_CALL26	of_get_named_gpio
    22cc: b9004260     	str	w0, [x19, #0x40]
    22d0: 36f802e0     	tbz	w0, #0x1f, 0x232c <gf_parse_dts+0x1e4>
    22d4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000022d4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1131
    22d8: 91000000     	add	x0, x0, #0x0
		00000000000022d8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1131
    22dc: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000022dc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    22e0: 91000021     	add	x1, x1, #0x0
		00000000000022e0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    22e4: 94000000     	bl	0x22e4 <gf_parse_dts+0x19c>
		00000000000022e4:  R_AARCH64_CALL26	_printk
    22e8: 12800014     	mov	w20, #-0x1              // =-1
    22ec: 14000040     	b	0x23ec <gf_parse_dts+0x2a4>
    22f0: 2a0003f4     	mov	w20, w0
    22f4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000022f4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d91
    22f8: 91000000     	add	x0, x0, #0x0
		00000000000022f8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d91
    22fc: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000022fc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2300: 91000021     	add	x1, x1, #0x0
		0000000000002300:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2304: 94000000     	bl	0x2304 <gf_parse_dts+0x1bc>
		0000000000002304:  R_AARCH64_CALL26	_printk
    2308: f9403e60     	ldr	x0, [x19, #0x78]
    230c: b4fff440     	cbz	x0, 0x2194 <gf_parse_dts+0x4c>
    2310: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002310:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1263
    2314: 91000021     	add	x1, x1, #0x0
		0000000000002314:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1263
    2318: 94000000     	bl	0x2318 <gf_parse_dts+0x1d0>
		0000000000002318:  R_AARCH64_CALL26	zlog_client_record
    231c: f9403e60     	ldr	x0, [x19, #0x78]
    2320: 52802041     	mov	w1, #0x102              // =258
    2324: 94000000     	bl	0x2324 <gf_parse_dts+0x1dc>
		0000000000002324:  R_AARCH64_CALL26	zlog_client_notify
    2328: 17ffff9b     	b	0x2194 <gf_parse_dts+0x4c>
    232c: 2a0003e1     	mov	w1, w0
    2330: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002330:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    2334: 91000000     	add	x0, x0, #0x0
		0000000000002334:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    2338: 94000000     	bl	0x2338 <gf_parse_dts+0x1f0>
		0000000000002338:  R_AARCH64_CALL26	_printk
    233c: b9404261     	ldr	w1, [x19, #0x40]
    2340: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002340:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_045b
    2344: 91000042     	add	x2, x2, #0x0
		0000000000002344:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_045b
    2348: 910042c0     	add	x0, x22, #0x10
    234c: 94000000     	bl	0x234c <gf_parse_dts+0x204>
		000000000000234c:  R_AARCH64_CALL26	devm_gpio_request
    2350: 35000300     	cbnz	w0, 0x23b0 <gf_parse_dts+0x268>
    2354: b9404261     	ldr	w1, [x19, #0x40]
    2358: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002358:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    235c: 91000000     	add	x0, x0, #0x0
		000000000000235c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    2360: 94000000     	bl	0x2360 <gf_parse_dts+0x218>
		0000000000002360:  R_AARCH64_CALL26	_printk
    2364: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002364:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e6b
    2368: 91000021     	add	x1, x1, #0x0
		0000000000002368:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e6b
    236c: aa1503e0     	mov	x0, x21
    2370: 2a1f03e2     	mov	w2, wzr
    2374: 94000000     	bl	0x2374 <gf_parse_dts+0x22c>
		0000000000002374:  R_AARCH64_CALL26	of_get_named_gpio
    2378: b9003e60     	str	w0, [x19, #0x3c]
    237c: 36f803e0     	tbz	w0, #0x1f, 0x23f8 <gf_parse_dts+0x2b0>
    2380: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002380:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_077c
    2384: 91000000     	add	x0, x0, #0x0
		0000000000002384:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_077c
    2388: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002388:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    238c: 91000021     	add	x1, x1, #0x0
		000000000000238c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2390: 94000000     	bl	0x2390 <gf_parse_dts+0x248>
		0000000000002390:  R_AARCH64_CALL26	_printk
    2394: 12800014     	mov	w20, #-0x1              // =-1
    2398: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002398:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d0b
    239c: 91000000     	add	x0, x0, #0x0
		000000000000239c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d0b
    23a0: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000023a0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    23a4: 91000021     	add	x1, x1, #0x0
		00000000000023a4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    23a8: 94000000     	bl	0x23a8 <gf_parse_dts+0x260>
		00000000000023a8:  R_AARCH64_CALL26	_printk
    23ac: 14000010     	b	0x23ec <gf_parse_dts+0x2a4>
    23b0: 2a0003f4     	mov	w20, w0
    23b4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000023b4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_08b8
    23b8: 91000000     	add	x0, x0, #0x0
		00000000000023b8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_08b8
    23bc: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000023bc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    23c0: 91000021     	add	x1, x1, #0x0
		00000000000023c0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    23c4: 2a1403e2     	mov	w2, w20
    23c8: 94000000     	bl	0x23c8 <gf_parse_dts+0x280>
		00000000000023c8:  R_AARCH64_CALL26	_printk
    23cc: f9403e60     	ldr	x0, [x19, #0x78]
    23d0: b40000e0     	cbz	x0, 0x23ec <gf_parse_dts+0x2a4>
    23d4: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000023d4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0ac6
    23d8: 91000021     	add	x1, x1, #0x0
		00000000000023d8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0ac6
    23dc: 94000000     	bl	0x23dc <gf_parse_dts+0x294>
		00000000000023dc:  R_AARCH64_CALL26	zlog_client_record
    23e0: f9403e60     	ldr	x0, [x19, #0x78]
    23e4: 52802021     	mov	w1, #0x101              // =257
    23e8: 94000000     	bl	0x23e8 <gf_parse_dts+0x2a0>
		00000000000023e8:  R_AARCH64_CALL26	zlog_client_notify
    23ec: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000023ec:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f9f
    23f0: 91000000     	add	x0, x0, #0x0
		00000000000023f0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f9f
    23f4: 17ffffab     	b	0x22a0 <gf_parse_dts+0x158>
    23f8: 2a0003e1     	mov	w1, w0
    23fc: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		00000000000023fc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0b75
    2400: 91000000     	add	x0, x0, #0x0
		0000000000002400:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0b75
    2404: 94000000     	bl	0x2404 <gf_parse_dts+0x2bc>
		0000000000002404:  R_AARCH64_CALL26	_printk
    2408: b9403e61     	ldr	w1, [x19, #0x3c]
    240c: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		000000000000240c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03c8
    2410: 91000042     	add	x2, x2, #0x0
		0000000000002410:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03c8
    2414: 910042c0     	add	x0, x22, #0x10
    2418: 94000000     	bl	0x2418 <gf_parse_dts+0x2d0>
		0000000000002418:  R_AARCH64_CALL26	devm_gpio_request
    241c: 2a0003f4     	mov	w20, w0
    2420: 35000140     	cbnz	w0, 0x2448 <gf_parse_dts+0x300>
    2424: b9403e60     	ldr	w0, [x19, #0x3c]
    2428: 94000000     	bl	0x2428 <gf_parse_dts+0x2e0>
		0000000000002428:  R_AARCH64_CALL26	gpio_to_desc
    242c: 94000000     	bl	0x242c <gf_parse_dts+0x2e4>
		000000000000242c:  R_AARCH64_CALL26	gpiod_direction_input
    2430: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002430:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a54
    2434: 91000000     	add	x0, x0, #0x0
		0000000000002434:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a54
    2438: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002438:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    243c: 91000021     	add	x1, x1, #0x0
		000000000000243c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2440: 2a1f03e2     	mov	w2, wzr
    2444: 17ffff59     	b	0x21a8 <gf_parse_dts+0x60>
    2448: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002448:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1375
    244c: 91000000     	add	x0, x0, #0x0
		000000000000244c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1375
    2450: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002450:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2454: 91000021     	add	x1, x1, #0x0
		0000000000002454:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2458: 2a1403e2     	mov	w2, w20
    245c: 94000000     	bl	0x245c <gf_parse_dts+0x314>
		000000000000245c:  R_AARCH64_CALL26	_printk
    2460: f9403e60     	ldr	x0, [x19, #0x78]
    2464: b4fff9a0     	cbz	x0, 0x2398 <gf_parse_dts+0x250>
    2468: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x8c>
		0000000000002468:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1200
    246c: 91000021     	add	x1, x1, #0x0
		000000000000246c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1200
    2470: 94000000     	bl	0x2470 <gf_parse_dts+0x328>
		0000000000002470:  R_AARCH64_CALL26	zlog_client_record
    2474: f9403e60     	ldr	x0, [x19, #0x78]
    2478: 52802001     	mov	w1, #0x100              // =256
    247c: 94000000     	bl	0x247c <gf_parse_dts+0x334>
		000000000000247c:  R_AARCH64_CALL26	zlog_client_notify
    2480: 17ffffc6     	b	0x2398 <gf_parse_dts+0x250>
