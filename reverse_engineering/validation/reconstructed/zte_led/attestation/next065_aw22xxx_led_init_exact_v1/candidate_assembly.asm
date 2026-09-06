
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005140 <aw22xxx_led_init>:
    5140: d503233f     	paciasp
    5144: d100c3ff     	sub	sp, sp, #0x30
    5148: a9017bfd     	stp	x29, x30, [sp, #0x10]
    514c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5150: 910043fd     	add	x29, sp, #0x10
    5154: d5384108     	mrs	x8, SP_EL0
    5158: aa0003f3     	mov	x19, x0
    515c: 90000000     	adrp	x0, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		000000000000515c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    5160: 91000000     	add	x0, x0, #0x0
		0000000000005160:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    5164: f9438908     	ldr	x8, [x8, #0x710]
    5168: 90000001     	adrp	x1, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		0000000000005168:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xae2
    516c: 91000021     	add	x1, x1, #0x0
		000000000000516c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xae2
    5170: f90007e8     	str	x8, [sp, #0x8]
    5174: 94000000     	bl	0x5174 <aw22xxx_led_init+0x34>
		0000000000005174:  R_AARCH64_CALL26	_printk
    5178: aa1303e0     	mov	x0, x19
    517c: 52800021     	mov	w1, #0x1                // =1
    5180: 52800aa2     	mov	w2, #0x55               // =85
    5184: 97ffefb6     	bl	0x105c <aw22xxx_i2c_write>
		0000000000005184:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5188: 5280fa00     	mov	w0, #0x7d0              // =2000
    518c: 52817701     	mov	w1, #0xbb8              // =3000
    5190: 52800042     	mov	w2, #0x2                // =2
    5194: 94000000     	bl	0x5194 <aw22xxx_led_init+0x54>
		0000000000005194:  R_AARCH64_CALL26	usleep_range_state
    5198: 90000000     	adrp	x0, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		0000000000005198:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    519c: 91000000     	add	x0, x0, #0x0
		000000000000519c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    51a0: 90000001     	adrp	x1, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		00000000000051a0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    51a4: 91000021     	add	x1, x1, #0x0
		00000000000051a4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    51a8: 52803542     	mov	w2, #0x1aa              // =426
    51ac: 52800023     	mov	w3, #0x1                // =1
    51b0: 94000000     	bl	0x51b0 <aw22xxx_led_init+0x70>
		00000000000051b0:  R_AARCH64_CALL26	_printk
    51b4: 910003e2     	mov	x2, sp
    51b8: aa1303e0     	mov	x0, x19
    51bc: 52800041     	mov	w1, #0x2                // =2
    51c0: 390003ff     	strb	wzr, [sp]
    51c4: 97ffeff2     	bl	0x118c <aw22xxx_i2c_read>
		00000000000051c4:  R_AARCH64_CALL26	aw22xxx_i2c_read
    51c8: 394003e8     	ldrb	w8, [sp]
    51cc: aa1303e0     	mov	x0, x19
    51d0: 52800041     	mov	w1, #0x2                // =2
    51d4: 32000102     	orr	w2, w8, #0x1
    51d8: 390003e2     	strb	w2, [sp]
    51dc: 97ffefa0     	bl	0x105c <aw22xxx_i2c_write>
		00000000000051dc:  R_AARCH64_CALL26	aw22xxx_i2c_write
    51e0: 5280fa00     	mov	w0, #0x7d0              // =2000
    51e4: 52817701     	mov	w1, #0xbb8              // =3000
    51e8: 52800042     	mov	w2, #0x2                // =2
    51ec: 94000000     	bl	0x51ec <aw22xxx_led_init+0xac>
		00000000000051ec:  R_AARCH64_CALL26	usleep_range_state
    51f0: b942f268     	ldr	w8, [x19, #0x2f0]
    51f4: 7100351f     	cmp	w8, #0xd
    51f8: 54000682     	b.hs	0x52c8 <aw22xxx_led_init+0x188>
    51fc: 90000009     	adrp	x9, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		00000000000051fc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_imax_code
    5200: 91000129     	add	x9, x9, #0x0
		0000000000005200:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_imax_code
    5204: aa1303e0     	mov	x0, x19
    5208: 38686928     	ldrb	w8, [x9, x8]
    520c: 528001e9     	mov	w9, #0xf                // =15
    5210: 52801fe1     	mov	w1, #0xff               // =255
    5214: 2a1f03e2     	mov	w2, wzr
    5218: 71003d1f     	cmp	w8, #0xf
    521c: 1a893114     	csel	w20, w8, w9, lo
    5220: 97ffef8f     	bl	0x105c <aw22xxx_i2c_write>
		0000000000005220:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5224: aa1303e0     	mov	x0, x19
    5228: 52800161     	mov	w1, #0xb                // =11
    522c: 2a1403e2     	mov	w2, w20
    5230: 97ffef8b     	bl	0x105c <aw22xxx_i2c_write>
		0000000000005230:  R_AARCH64_CALL26	aw22xxx_i2c_write
    5234: 90000000     	adrp	x0, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		0000000000005234:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    5238: 91000000     	add	x0, x0, #0x0
		0000000000005238:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    523c: 90000001     	adrp	x1, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		000000000000523c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    5240: 91000021     	add	x1, x1, #0x0
		0000000000005240:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    5244: 52803542     	mov	w2, #0x1aa              // =426
    5248: 2a1f03e3     	mov	w3, wzr
    524c: 94000000     	bl	0x524c <aw22xxx_led_init+0x10c>
		000000000000524c:  R_AARCH64_CALL26	_printk
    5250: 910013e2     	add	x2, sp, #0x4
    5254: aa1303e0     	mov	x0, x19
    5258: 52800041     	mov	w1, #0x2                // =2
    525c: 390013ff     	strb	wzr, [sp, #0x4]
    5260: 97ffefcb     	bl	0x118c <aw22xxx_i2c_read>
		0000000000005260:  R_AARCH64_CALL26	aw22xxx_i2c_read
    5264: 394013e8     	ldrb	w8, [sp, #0x4]
    5268: aa1303e0     	mov	x0, x19
    526c: 52800041     	mov	w1, #0x2                // =2
    5270: 121f7902     	and	w2, w8, #0xfffffffe
    5274: 390013e2     	strb	w2, [sp, #0x4]
    5278: 97ffef79     	bl	0x105c <aw22xxx_i2c_write>
		0000000000005278:  R_AARCH64_CALL26	aw22xxx_i2c_write
    527c: 5280fa00     	mov	w0, #0x7d0              // =2000
    5280: 52817701     	mov	w1, #0xbb8              // =3000
    5284: 52800042     	mov	w2, #0x2                // =2
    5288: 94000000     	bl	0x5288 <aw22xxx_led_init+0x148>
		0000000000005288:  R_AARCH64_CALL26	usleep_range_state
    528c: 90000000     	adrp	x0, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		000000000000528c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1565
    5290: 91000000     	add	x0, x0, #0x0
		0000000000005290:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1565
    5294: 90000001     	adrp	x1, 0x5000 <aw22xxx_recover_work_routine+0xcc>
		0000000000005294:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xae2
    5298: 91000021     	add	x1, x1, #0x0
		0000000000005298:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xae2
    529c: 94000000     	bl	0x529c <aw22xxx_led_init+0x15c>
		000000000000529c:  R_AARCH64_CALL26	_printk
    52a0: d5384108     	mrs	x8, SP_EL0
    52a4: f9438908     	ldr	x8, [x8, #0x710]
    52a8: f94007e9     	ldr	x9, [sp, #0x8]
    52ac: eb09011f     	cmp	x8, x9
    52b0: 540000e1     	b.ne	0x52cc <aw22xxx_led_init+0x18c>
    52b4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    52b8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    52bc: 9100c3ff     	add	sp, sp, #0x30
    52c0: d50323bf     	autiasp
    52c4: d65f03c0     	ret
    52c8: d42aa240     	brk	#0x5512
    52cc: 94000000     	bl	0x52cc <aw22xxx_led_init+0x18c>
		00000000000052cc:  R_AARCH64_CALL26	__stack_chk_fail
