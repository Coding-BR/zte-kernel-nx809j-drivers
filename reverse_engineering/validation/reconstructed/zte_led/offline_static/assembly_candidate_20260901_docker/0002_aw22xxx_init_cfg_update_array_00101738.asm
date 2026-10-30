
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000216c <aw22xxx_init_cfg_update_array>:
    216c: d503233f     	paciasp
    2170: d100c3ff     	sub	sp, sp, #0x30
    2174: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2178: a9024ff4     	stp	x20, x19, [sp, #0x20]
    217c: 910043fd     	add	x29, sp, #0x10
    2180: d5384108     	mrs	x8, SP_EL0
    2184: 90000014     	adrp	x20, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15fd
    2188: 91000294     	add	x20, x20, #0x0
		0000000000002188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15fd
    218c: f9438908     	ldr	x8, [x8, #0x710]
    2190: aa0003f3     	mov	x19, x0
    2194: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    2198: 91000000     	add	x0, x0, #0x0
		0000000000002198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    219c: aa1403e1     	mov	x1, x20
    21a0: f90007e8     	str	x8, [sp, #0x8]
    21a4: 390013ff     	strb	wzr, [sp, #0x4]
    21a8: 94000000     	bl	0x21a8 <aw22xxx_init_cfg_update_array+0x3c>
		00000000000021a8:  R_AARCH64_CALL26	_printk
    21ac: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000021ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x720
    21b0: 91000000     	add	x0, x0, #0x0
		00000000000021b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x720
    21b4: aa1403e1     	mov	x1, x20
    21b8: 94000000     	bl	0x21b8 <aw22xxx_init_cfg_update_array+0x4c>
		00000000000021b8:  R_AARCH64_CALL26	_printk
    21bc: 910013e2     	add	x2, sp, #0x4
    21c0: aa1303e0     	mov	x0, x19
    21c4: 52800041     	mov	w1, #0x2                // =2
    21c8: 97fffc96     	bl	0x1420 <aw22xxx_i2c_read>
    21cc: 394013e8     	ldrb	w8, [sp, #0x4]
    21d0: aa1303e0     	mov	x0, x19
    21d4: 52800041     	mov	w1, #0x2                // =2
    21d8: 32000102     	orr	w2, w8, #0x1
    21dc: 390013e2     	strb	w2, [sp, #0x4]
    21e0: 97fff7a0     	bl	0x60 <aw22xxx_i2c_write>
    21e4: 5280fa00     	mov	w0, #0x7d0              // =2000
    21e8: 52817701     	mov	w1, #0xbb8              // =3000
    21ec: 52800042     	mov	w2, #0x2                // =2
    21f0: 94000000     	bl	0x21f0 <aw22xxx_init_cfg_update_array+0x84>
		00000000000021f0:  R_AARCH64_CALL26	usleep_range_state
    21f4: aa1303e0     	mov	x0, x19
    21f8: 52801fe1     	mov	w1, #0xff               // =255
    21fc: 2a1f03e2     	mov	w2, wzr
    2200: 97fff798     	bl	0x60 <aw22xxx_i2c_write>
    2204: aa1303e0     	mov	x0, x19
    2208: 52800041     	mov	w1, #0x2                // =2
    220c: 52800022     	mov	w2, #0x1                // =1
    2210: 97fff794     	bl	0x60 <aw22xxx_i2c_write>
    2214: aa1303e0     	mov	x0, x19
    2218: 52800181     	mov	w1, #0xc                // =12
    221c: 2a1f03e2     	mov	w2, wzr
    2220: 97fff790     	bl	0x60 <aw22xxx_i2c_write>
    2224: aa1303e0     	mov	x0, x19
    2228: 52800161     	mov	w1, #0xb                // =11
    222c: 528000a2     	mov	w2, #0x5                // =5
    2230: 97fff78c     	bl	0x60 <aw22xxx_i2c_write>
    2234: aa1303e0     	mov	x0, x19
    2238: 528000a1     	mov	w1, #0x5                // =5
    223c: 52800022     	mov	w2, #0x1                // =1
    2240: 97fff788     	bl	0x60 <aw22xxx_i2c_write>
    2244: aa1303e0     	mov	x0, x19
    2248: 52800081     	mov	w1, #0x4                // =4
    224c: 52800022     	mov	w2, #0x1                // =1
    2250: 97fff784     	bl	0x60 <aw22xxx_i2c_write>
    2254: aa1303e0     	mov	x0, x19
    2258: 52800121     	mov	w1, #0x9                // =9
    225c: 52800022     	mov	w2, #0x1                // =1
    2260: 97fff780     	bl	0x60 <aw22xxx_i2c_write>
    2264: aa1303e0     	mov	x0, x19
    2268: 52800081     	mov	w1, #0x4                // =4
    226c: 52800062     	mov	w2, #0x3                // =3
    2270: 97fff77c     	bl	0x60 <aw22xxx_i2c_write>
    2274: aa1303e0     	mov	x0, x19
    2278: 528000a1     	mov	w1, #0x5                // =5
    227c: 52800822     	mov	w2, #0x41               // =65
    2280: 97fff778     	bl	0x60 <aw22xxx_i2c_write>
    2284: d5384108     	mrs	x8, SP_EL0
    2288: f9438908     	ldr	x8, [x8, #0x710]
    228c: f94007e9     	ldr	x9, [sp, #0x8]
    2290: eb09011f     	cmp	x8, x9
    2294: 540000c1     	b.ne	0x22ac <aw22xxx_init_cfg_update_array+0x140>
    2298: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    229c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    22a0: 9100c3ff     	add	sp, sp, #0x30
    22a4: d50323bf     	autiasp
    22a8: d65f03c0     	ret
    22ac: 94000000     	bl	0x22ac <aw22xxx_init_cfg_update_array+0x140>
		00000000000022ac:  R_AARCH64_CALL26	__stack_chk_fail
