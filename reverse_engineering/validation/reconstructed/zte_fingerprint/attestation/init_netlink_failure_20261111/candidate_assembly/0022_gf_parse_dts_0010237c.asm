
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000215c <gf_parse_dts>:
    215c: d503233f     	paciasp
    2160: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2164: a90157f6     	stp	x22, x21, [sp, #0x10]
    2168: a9024ff4     	stp	x20, x19, [sp, #0x20]
    216c: 910003fd     	mov	x29, sp
    2170: f9400c16     	ldr	x22, [x0, #0x18]
    2174: aa0003f3     	mov	x19, x0
    2178: f9417ed5     	ldr	x21, [x22, #0x2f8]
    217c: 94000000     	bl	0x217c <gf_parse_dts+0x20>
		000000000000217c:  R_AARCH64_CALL26	zte_goodix_pinctrl_init
    2180: 2a0003f4     	mov	w20, w0
    2184: 35000060     	cbnz	w0, 0x2190 <gf_parse_dts+0x34>
    2188: f9404268     	ldr	x8, [x19, #0x80]
    218c: b5000268     	cbnz	x8, 0x21d8 <gf_parse_dts+0x7c>
    2190: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002190:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0982
    2194: 91000000     	add	x0, x0, #0x0
		0000000000002194:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0982
    2198: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002198:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    219c: 91000021     	add	x1, x1, #0x0
		000000000000219c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    21a0: 2a1403e2     	mov	w2, w20
    21a4: 94000000     	bl	0x21a4 <gf_parse_dts+0x48>
		00000000000021a4:  R_AARCH64_CALL26	_printk
    21a8: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000021a8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03d3
    21ac: 91000000     	add	x0, x0, #0x0
		00000000000021ac:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03d3
    21b0: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000021b0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    21b4: 91000021     	add	x1, x1, #0x0
		00000000000021b4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    21b8: 2a1403e2     	mov	w2, w20
    21bc: 94000000     	bl	0x21bc <gf_parse_dts+0x60>
		00000000000021bc:  R_AARCH64_CALL26	_printk
    21c0: 2a1403e0     	mov	w0, w20
    21c4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    21c8: a94157f6     	ldp	x22, x21, [sp, #0x10]
    21cc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    21d0: d50323bf     	autiasp
    21d4: d65f03c0     	ret
    21d8: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000021d8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_01ee
    21dc: 91000000     	add	x0, x0, #0x0
		00000000000021dc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_01ee
    21e0: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000021e0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06c3
    21e4: 91000021     	add	x1, x1, #0x0
		00000000000021e4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06c3
    21e8: 2a1f03e2     	mov	w2, wzr
    21ec: 94000000     	bl	0x21ec <gf_parse_dts+0x90>
		00000000000021ec:  R_AARCH64_CALL26	_printk
    21f0: f9404a61     	ldr	x1, [x19, #0x90]
    21f4: b40004c1     	cbz	x1, 0x228c <gf_parse_dts+0x130>
    21f8: b13ffc3f     	cmn	x1, #0xfff
    21fc: 54000482     	b.hs	0x228c <gf_parse_dts+0x130>
    2200: f9404260     	ldr	x0, [x19, #0x80]
    2204: 94000000     	bl	0x2204 <gf_parse_dts+0xa8>
		0000000000002204:  R_AARCH64_CALL26	pinctrl_select_state
    2208: 34000140     	cbz	w0, 0x2230 <gf_parse_dts+0xd4>
    220c: f9400e68     	ldr	x8, [x19, #0x18]
    2210: 2a0003f4     	mov	w20, w0
    2214: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002214:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a1e
    2218: 91000021     	add	x1, x1, #0x0
		0000000000002218:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a1e
    221c: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0x78>
		000000000000221c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    2220: 91000042     	add	x2, x2, #0x0
		0000000000002220:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    2224: 91004100     	add	x0, x8, #0x10
    2228: 94000000     	bl	0x2228 <gf_parse_dts+0xcc>
		0000000000002228:  R_AARCH64_CALL26	_dev_err
    222c: 37f80414     	tbnz	w20, #0x1f, 0x22ac <gf_parse_dts+0x150>
    2230: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002230:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0205
    2234: 91000000     	add	x0, x0, #0x0
		0000000000002234:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0205
    2238: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002238:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    223c: 91000021     	add	x1, x1, #0x0
		000000000000223c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2240: 94000000     	bl	0x2240 <gf_parse_dts+0xe4>
		0000000000002240:  R_AARCH64_CALL26	_printk
    2244: 5284e200     	mov	w0, #0x2710             // =10000
    2248: 5284ee81     	mov	w1, #0x2774             // =10100
    224c: 52800042     	mov	w2, #0x2                // =2
    2250: 94000000     	bl	0x2250 <gf_parse_dts+0xf4>
		0000000000002250:  R_AARCH64_CALL26	usleep_range_state
    2254: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002254:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09a7
    2258: 91000021     	add	x1, x1, #0x0
		0000000000002258:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09a7
    225c: 910042c0     	add	x0, x22, #0x10
    2260: 94000000     	bl	0x2260 <gf_parse_dts+0x104>
		0000000000002260:  R_AARCH64_CALL26	devm_regulator_get
    2264: b13ffc1f     	cmn	x0, #0xfff
    2268: f9004e60     	str	x0, [x19, #0x98]
    226c: 540002c3     	b.lo	0x22c4 <gf_parse_dts+0x168>
    2270: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002270:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02e4
    2274: 91000000     	add	x0, x0, #0x0
		0000000000002274:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02e4
    2278: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002278:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    227c: 91000021     	add	x1, x1, #0x0
		000000000000227c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2280: 94000000     	bl	0x2280 <gf_parse_dts+0x124>
		0000000000002280:  R_AARCH64_CALL26	_printk
    2284: b9409a74     	ldr	w20, [x19, #0x98]
    2288: 17ffffc8     	b	0x21a8 <gf_parse_dts+0x4c>
    228c: f9400e68     	ldr	x8, [x19, #0x18]
    2290: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002290:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f84
    2294: 91000021     	add	x1, x1, #0x0
		0000000000002294:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f84
    2298: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002298:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1366
    229c: 91000042     	add	x2, x2, #0x0
		000000000000229c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1366
    22a0: 91004100     	add	x0, x8, #0x10
    22a4: 94000000     	bl	0x22a4 <gf_parse_dts+0x148>
		00000000000022a4:  R_AARCH64_CALL26	_dev_err
    22a8: 128002b4     	mov	w20, #-0x16             // =-22
    22ac: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000022ac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_02b6
    22b0: 91000000     	add	x0, x0, #0x0
		00000000000022b0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_02b6
    22b4: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000022b4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    22b8: 91000021     	add	x1, x1, #0x0
		00000000000022b8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    22bc: 94000000     	bl	0x22bc <gf_parse_dts+0x160>
		00000000000022bc:  R_AARCH64_CALL26	_printk
    22c0: 17ffffba     	b	0x21a8 <gf_parse_dts+0x4c>
    22c4: 94000000     	bl	0x22c4 <gf_parse_dts+0x168>
		00000000000022c4:  R_AARCH64_CALL26	regulator_enable
    22c8: 350001e0     	cbnz	w0, 0x2304 <gf_parse_dts+0x1a8>
    22cc: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000022cc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_109b
    22d0: 91000021     	add	x1, x1, #0x0
		00000000000022d0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_109b
    22d4: aa1503e0     	mov	x0, x21
    22d8: 2a1f03e2     	mov	w2, wzr
    22dc: 94000000     	bl	0x22dc <gf_parse_dts+0x180>
		00000000000022dc:  R_AARCH64_CALL26	of_get_named_gpio
    22e0: b9004260     	str	w0, [x19, #0x40]
    22e4: 36f802e0     	tbz	w0, #0x1f, 0x2340 <gf_parse_dts+0x1e4>
    22e8: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000022e8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1131
    22ec: 91000000     	add	x0, x0, #0x0
		00000000000022ec:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1131
    22f0: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000022f0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    22f4: 91000021     	add	x1, x1, #0x0
		00000000000022f4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    22f8: 94000000     	bl	0x22f8 <gf_parse_dts+0x19c>
		00000000000022f8:  R_AARCH64_CALL26	_printk
    22fc: 12800014     	mov	w20, #-0x1              // =-1
    2300: 14000040     	b	0x2400 <gf_parse_dts+0x2a4>
    2304: 2a0003f4     	mov	w20, w0
    2308: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002308:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d91
    230c: 91000000     	add	x0, x0, #0x0
		000000000000230c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d91
    2310: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002310:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2314: 91000021     	add	x1, x1, #0x0
		0000000000002314:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2318: 94000000     	bl	0x2318 <gf_parse_dts+0x1bc>
		0000000000002318:  R_AARCH64_CALL26	_printk
    231c: f9403e60     	ldr	x0, [x19, #0x78]
    2320: b4fff440     	cbz	x0, 0x21a8 <gf_parse_dts+0x4c>
    2324: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002324:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1263
    2328: 91000021     	add	x1, x1, #0x0
		0000000000002328:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1263
    232c: 94000000     	bl	0x232c <gf_parse_dts+0x1d0>
		000000000000232c:  R_AARCH64_CALL26	zlog_client_record
    2330: f9403e60     	ldr	x0, [x19, #0x78]
    2334: 52802041     	mov	w1, #0x102              // =258
    2338: 94000000     	bl	0x2338 <gf_parse_dts+0x1dc>
		0000000000002338:  R_AARCH64_CALL26	zlog_client_notify
    233c: 17ffff9b     	b	0x21a8 <gf_parse_dts+0x4c>
    2340: 2a0003e1     	mov	w1, w0
    2344: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002344:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    2348: 91000000     	add	x0, x0, #0x0
		0000000000002348:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    234c: 94000000     	bl	0x234c <gf_parse_dts+0x1f0>
		000000000000234c:  R_AARCH64_CALL26	_printk
    2350: b9404261     	ldr	w1, [x19, #0x40]
    2354: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002354:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_045b
    2358: 91000042     	add	x2, x2, #0x0
		0000000000002358:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_045b
    235c: 910042c0     	add	x0, x22, #0x10
    2360: 94000000     	bl	0x2360 <gf_parse_dts+0x204>
		0000000000002360:  R_AARCH64_CALL26	devm_gpio_request
    2364: 35000300     	cbnz	w0, 0x23c4 <gf_parse_dts+0x268>
    2368: b9404261     	ldr	w1, [x19, #0x40]
    236c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		000000000000236c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a33
    2370: 91000000     	add	x0, x0, #0x0
		0000000000002370:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a33
    2374: 94000000     	bl	0x2374 <gf_parse_dts+0x218>
		0000000000002374:  R_AARCH64_CALL26	_printk
    2378: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002378:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e6b
    237c: 91000021     	add	x1, x1, #0x0
		000000000000237c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e6b
    2380: aa1503e0     	mov	x0, x21
    2384: 2a1f03e2     	mov	w2, wzr
    2388: 94000000     	bl	0x2388 <gf_parse_dts+0x22c>
		0000000000002388:  R_AARCH64_CALL26	of_get_named_gpio
    238c: b9003e60     	str	w0, [x19, #0x3c]
    2390: 36f803e0     	tbz	w0, #0x1f, 0x240c <gf_parse_dts+0x2b0>
    2394: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002394:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_077c
    2398: 91000000     	add	x0, x0, #0x0
		0000000000002398:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_077c
    239c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		000000000000239c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    23a0: 91000021     	add	x1, x1, #0x0
		00000000000023a0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    23a4: 94000000     	bl	0x23a4 <gf_parse_dts+0x248>
		00000000000023a4:  R_AARCH64_CALL26	_printk
    23a8: 12800014     	mov	w20, #-0x1              // =-1
    23ac: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000023ac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0d0b
    23b0: 91000000     	add	x0, x0, #0x0
		00000000000023b0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0d0b
    23b4: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000023b4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    23b8: 91000021     	add	x1, x1, #0x0
		00000000000023b8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    23bc: 94000000     	bl	0x23bc <gf_parse_dts+0x260>
		00000000000023bc:  R_AARCH64_CALL26	_printk
    23c0: 14000010     	b	0x2400 <gf_parse_dts+0x2a4>
    23c4: 2a0003f4     	mov	w20, w0
    23c8: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000023c8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_08b8
    23cc: 91000000     	add	x0, x0, #0x0
		00000000000023cc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_08b8
    23d0: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000023d0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    23d4: 91000021     	add	x1, x1, #0x0
		00000000000023d4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    23d8: 2a1403e2     	mov	w2, w20
    23dc: 94000000     	bl	0x23dc <gf_parse_dts+0x280>
		00000000000023dc:  R_AARCH64_CALL26	_printk
    23e0: f9403e60     	ldr	x0, [x19, #0x78]
    23e4: b40000e0     	cbz	x0, 0x2400 <gf_parse_dts+0x2a4>
    23e8: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000023e8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0ac6
    23ec: 91000021     	add	x1, x1, #0x0
		00000000000023ec:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0ac6
    23f0: 94000000     	bl	0x23f0 <gf_parse_dts+0x294>
		00000000000023f0:  R_AARCH64_CALL26	zlog_client_record
    23f4: f9403e60     	ldr	x0, [x19, #0x78]
    23f8: 52802021     	mov	w1, #0x101              // =257
    23fc: 94000000     	bl	0x23fc <gf_parse_dts+0x2a0>
		00000000000023fc:  R_AARCH64_CALL26	zlog_client_notify
    2400: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002400:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0f9f
    2404: 91000000     	add	x0, x0, #0x0
		0000000000002404:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0f9f
    2408: 17ffffab     	b	0x22b4 <gf_parse_dts+0x158>
    240c: 2a0003e1     	mov	w1, w0
    2410: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002410:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0b75
    2414: 91000000     	add	x0, x0, #0x0
		0000000000002414:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0b75
    2418: 94000000     	bl	0x2418 <gf_parse_dts+0x2bc>
		0000000000002418:  R_AARCH64_CALL26	_printk
    241c: b9403e61     	ldr	w1, [x19, #0x3c]
    2420: 90000002     	adrp	x2, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002420:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03c8
    2424: 91000042     	add	x2, x2, #0x0
		0000000000002424:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03c8
    2428: 910042c0     	add	x0, x22, #0x10
    242c: 94000000     	bl	0x242c <gf_parse_dts+0x2d0>
		000000000000242c:  R_AARCH64_CALL26	devm_gpio_request
    2430: 2a0003f4     	mov	w20, w0
    2434: 35000140     	cbnz	w0, 0x245c <gf_parse_dts+0x300>
    2438: b9403e60     	ldr	w0, [x19, #0x3c]
    243c: 94000000     	bl	0x243c <gf_parse_dts+0x2e0>
		000000000000243c:  R_AARCH64_CALL26	gpio_to_desc
    2440: 94000000     	bl	0x2440 <gf_parse_dts+0x2e4>
		0000000000002440:  R_AARCH64_CALL26	gpiod_direction_input
    2444: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002444:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0a54
    2448: 91000000     	add	x0, x0, #0x0
		0000000000002448:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0a54
    244c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		000000000000244c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2450: 91000021     	add	x1, x1, #0x0
		0000000000002450:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    2454: 2a1f03e2     	mov	w2, wzr
    2458: 17ffff59     	b	0x21bc <gf_parse_dts+0x60>
    245c: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		000000000000245c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1375
    2460: 91000000     	add	x0, x0, #0x0
		0000000000002460:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1375
    2464: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002464:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_03bb
    2468: 91000021     	add	x1, x1, #0x0
		0000000000002468:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_03bb
    246c: 2a1403e2     	mov	w2, w20
    2470: 94000000     	bl	0x2470 <gf_parse_dts+0x314>
		0000000000002470:  R_AARCH64_CALL26	_printk
    2474: f9403e60     	ldr	x0, [x19, #0x78]
    2478: b4fff9a0     	cbz	x0, 0x23ac <gf_parse_dts+0x250>
    247c: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0x78>
		000000000000247c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_1200
    2480: 91000021     	add	x1, x1, #0x0
		0000000000002480:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_1200
    2484: 94000000     	bl	0x2484 <gf_parse_dts+0x328>
		0000000000002484:  R_AARCH64_CALL26	zlog_client_record
    2488: f9403e60     	ldr	x0, [x19, #0x78]
    248c: 52802001     	mov	w1, #0x100              // =256
    2490: 94000000     	bl	0x2490 <gf_parse_dts+0x334>
		0000000000002490:  R_AARCH64_CALL26	zlog_client_notify
    2494: 17ffffc6     	b	0x23ac <gf_parse_dts+0x250>
