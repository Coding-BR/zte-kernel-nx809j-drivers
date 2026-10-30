
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000020e4 <aw22xxx_parse_led_cdev>:
    20e4: d503233f     	paciasp
    20e8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    20ec: f9000bf9     	str	x25, [sp, #0x10]
    20f0: a9025ff8     	stp	x24, x23, [sp, #0x20]
    20f4: a90357f6     	stp	x22, x21, [sp, #0x30]
    20f8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    20fc: 910003fd     	mov	x29, sp
    2100: aa0103f4     	mov	x20, x1
    2104: aa0003f3     	mov	x19, x0
    2108: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002108:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    210c: 91000000     	add	x0, x0, #0x0
		000000000000210c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    2110: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002110:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x2c8
    2114: 91000021     	add	x1, x1, #0x0
		0000000000002114:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x2c8
    2118: 94000000     	bl	0x2118 <aw22xxx_parse_led_cdev+0x34>
		0000000000002118:  R_AARCH64_CALL26	_printk
    211c: aa1403e0     	mov	x0, x20
    2120: aa1f03e1     	mov	x1, xzr
    2124: 94000000     	bl	0x2124 <aw22xxx_parse_led_cdev+0x40>
		0000000000002124:  R_AARCH64_CALL26	of_get_next_child
    2128: b4000520     	cbz	x0, 0x21cc <aw22xxx_parse_led_cdev+0xe8>
    212c: aa0003f5     	mov	x21, x0
    2130: 90000016     	adrp	x22, 0x2000 <aw22xxx_irq+0x20>
		0000000000002130:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x9dd
    2134: 910002d6     	add	x22, x22, #0x0
		0000000000002134:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x9dd
    2138: 90000017     	adrp	x23, 0x2000 <aw22xxx_irq+0x20>
		0000000000002138:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf33
    213c: 910002f7     	add	x23, x23, #0x0
		000000000000213c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf33
    2140: 90000018     	adrp	x24, 0x2000 <aw22xxx_irq+0x20>
		0000000000002140:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x673
    2144: 91000318     	add	x24, x24, #0x0
		0000000000002144:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x673
    2148: 90000019     	adrp	x25, 0x2000 <aw22xxx_irq+0x20>
		0000000000002148:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x39d
    214c: 91000339     	add	x25, x25, #0x0
		000000000000214c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x39d
    2150: 91004262     	add	x2, x19, #0x10
    2154: aa1503e0     	mov	x0, x21
    2158: aa1603e1     	mov	x1, x22
    215c: 94000000     	bl	0x215c <aw22xxx_parse_led_cdev+0x78>
		000000000000215c:  R_AARCH64_CALL26	of_property_read_string
    2160: 37f80960     	tbnz	w0, #0x1f, 0x228c <aw22xxx_parse_led_cdev+0x1a8>
    2164: 910bc262     	add	x2, x19, #0x2f0
    2168: aa1503e0     	mov	x0, x21
    216c: aa1703e1     	mov	x1, x23
    2170: 52800023     	mov	w3, #0x1                // =1
    2174: aa1f03e4     	mov	x4, xzr
    2178: 94000000     	bl	0x2178 <aw22xxx_parse_led_cdev+0x94>
		0000000000002178:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    217c: 37f80940     	tbnz	w0, #0x1f, 0x22a4 <aw22xxx_parse_led_cdev+0x1c0>
    2180: 91006262     	add	x2, x19, #0x18
    2184: aa1503e0     	mov	x0, x21
    2188: aa1803e1     	mov	x1, x24
    218c: 52800023     	mov	w3, #0x1                // =1
    2190: aa1f03e4     	mov	x4, xzr
    2194: 94000000     	bl	0x2194 <aw22xxx_parse_led_cdev+0xb0>
		0000000000002194:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    2198: 37f80920     	tbnz	w0, #0x1f, 0x22bc <aw22xxx_parse_led_cdev+0x1d8>
    219c: 91007262     	add	x2, x19, #0x1c
    21a0: aa1503e0     	mov	x0, x21
    21a4: aa1903e1     	mov	x1, x25
    21a8: 52800023     	mov	w3, #0x1                // =1
    21ac: aa1f03e4     	mov	x4, xzr
    21b0: 94000000     	bl	0x21b0 <aw22xxx_parse_led_cdev+0xcc>
		00000000000021b0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    21b4: 37f80900     	tbnz	w0, #0x1f, 0x22d4 <aw22xxx_parse_led_cdev+0x1f0>
    21b8: aa1403e0     	mov	x0, x20
    21bc: aa1503e1     	mov	x1, x21
    21c0: 94000000     	bl	0x21c0 <aw22xxx_parse_led_cdev+0xdc>
		00000000000021c0:  R_AARCH64_CALL26	of_get_next_child
    21c4: aa0003f5     	mov	x21, x0
    21c8: b5fffc40     	cbnz	x0, 0x2150 <aw22xxx_parse_led_cdev+0x6c>
    21cc: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    21d0: 91076269     	add	x9, x19, #0x1d8
    21d4: 91004261     	add	x1, x19, #0x10
    21d8: f900ea68     	str	x8, [x19, #0x1d0]
    21dc: aa1f03e2     	mov	x2, xzr
    21e0: f900ee69     	str	x9, [x19, #0x1d8]
    21e4: f900f269     	str	x9, [x19, #0x1e0]
    21e8: 90000009     	adrp	x9, 0x2000 <aw22xxx_irq+0x20>
		00000000000021e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_brightness_work
    21ec: 91000129     	add	x9, x9, #0x0
		00000000000021ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_brightness_work
    21f0: a91ea269     	stp	x9, x8, [x19, #0x1e8]
    21f4: 9107e268     	add	x8, x19, #0x1f8
    21f8: f900fe68     	str	x8, [x19, #0x1f8]
    21fc: f9010268     	str	x8, [x19, #0x200]
    2200: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		0000000000002200:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_task_work
    2204: 91000108     	add	x8, x8, #0x0
		0000000000002204:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_task_work
    2208: f9400660     	ldr	x0, [x19, #0x8]
    220c: f9010668     	str	x8, [x19, #0x208]
    2210: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		0000000000002210:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_set_brightness
    2214: 91000108     	add	x8, x8, #0x0
		0000000000002214:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_set_brightness
    2218: f9001a68     	str	x8, [x19, #0x30]
    221c: 94000000     	bl	0x221c <aw22xxx_parse_led_cdev+0x138>
		000000000000221c:  R_AARCH64_CALL26	led_classdev_register_ext
    2220: 350001a0     	cbnz	w0, 0x2254 <aw22xxx_parse_led_cdev+0x170>
    2224: f9403260     	ldr	x0, [x19, #0x60]
    2228: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002228:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_attribute_group
    222c: 91000021     	add	x1, x1, #0x0
		000000000000222c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_attribute_group
    2230: 94000000     	bl	0x2230 <aw22xxx_parse_led_cdev+0x14c>
		0000000000002230:  R_AARCH64_CALL26	sysfs_create_group
    2234: 350001c0     	cbnz	w0, 0x226c <aw22xxx_parse_led_cdev+0x188>
    2238: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    223c: f9400bf9     	ldr	x25, [sp, #0x10]
    2240: a94357f6     	ldp	x22, x21, [sp, #0x30]
    2244: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    2248: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    224c: d50323bf     	autiasp
    2250: d65f03c0     	ret
    2254: 2a0003e2     	mov	w2, w0
    2258: f9400660     	ldr	x0, [x19, #0x8]
    225c: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		000000000000225c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xce3
    2260: 91000021     	add	x1, x1, #0x0
		0000000000002260:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xce3
    2264: 94000000     	bl	0x2264 <aw22xxx_parse_led_cdev+0x180>
		0000000000002264:  R_AARCH64_CALL26	_dev_err
    2268: 17fffff4     	b	0x2238 <aw22xxx_parse_led_cdev+0x154>
    226c: 2a0003e2     	mov	w2, w0
    2270: f9400660     	ldr	x0, [x19, #0x8]
    2274: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002274:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1887
    2278: 91000021     	add	x1, x1, #0x0
		0000000000002278:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1887
    227c: 94000000     	bl	0x227c <aw22xxx_parse_led_cdev+0x198>
		000000000000227c:  R_AARCH64_CALL26	_dev_err
    2280: 91004260     	add	x0, x19, #0x10
    2284: 94000000     	bl	0x2284 <aw22xxx_parse_led_cdev+0x1a0>
		0000000000002284:  R_AARCH64_CALL26	led_classdev_unregister
    2288: 17ffffec     	b	0x2238 <aw22xxx_parse_led_cdev+0x154>
    228c: 2a0003e2     	mov	w2, w0
    2290: f9400660     	ldr	x0, [x19, #0x8]
    2294: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002294:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x120f
    2298: 91000021     	add	x1, x1, #0x0
		0000000000002298:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x120f
    229c: 94000000     	bl	0x229c <aw22xxx_parse_led_cdev+0x1b8>
		000000000000229c:  R_AARCH64_CALL26	_dev_err
    22a0: 17ffffe6     	b	0x2238 <aw22xxx_parse_led_cdev+0x154>
    22a4: 2a0003e2     	mov	w2, w0
    22a8: f9400660     	ldr	x0, [x19, #0x8]
    22ac: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		00000000000022ac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1758
    22b0: 91000021     	add	x1, x1, #0x0
		00000000000022b0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1758
    22b4: 94000000     	bl	0x22b4 <aw22xxx_parse_led_cdev+0x1d0>
		00000000000022b4:  R_AARCH64_CALL26	_dev_err
    22b8: 17ffffe0     	b	0x2238 <aw22xxx_parse_led_cdev+0x154>
    22bc: 2a0003e2     	mov	w2, w0
    22c0: f9400660     	ldr	x0, [x19, #0x8]
    22c4: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		00000000000022c4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc00
    22c8: 91000021     	add	x1, x1, #0x0
		00000000000022c8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc00
    22cc: 94000000     	bl	0x22cc <aw22xxx_parse_led_cdev+0x1e8>
		00000000000022cc:  R_AARCH64_CALL26	_dev_err
    22d0: 17ffffda     	b	0x2238 <aw22xxx_parse_led_cdev+0x154>
    22d4: 2a0003e2     	mov	w2, w0
    22d8: f9400660     	ldr	x0, [x19, #0x8]
    22dc: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		00000000000022dc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x14d8
    22e0: 91000021     	add	x1, x1, #0x0
		00000000000022e0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x14d8
    22e4: 94000000     	bl	0x22e4 <aw22xxx_parse_led_cdev+0x200>
		00000000000022e4:  R_AARCH64_CALL26	_dev_err
    22e8: 17ffffd4     	b	0x2238 <aw22xxx_parse_led_cdev+0x154>
