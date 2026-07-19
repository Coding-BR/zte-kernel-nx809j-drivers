
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000207c <report_ufp_uevent>:
    207c: d503233f     	paciasp
    2080: d10143ff     	sub	sp, sp, #0x50
    2084: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2088: f9001bf5     	str	x21, [sp, #0x30]
    208c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    2090: 910083fd     	add	x29, sp, #0x20
    2094: d5384108     	mrs	x8, SP_EL0
    2098: f9438908     	ldr	x8, [x8, #0x710]
    209c: f81f83a8     	stur	x8, [x29, #-0x8]
    20a0: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xc8>
		00000000000020a0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1ee3
    20a4: 39400109     	ldrb	w9, [x8]
		00000000000020a4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x1ee3
    20a8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    20ac: f90003ff     	str	xzr, [sp]
    20b0: 340001c0     	cbz	w0, 0x20e8 <report_ufp_uevent+0x6c>
    20b4: 370001c9     	tbnz	w9, #0x0, 0x20ec <report_ufp_uevent+0x70>
    20b8: 90000013     	adrp	x19, 0x2000 <point_report_reset+0xc8>
		00000000000020b8:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    20bc: 90000015     	adrp	x21, 0x2000 <point_report_reset+0xc8>
		00000000000020bc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    20c0: 5280002b     	mov	w11, #0x1               // =1
    20c4: b940026a     	ldr	w10, [x19]
		00000000000020c4:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    20c8: f94002a9     	ldr	x9, [x21]
		00000000000020c8:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    20cc: 3900010b     	strb	w11, [x8]
		00000000000020cc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x1ee3
    20d0: 3500034a     	cbnz	w10, 0x2138 <report_ufp_uevent+0xbc>
    20d4: b5000989     	cbnz	x9, 0x2204 <report_ufp_uevent+0x188>
    20d8: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		00000000000020d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27fd
    20dc: 91000000     	add	x0, x0, #0x0
		00000000000020dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27fd
    20e0: 94000000     	bl	0x20e0 <report_ufp_uevent+0x64>
		00000000000020e0:  R_AARCH64_CALL26	_printk
    20e4: 14000057     	b	0x2240 <report_ufp_uevent+0x1c4>
    20e8: 35000189     	cbnz	w9, 0x2118 <report_ufp_uevent+0x9c>
    20ec: d5384108     	mrs	x8, SP_EL0
    20f0: f9438908     	ldr	x8, [x8, #0x710]
    20f4: f85f83a9     	ldur	x9, [x29, #-0x8]
    20f8: eb09011f     	cmp	x8, x9
    20fc: 54000ee1     	b.ne	0x22d8 <report_ufp_uevent+0x25c>
    2100: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    2104: f9401bf5     	ldr	x21, [sp, #0x30]
    2108: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    210c: 910143ff     	add	sp, sp, #0x50
    2110: d50323bf     	autiasp
    2114: d65f03c0     	ret
    2118: 90000009     	adrp	x9, 0x2000 <point_report_reset+0xc8>
		0000000000002118:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    211c: 3900011f     	strb	wzr, [x8]
		000000000000211c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x1ee3
    2120: f9400129     	ldr	x9, [x9]
		0000000000002120:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    2124: b5000149     	cbnz	x9, 0x214c <report_ufp_uevent+0xd0>
    2128: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		0000000000002128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27fd
    212c: 91000000     	add	x0, x0, #0x0
		000000000000212c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27fd
    2130: 94000000     	bl	0x2130 <report_ufp_uevent+0xb4>
		0000000000002130:  R_AARCH64_CALL26	_printk
    2134: 1400001a     	b	0x219c <report_ufp_uevent+0x120>
    2138: b50008c9     	cbnz	x9, 0x2250 <report_ufp_uevent+0x1d4>
    213c: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		000000000000213c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27fd
    2140: 91000000     	add	x0, x0, #0x0
		0000000000002140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27fd
    2144: 94000000     	bl	0x2144 <report_ufp_uevent+0xc8>
		0000000000002144:  R_AARCH64_CALL26	_printk
    2148: 14000059     	b	0x22ac <report_ufp_uevent+0x230>
    214c: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xc8>
		000000000000214c:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    2150: b9400108     	ldr	w8, [x8]
		0000000000002150:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    2154: 7100091f     	cmp	w8, #0x2
    2158: 54000c28     	b.hi	0x22dc <report_ufp_uevent+0x260>
    215c: 9000000a     	adrp	x10, 0x2000 <point_report_reset+0xc8>
		000000000000215c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x12a8
    2160: 9100014a     	add	x10, x10, #0x0
		0000000000002160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x12a8
    2164: 90000014     	adrp	x20, 0x2000 <point_report_reset+0xc8>
		0000000000002164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f61
    2168: 91000294     	add	x20, x20, #0x0
		0000000000002168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f61
    216c: f8687953     	ldr	x19, [x10, x8, lsl #3]
    2170: 91004120     	add	x0, x9, #0x10
    2174: 910003e2     	mov	x2, sp
    2178: 52800041     	mov	w1, #0x2                // =2
    217c: f9000bff     	str	xzr, [sp, #0x10]
    2180: a9004ff4     	stp	x20, x19, [sp]
    2184: 94000000     	bl	0x2184 <report_ufp_uevent+0x108>
		0000000000002184:  R_AARCH64_CALL26	kobject_uevent_env
    2188: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		0000000000002188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2823
    218c: 91000000     	add	x0, x0, #0x0
		000000000000218c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2823
    2190: aa1403e1     	mov	x1, x20
    2194: aa1303e2     	mov	x2, x19
    2198: 94000000     	bl	0x2198 <report_ufp_uevent+0x11c>
		0000000000002198:  R_AARCH64_CALL26	_printk
    219c: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xc8>
		000000000000219c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    21a0: f9400108     	ldr	x8, [x8]
		00000000000021a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    21a4: b9445909     	ldr	w9, [x8, #0x458]
    21a8: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xc8>
		00000000000021a8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    21ac: 39400108     	ldrb	w8, [x8]
		00000000000021ac:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    21b0: 34000869     	cbz	w9, 0x22bc <report_ufp_uevent+0x240>
    21b4: 90000014     	adrp	x20, 0x2000 <point_report_reset+0xc8>
		00000000000021b4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa2
    21b8: 34000108     	cbz	w8, 0x21d8 <report_ufp_uevent+0x15c>
    21bc: 39400288     	ldrb	w8, [x20]
		00000000000021bc:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    21c0: 370000c8     	tbnz	w8, #0x0, 0x21d8 <report_ufp_uevent+0x15c>
    21c4: 90000013     	adrp	x19, 0x2000 <point_report_reset+0xc8>
		00000000000021c4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    21c8: 91000273     	add	x19, x19, #0x0
		00000000000021c8:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    21cc: aa1303e0     	mov	x0, x19
    21d0: 94000000     	bl	0x21d0 <report_ufp_uevent+0x154>
		00000000000021d0:  R_AARCH64_CALL26	complete
    21d4: 3900827f     	strb	wzr, [x19, #0x20]
    21d8: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xc8>
		00000000000021d8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
    21dc: 39400109     	ldrb	w9, [x8]
		00000000000021dc:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    21e0: 7100053f     	cmp	w9, #0x1
    21e4: 54fff841     	b.ne	0x20ec <report_ufp_uevent+0x70>
    21e8: 39400289     	ldrb	w9, [x20]
		00000000000021e8:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    21ec: 3707f809     	tbnz	w9, #0x0, 0x20ec <report_ufp_uevent+0x70>
    21f0: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		00000000000021f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2578
    21f4: 91000000     	add	x0, x0, #0x0
		00000000000021f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2578
    21f8: 3900011f     	strb	wzr, [x8]
		00000000000021f8:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    21fc: 94000000     	bl	0x21fc <report_ufp_uevent+0x180>
		00000000000021fc:  R_AARCH64_CALL26	_printk
    2200: 17ffffbb     	b	0x20ec <report_ufp_uevent+0x70>
    2204: 90000013     	adrp	x19, 0x2000 <point_report_reset+0xc8>
		0000000000002204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4622
    2208: 91000273     	add	x19, x19, #0x0
		0000000000002208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4622
    220c: 90000014     	adrp	x20, 0x2000 <point_report_reset+0xc8>
		000000000000220c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x580
    2210: 91000294     	add	x20, x20, #0x0
		0000000000002210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x580
    2214: 91004120     	add	x0, x9, #0x10
    2218: 910003e2     	mov	x2, sp
    221c: 52800041     	mov	w1, #0x2                // =2
    2220: a90053f3     	stp	x19, x20, [sp]
    2224: f9000bff     	str	xzr, [sp, #0x10]
    2228: 94000000     	bl	0x2228 <report_ufp_uevent+0x1ac>
		0000000000002228:  R_AARCH64_CALL26	kobject_uevent_env
    222c: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		000000000000222c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2823
    2230: 91000000     	add	x0, x0, #0x0
		0000000000002230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2823
    2234: aa1303e1     	mov	x1, x19
    2238: aa1403e2     	mov	x2, x20
    223c: 94000000     	bl	0x223c <report_ufp_uevent+0x1c0>
		000000000000223c:  R_AARCH64_CALL26	_printk
    2240: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xc8>
		0000000000002240:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
    2244: 52800029     	mov	w9, #0x1                // =1
    2248: 39000109     	strb	w9, [x8]
		0000000000002248:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    224c: 17ffffa8     	b	0x20ec <report_ufp_uevent+0x70>
    2250: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		0000000000002250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a83
    2254: 91000000     	add	x0, x0, #0x0
		0000000000002254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a83
    2258: 94000000     	bl	0x2258 <report_ufp_uevent+0x1dc>
		0000000000002258:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    225c: b9400268     	ldr	w8, [x19]
		000000000000225c:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    2260: 7100091f     	cmp	w8, #0x2
    2264: 540003c8     	b.hi	0x22dc <report_ufp_uevent+0x260>
    2268: 90000009     	adrp	x9, 0x2000 <point_report_reset+0xc8>
		0000000000002268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x12a8
    226c: 91000129     	add	x9, x9, #0x0
		000000000000226c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x12a8
    2270: 90000014     	adrp	x20, 0x2000 <point_report_reset+0xc8>
		0000000000002270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a93
    2274: 91000294     	add	x20, x20, #0x0
		0000000000002274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a93
    2278: f8687933     	ldr	x19, [x9, x8, lsl #3]
    227c: f94002a8     	ldr	x8, [x21]
		000000000000227c:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    2280: 910003e2     	mov	x2, sp
    2284: 52800041     	mov	w1, #0x2                // =2
    2288: f9000bff     	str	xzr, [sp, #0x10]
    228c: 91004100     	add	x0, x8, #0x10
    2290: a9004ff4     	stp	x20, x19, [sp]
    2294: 94000000     	bl	0x2294 <report_ufp_uevent+0x218>
		0000000000002294:  R_AARCH64_CALL26	kobject_uevent_env
    2298: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		0000000000002298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2823
    229c: 91000000     	add	x0, x0, #0x0
		000000000000229c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2823
    22a0: aa1403e1     	mov	x1, x20
    22a4: aa1303e2     	mov	x2, x19
    22a8: 94000000     	bl	0x22a8 <report_ufp_uevent+0x22c>
		00000000000022a8:  R_AARCH64_CALL26	_printk
    22ac: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xc8>
		00000000000022ac:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    22b0: 52800029     	mov	w9, #0x1                // =1
    22b4: 39000109     	strb	w9, [x8]
		00000000000022b4:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    22b8: 17ffff8d     	b	0x20ec <report_ufp_uevent+0x70>
    22bc: 34fff188     	cbz	w8, 0x20ec <report_ufp_uevent+0x70>
    22c0: 90000013     	adrp	x19, 0x2000 <point_report_reset+0xc8>
		00000000000022c0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    22c4: 91000273     	add	x19, x19, #0x0
		00000000000022c4:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    22c8: aa1303e0     	mov	x0, x19
    22cc: 94000000     	bl	0x22cc <report_ufp_uevent+0x250>
		00000000000022cc:  R_AARCH64_CALL26	complete
    22d0: 3900827f     	strb	wzr, [x19, #0x20]
    22d4: 17ffff86     	b	0x20ec <report_ufp_uevent+0x70>
    22d8: 94000000     	bl	0x22d8 <report_ufp_uevent+0x25c>
		00000000000022d8:  R_AARCH64_CALL26	__stack_chk_fail
    22dc: d42aa240     	brk	#0x5512
