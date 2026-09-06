
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000050bc <aw22xxx_recover_work_routine>:
    50bc: d503233f     	paciasp
    50c0: d10143ff     	sub	sp, sp, #0x50
    50c4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    50c8: f9001bf5     	str	x21, [sp, #0x30]
    50cc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    50d0: 910083fd     	add	x29, sp, #0x20
    50d4: d5384108     	mrs	x8, SP_EL0
    50d8: 90000015     	adrp	x21, 0x5000 <aw22xxx_cfg_work_routine+0x2c>
		00000000000050d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc4d
    50dc: 910002b5     	add	x21, x21, #0x0
		00000000000050dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc4d
    50e0: f9438908     	ldr	x8, [x8, #0x710]
    50e4: aa0003f3     	mov	x19, x0
    50e8: d1094014     	sub	x20, x0, #0x250
    50ec: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_work_routine+0x2c>
		00000000000050ec:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb64
    50f0: 91000000     	add	x0, x0, #0x0
		00000000000050f0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb64
    50f4: aa1503e1     	mov	x1, x21
    50f8: f81f83a8     	stur	x8, [x29, #-0x8]
    50fc: 94000000     	bl	0x50fc <aw22xxx_recover_work_routine+0x40>
		00000000000050fc:  R_AARCH64_CALL26	_printk
    5100: aa1403e0     	mov	x0, x20
    5104: 52801fe1     	mov	w1, #0xff               // =255
    5108: 2a1f03e2     	mov	w2, wzr
    510c: 97ffefd4     	bl	0x105c <aw22xxx_i2c_write>
		000000000000510c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5110: 910033e2     	add	x2, sp, #0xc
    5114: aa1403e0     	mov	x0, x20
    5118: 52800081     	mov	w1, #0x4                // =4
    511c: 390033ff     	strb	wzr, [sp, #0xc]
    5120: 97fff01b     	bl	0x118c <aw22xxx_i2c_read>
		0000000000005120:  R_AARCH64_CALL26	aw22xxx_i2c_read
    5124: 394033e8     	ldrb	w8, [sp, #0xc]
    5128: aa1403e0     	mov	x0, x20
    512c: 52800081     	mov	w1, #0x4                // =4
    5130: 121e7902     	and	w2, w8, #0xfffffffd
    5134: 390033e2     	strb	w2, [sp, #0xc]
    5138: 97ffefc9     	bl	0x105c <aw22xxx_i2c_write>
		0000000000005138:  R_AARCH64_CALL26	aw22xxx_i2c_write
    513c: 910043e2     	add	x2, sp, #0x10
    5140: aa1403e0     	mov	x0, x20
    5144: 52800081     	mov	w1, #0x4                // =4
    5148: 390043ff     	strb	wzr, [sp, #0x10]
    514c: 97fff010     	bl	0x118c <aw22xxx_i2c_read>
		000000000000514c:  R_AARCH64_CALL26	aw22xxx_i2c_read
    5150: 394043e8     	ldrb	w8, [sp, #0x10]
    5154: aa1403e0     	mov	x0, x20
    5158: 52800081     	mov	w1, #0x4                // =4
    515c: 121f7902     	and	w2, w8, #0xfffffffe
    5160: 390043e2     	strb	w2, [sp, #0x10]
    5164: 97ffefbe     	bl	0x105c <aw22xxx_i2c_write>
		0000000000005164:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5168: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_work_routine+0x2c>
		0000000000005168:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    516c: 91000000     	add	x0, x0, #0x0
		000000000000516c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    5170: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_work_routine+0x2c>
		0000000000005170:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    5174: 91000021     	add	x1, x1, #0x0
		0000000000005174:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    5178: 52803542     	mov	w2, #0x1aa              // =426
    517c: 2a1f03e3     	mov	w3, wzr
    5180: 94000000     	bl	0x5180 <aw22xxx_recover_work_routine+0xc4>
		0000000000005180:  R_AARCH64_CALL26	_printk
    5184: d10033a2     	sub	x2, x29, #0xc
    5188: aa1403e0     	mov	x0, x20
    518c: 52800041     	mov	w1, #0x2                // =2
    5190: 381f43bf     	sturb	wzr, [x29, #-0xc]
    5194: 97ffeffe     	bl	0x118c <aw22xxx_i2c_read>
		0000000000005194:  R_AARCH64_CALL26	aw22xxx_i2c_read
    5198: 385f43a8     	ldurb	w8, [x29, #-0xc]
    519c: aa1403e0     	mov	x0, x20
    51a0: 52800041     	mov	w1, #0x2                // =2
    51a4: 121f7902     	and	w2, w8, #0xfffffffe
    51a8: 381f43a2     	sturb	w2, [x29, #-0xc]
    51ac: 97ffefac     	bl	0x105c <aw22xxx_i2c_write>
		00000000000051ac:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51b0: 5280fa00     	mov	w0, #0x7d0              // =2000
    51b4: 52817701     	mov	w1, #0xbb8              // =3000
    51b8: 52800042     	mov	w2, #0x2                // =2
    51bc: 94000000     	bl	0x51bc <aw22xxx_recover_work_routine+0x100>
		00000000000051bc:  R_AARCH64_CALL26	usleep_range_state
    51c0: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_work_routine+0x2c>
		00000000000051c0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x7b1
    51c4: 91000000     	add	x0, x0, #0x0
		00000000000051c4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x7b1
    51c8: aa1503e1     	mov	x1, x21
    51cc: 94000000     	bl	0x51cc <aw22xxx_recover_work_routine+0x110>
		00000000000051cc:  R_AARCH64_CALL26	_printk
    51d0: aa1403e0     	mov	x0, x20
    51d4: 52801fe1     	mov	w1, #0xff               // =255
    51d8: 2a1f03e2     	mov	w2, wzr
    51dc: 97ffefa0     	bl	0x105c <aw22xxx_i2c_write>
		00000000000051dc:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51e0: aa1403e0     	mov	x0, x20
    51e4: 52800041     	mov	w1, #0x2                // =2
    51e8: 52800022     	mov	w2, #0x1                // =1
    51ec: 97ffef9c     	bl	0x105c <aw22xxx_i2c_write>
		00000000000051ec:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51f0: aa1403e0     	mov	x0, x20
    51f4: 52800181     	mov	w1, #0xc                // =12
    51f8: 2a1f03e2     	mov	w2, wzr
    51fc: 97ffef98     	bl	0x105c <aw22xxx_i2c_write>
		00000000000051fc:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5200: aa1403e0     	mov	x0, x20
    5204: 528000a1     	mov	w1, #0x5                // =5
    5208: 52800022     	mov	w2, #0x1                // =1
    520c: 97ffef94     	bl	0x105c <aw22xxx_i2c_write>
		000000000000520c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5210: aa1403e0     	mov	x0, x20
    5214: 52800081     	mov	w1, #0x4                // =4
    5218: 52800022     	mov	w2, #0x1                // =1
    521c: 97ffef90     	bl	0x105c <aw22xxx_i2c_write>
		000000000000521c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5220: aa1403e0     	mov	x0, x20
    5224: 52800121     	mov	w1, #0x9                // =9
    5228: 52800222     	mov	w2, #0x11               // =17
    522c: 97ffef8c     	bl	0x105c <aw22xxx_i2c_write>
		000000000000522c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5230: aa1403e0     	mov	x0, x20
    5234: 52800081     	mov	w1, #0x4                // =4
    5238: 52800062     	mov	w2, #0x3                // =3
    523c: 97ffef88     	bl	0x105c <aw22xxx_i2c_write>
		000000000000523c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5240: aa1403e0     	mov	x0, x20
    5244: 528000a1     	mov	w1, #0x5                // =5
    5248: 52800822     	mov	w2, #0x41               // =65
    524c: 97ffef84     	bl	0x105c <aw22xxx_i2c_write>
		000000000000524c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5250: 52801900     	mov	w0, #0xc8               // =200
    5254: 94000000     	bl	0x5254 <aw22xxx_recover_work_routine+0x198>
		0000000000005254:  R_AARCH64_CALL26	msleep
    5258: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_work_routine+0x2c>
		0000000000005258:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x114c
    525c: 91000000     	add	x0, x0, #0x0
		000000000000525c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x114c
    5260: aa1503e1     	mov	x1, x21
    5264: 94000000     	bl	0x5264 <aw22xxx_recover_work_routine+0x1a8>
		0000000000005264:  R_AARCH64_CALL26	_printk
    5268: 90000008     	adrp	x8, 0x5000 <aw22xxx_cfg_work_routine+0x2c>
		0000000000005268:  R_AARCH64_ADR_PREL_PG_HI21	lamp_effect
    526c: aa1403e0     	mov	x0, x20
    5270: b9400108     	ldr	w8, [x8]
		0000000000005270:  R_AARCH64_LDST32_ABS_LO12_NC	lamp_effect
    5274: b900b268     	str	w8, [x19, #0xb0]
    5278: 97fffb72     	bl	0x4040 <aw22xxx_cfg_recover_update_wait>
		0000000000005278:  R_AARCH64_CALL26	aw22xxx_cfg_recover_update_wait
    527c: 52801900     	mov	w0, #0xc8               // =200
    5280: 94000000     	bl	0x5280 <aw22xxx_recover_work_routine+0x1c4>
		0000000000005280:  R_AARCH64_CALL26	msleep
    5284: 90000008     	adrp	x8, 0x5000 <aw22xxx_cfg_work_routine+0x2c>
		0000000000005284:  R_AARCH64_ADR_PREL_PG_HI21	fan_effect
    5288: aa1403e0     	mov	x0, x20
    528c: b9400108     	ldr	w8, [x8]
		000000000000528c:  R_AARCH64_LDST32_ABS_LO12_NC	fan_effect
    5290: b900b268     	str	w8, [x19, #0xb0]
    5294: 97fffb6b     	bl	0x4040 <aw22xxx_cfg_recover_update_wait>
		0000000000005294:  R_AARCH64_CALL26	aw22xxx_cfg_recover_update_wait
    5298: d5384108     	mrs	x8, SP_EL0
    529c: f9438908     	ldr	x8, [x8, #0x710]
    52a0: f85f83a9     	ldur	x9, [x29, #-0x8]
    52a4: eb09011f     	cmp	x8, x9
    52a8: 540000e1     	b.ne	0x52c4 <aw22xxx_recover_work_routine+0x208>
    52ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    52b0: f9401bf5     	ldr	x21, [sp, #0x30]
    52b4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    52b8: 910143ff     	add	sp, sp, #0x50
    52bc: d50323bf     	autiasp
    52c0: d65f03c0     	ret
    52c4: 94000000     	bl	0x52c4 <aw22xxx_recover_work_routine+0x208>
		00000000000052c4:  R_AARCH64_CALL26	__stack_chk_fail
