
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004198 <aw9620x_update_work>:
    4198: d503233f     	paciasp
    419c: d101c3ff     	sub	sp, sp, #0x70
    41a0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    41a4: a9026ffc     	stp	x28, x27, [sp, #0x20]
    41a8: a90367fa     	stp	x26, x25, [sp, #0x30]
    41ac: a9045ff8     	stp	x24, x23, [sp, #0x40]
    41b0: a90557f6     	stp	x22, x21, [sp, #0x50]
    41b4: a9064ff4     	stp	x20, x19, [sp, #0x60]
    41b8: 910043fd     	add	x29, sp, #0x10
    41bc: d5384108     	mrs	x8, SP_EL0
    41c0: aa0003f4     	mov	x20, x0
    41c4: d1082013     	sub	x19, x0, #0x208
    41c8: f9438908     	ldr	x8, [x8, #0x710]
    41cc: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000041cc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_bss_base+0x8
    41d0: 91000000     	add	x0, x0, #0x0
		00000000000041d0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_bss_base+0x8
    41d4: f90007e8     	str	x8, [sp, #0x8]
    41d8: 94000000     	bl	0x41d8 <aw9620x_update_work+0x40>
		00000000000041d8:  R_AARCH64_CALL26	mutex_lock
    41dc: d1076297     	sub	x23, x20, #0x1d8
    41e0: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000041e0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    41e4: 91000000     	add	x0, x0, #0x0
		00000000000041e4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    41e8: f94002e1     	ldr	x1, [x23]
    41ec: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000041ec:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    41f0: 91000042     	add	x2, x2, #0x0
		00000000000041f0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    41f4: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000041f4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    41f8: 91000063     	add	x3, x3, #0x0
		00000000000041f8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    41fc: 5281a2a4     	mov	w4, #0xd15              // =3349
    4200: 94000000     	bl	0x4200 <aw9620x_update_work+0x68>
		0000000000004200:  R_AARCH64_CALL26	_dev_printk
    4204: d1080a88     	sub	x8, x20, #0x202
    4208: 39400108     	ldrb	w8, [x8]
    420c: 7100091f     	cmp	w8, #0x2
    4210: 540005cc     	b.gt	0x42c8 <aw9620x_update_work+0x130>
    4214: 340005e8     	cbz	w8, 0x42d0 <aw9620x_update_work+0x138>
    4218: 7100091f     	cmp	w8, #0x2
    421c: 540016c1     	b.ne	0x44f4 <aw9620x_update_work+0x35c>
    4220: f94002e1     	ldr	x1, [x23]
    4224: 90000015     	adrp	x21, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004224:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    4228: 910002b5     	add	x21, x21, #0x0
		0000000000004228:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    422c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000422c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4230: 91000000     	add	x0, x0, #0x0
		0000000000004230:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4234: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004234:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ea
    4238: 91000063     	add	x3, x3, #0x0
		0000000000004238:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ea
    423c: aa1503e2     	mov	x2, x21
    4240: 52807d84     	mov	w4, #0x3ec              // =1004
    4244: 94000000     	bl	0x4244 <aw9620x_update_work+0xac>
		0000000000004244:  R_AARCH64_CALL26	_dev_printk
    4248: f94002e1     	ldr	x1, [x23]
    424c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000424c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    4250: 91000000     	add	x0, x0, #0x0
		0000000000004250:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    4254: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004254:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a10
    4258: 91000063     	add	x3, x3, #0x0
		0000000000004258:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a10
    425c: aa1503e2     	mov	x2, x21
    4260: 52806964     	mov	w4, #0x34b              // =843
    4264: b90007ff     	str	wzr, [sp, #0x4]
    4268: 94000000     	bl	0x4268 <aw9620x_update_work+0xd0>
		0000000000004268:  R_AARCH64_CALL26	_dev_printk
    426c: 910013e1     	add	x1, sp, #0x4
    4270: aa1303e0     	mov	x0, x19
    4274: 52883202     	mov	w2, #0x4190             // =16784
    4278: 94000555     	bl	0x57cc <aw9620x_reg_read_all_val>
		0000000000004278:  R_AARCH64_CALL26	aw9620x_reg_read_all_val
    427c: 36f81700     	tbz	w0, #0x1f, 0x455c <aw9620x_update_work+0x3c4>
    4280: f94002e1     	ldr	x1, [x23]
    4284: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004284:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4288: 91000000     	add	x0, x0, #0x0
		0000000000004288:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    428c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000428c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2772
    4290: 91000042     	add	x2, x2, #0x0
		0000000000004290:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2772
    4294: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004294:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a10
    4298: 91000063     	add	x3, x3, #0x0
		0000000000004298:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a10
    429c: 52806a04     	mov	w4, #0x350              // =848
    42a0: 94000000     	bl	0x42a0 <aw9620x_update_work+0x108>
		00000000000042a0:  R_AARCH64_CALL26	_dev_printk
    42a4: f94002e1     	ldr	x1, [x23]
    42a8: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000042a8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    42ac: 91000000     	add	x0, x0, #0x0
		00000000000042ac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    42b0: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000042b0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x18d2
    42b4: 91000042     	add	x2, x2, #0x0
		00000000000042b4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x18d2
    42b8: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000042b8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ea
    42bc: 91000063     	add	x3, x3, #0x0
		00000000000042bc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ea
    42c0: 52808064     	mov	w4, #0x403              // =1027
    42c4: 14000094     	b	0x4514 <aw9620x_update_work+0x37c>
    42c8: 71000d1f     	cmp	w8, #0x3
    42cc: 54000b01     	b.ne	0x442c <aw9620x_update_work+0x294>
    42d0: d1081688     	sub	x8, x20, #0x205
    42d4: aa1303e0     	mov	x0, x19
    42d8: 3900011f     	strb	wzr, [x8]
    42dc: 94000000     	bl	0x42dc <aw9620x_update_work+0x144>
		00000000000042dc:  R_AARCH64_CALL26	aw9620x_load_frimware_work
    42e0: 35000200     	cbnz	w0, 0x4320 <aw9620x_update_work+0x188>
    42e4: 39400268     	ldrb	w8, [x19]
    42e8: 7100051f     	cmp	w8, #0x1
    42ec: 540002e0     	b.eq	0x4348 <aw9620x_update_work+0x1b0>
    42f0: aa1303e0     	mov	x0, x19
    42f4: 94000939     	bl	0x67d8 <aw9620x_load_def_reg_bin>
		00000000000042f4:  R_AARCH64_CALL26	aw9620x_load_def_reg_bin
    42f8: 34001100     	cbz	w0, 0x4518 <aw9620x_update_work+0x380>
    42fc: f94002e1     	ldr	x1, [x23]
    4300: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004300:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4304: 91000000     	add	x0, x0, #0x0
		0000000000004304:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4308: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004308:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xf94
    430c: 91000042     	add	x2, x2, #0x0
		000000000000430c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xf94
    4310: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004310:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    4314: 91000063     	add	x3, x3, #0x0
		0000000000004314:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    4318: 5281ad04     	mov	w4, #0xd68              // =3432
    431c: 1400007e     	b	0x4514 <aw9620x_update_work+0x37c>
    4320: f94002e1     	ldr	x1, [x23]
    4324: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004324:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4328: 91000000     	add	x0, x0, #0x0
		0000000000004328:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    432c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000432c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3b
    4330: 91000042     	add	x2, x2, #0x0
		0000000000004330:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3b
    4334: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004334:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    4338: 91000063     	add	x3, x3, #0x0
		0000000000004338:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    433c: 5281a604     	mov	w4, #0xd30              // =3376
    4340: 94000000     	bl	0x4340 <aw9620x_update_work+0x1a8>
		0000000000004340:  R_AARCH64_CALL26	_dev_printk
    4344: 1400003c     	b	0x4434 <aw9620x_update_work+0x29c>
    4348: f94002e1     	ldr	x1, [x23]
    434c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000434c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    4350: 91000000     	add	x0, x0, #0x0
		0000000000004350:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    4354: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004354:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a75
    4358: 91000042     	add	x2, x2, #0x0
		0000000000004358:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a75
    435c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000435c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3f7
    4360: 91000063     	add	x3, x3, #0x0
		0000000000004360:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3f7
    4364: 528174c4     	mov	w4, #0xba6              // =2982
    4368: aa1703f6     	mov	x22, x23
    436c: 3900027f     	strb	wzr, [x19]
    4370: 94000000     	bl	0x4370 <aw9620x_update_work+0x1d8>
		0000000000004370:  R_AARCH64_CALL26	_dev_printk
    4374: aa1f03fa     	mov	x26, xzr
    4378: d1081288     	sub	x8, x20, #0x204
    437c: 52800029     	mov	w9, #0x1                // =1
    4380: 9000001b     	adrp	x27, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004380:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_base
    4384: 9100037b     	add	x27, x27, #0x0
		0000000000004384:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_base
    4388: d107d29c     	sub	x28, x20, #0x1f4
    438c: 90000014     	adrp	x20, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000438c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x272f
    4390: 91000294     	add	x20, x20, #0x0
		0000000000004390:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x272f
    4394: 528001f9     	mov	w25, #0xf               // =15
    4398: 90000015     	adrp	x21, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004398:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2e7b
    439c: 910002b5     	add	x21, x21, #0x0
		000000000000439c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2e7b
    43a0: 39000109     	strb	w9, [x8]
    43a4: 14000013     	b	0x43f0 <aw9620x_update_work+0x258>
    43a8: 8b1a0b68     	add	x8, x27, x26, lsl #2
    43ac: aa1303e0     	mov	x0, x19
    43b0: 29406117     	ldp	w23, w24, [x8]
    43b4: 2a1703e1     	mov	w1, w23
    43b8: 2a1803e2     	mov	w2, w24
    43bc: 97fff515     	bl	0x1810 <aw9620x_i2c_write>
		00000000000043bc:  R_AARCH64_CALL26	aw9620x_i2c_write
    43c0: f94002c1     	ldr	x1, [x22]
    43c4: aa1403e0     	mov	x0, x20
    43c8: aa1503e2     	mov	x2, x21
    43cc: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000043cc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3f7
    43d0: 91000063     	add	x3, x3, #0x0
		00000000000043d0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3f7
    43d4: 52817684     	mov	w4, #0xbb4              // =2996
    43d8: 2a1703e5     	mov	w5, w23
    43dc: 2a1803e6     	mov	w6, w24
    43e0: 94000000     	bl	0x43e0 <aw9620x_update_work+0x248>
		00000000000043e0:  R_AARCH64_CALL26	_dev_printk
    43e4: f1037b5f     	cmp	x26, #0xde
    43e8: 91000b5a     	add	x26, x26, #0x2
    43ec: 540000a2     	b.hs	0x4400 <aw9620x_update_work+0x268>
    43f0: f103235f     	cmp	x26, #0xc8
    43f4: 54fffda1     	b.ne	0x43a8 <aw9620x_update_work+0x210>
    43f8: b9000399     	str	w25, [x28]
    43fc: 17fffffa     	b	0x43e4 <aw9620x_update_work+0x24c>
    4400: aa1303e0     	mov	x0, x19
    4404: 94000a80     	bl	0x6e04 <aw9620x_en_active>
		0000000000004404:  R_AARCH64_CALL26	aw9620x_en_active
    4408: f94002c1     	ldr	x1, [x22]
    440c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000440c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x272f
    4410: 91000000     	add	x0, x0, #0x0
		0000000000004410:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x272f
    4414: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004414:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2266
    4418: 91000042     	add	x2, x2, #0x0
		0000000000004418:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2266
    441c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000441c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3f7
    4420: 91000063     	add	x3, x3, #0x0
		0000000000004420:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3f7
    4424: 52817724     	mov	w4, #0xbb9              // =3001
    4428: 1400003b     	b	0x4514 <aw9620x_update_work+0x37c>
    442c: 7100151f     	cmp	w8, #0x5
    4430: 54000621     	b.ne	0x44f4 <aw9620x_update_work+0x35c>
    4434: aa1303e0     	mov	x0, x19
    4438: 94000618     	bl	0x5c98 <aw9620x_reg_update_boot_work>
		0000000000004438:  R_AARCH64_CALL26	aw9620x_reg_update_boot_work
    443c: f94002e1     	ldr	x1, [x23]
    4440: 350004a0     	cbnz	w0, 0x44d4 <aw9620x_update_work+0x33c>
    4444: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004444:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    4448: 91000000     	add	x0, x0, #0x0
		0000000000004448:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    444c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000444c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x358c
    4450: 91000042     	add	x2, x2, #0x0
		0000000000004450:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x358c
    4454: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004454:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    4458: 91000063     	add	x3, x3, #0x0
		0000000000004458:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    445c: 5281a724     	mov	w4, #0xd39              // =3385
    4460: 94000000     	bl	0x4460 <aw9620x_update_work+0x2c8>
		0000000000004460:  R_AARCH64_CALL26	_dev_printk
    4464: d1081688     	sub	x8, x20, #0x205
    4468: 52800029     	mov	w9, #0x1                // =1
    446c: aa1303e0     	mov	x0, x19
    4470: 39000109     	strb	w9, [x8]
    4474: 94000000     	bl	0x4474 <aw9620x_update_work+0x2dc>
		0000000000004474:  R_AARCH64_CALL26	aw9620x_load_frimware_work
    4478: 35001680     	cbnz	w0, 0x4748 <aw9620x_update_work+0x5b0>
    447c: aa1303e0     	mov	x0, x19
    4480: 2a1f03e1     	mov	w1, wzr
    4484: 9400073e     	bl	0x617c <aw9620x_recover_fun>
		0000000000004484:  R_AARCH64_CALL26	aw9620x_recover_fun
    4488: 35001720     	cbnz	w0, 0x476c <aw9620x_update_work+0x5d4>
    448c: aa1303e0     	mov	x0, x19
    4490: 940007cb     	bl	0x63bc <aw9620x_soft_reset>
		0000000000004490:  R_AARCH64_CALL26	aw9620x_soft_reset
    4494: 350017e0     	cbnz	w0, 0x4790 <aw9620x_update_work+0x5f8>
    4498: aa1303e0     	mov	x0, x19
    449c: 94000851     	bl	0x65e0 <aw9620x_read_chipid>
		000000000000449c:  R_AARCH64_CALL26	aw9620x_read_chipid
    44a0: 350018a0     	cbnz	w0, 0x47b4 <aw9620x_update_work+0x61c>
    44a4: aa1303e0     	mov	x0, x19
    44a8: 94000566     	bl	0x5a40 <aw9620x_read_init_over_irq>
		00000000000044a8:  R_AARCH64_CALL26	aw9620x_read_init_over_irq
    44ac: 34fff1c0     	cbz	w0, 0x42e4 <aw9620x_update_work+0x14c>
    44b0: f94002e1     	ldr	x1, [x23]
    44b4: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000044b4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    44b8: 91000000     	add	x0, x0, #0x0
		00000000000044b8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    44bc: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000044bc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x29f5
    44c0: 91000042     	add	x2, x2, #0x0
		00000000000044c0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x29f5
    44c4: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000044c4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    44c8: 91000063     	add	x3, x3, #0x0
		00000000000044c8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    44cc: 5281ab04     	mov	w4, #0xd58              // =3416
    44d0: 14000011     	b	0x4514 <aw9620x_update_work+0x37c>
    44d4: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000044d4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    44d8: 91000000     	add	x0, x0, #0x0
		00000000000044d8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    44dc: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000044dc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1f06
    44e0: 91000042     	add	x2, x2, #0x0
		00000000000044e0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1f06
    44e4: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000044e4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    44e8: 91000063     	add	x3, x3, #0x0
		00000000000044e8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    44ec: 5281a6c4     	mov	w4, #0xd36              // =3382
    44f0: 14000009     	b	0x4514 <aw9620x_update_work+0x37c>
    44f4: f94002e1     	ldr	x1, [x23]
    44f8: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000044f8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    44fc: 91000000     	add	x0, x0, #0x0
		00000000000044fc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    4500: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004500:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2e24
    4504: 91000042     	add	x2, x2, #0x0
		0000000000004504:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2e24
    4508: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004508:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    450c: 91000063     	add	x3, x3, #0x0
		000000000000450c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    4510: 5281aba4     	mov	w4, #0xd5d              // =3421
    4514: 94000000     	bl	0x4514 <aw9620x_update_work+0x37c>
		0000000000004514:  R_AARCH64_CALL26	_dev_printk
    4518: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004518:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_bss_base+0x8
    451c: 91000000     	add	x0, x0, #0x0
		000000000000451c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_bss_base+0x8
    4520: 94000000     	bl	0x4520 <aw9620x_update_work+0x388>
		0000000000004520:  R_AARCH64_CALL26	mutex_unlock
    4524: d5384108     	mrs	x8, SP_EL0
    4528: f9438908     	ldr	x8, [x8, #0x710]
    452c: f94007e9     	ldr	x9, [sp, #0x8]
    4530: eb09011f     	cmp	x8, x9
    4534: 54001901     	b.ne	0x4854 <aw9620x_update_work+0x6bc>
    4538: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    453c: a94557f6     	ldp	x22, x21, [sp, #0x50]
    4540: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    4544: a94367fa     	ldp	x26, x25, [sp, #0x30]
    4548: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    454c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4550: 9101c3ff     	add	sp, sp, #0x70
    4554: d50323bf     	autiasp
    4558: d65f03c0     	ret
    455c: b94007e5     	ldr	w5, [sp, #0x4]
    4560: 528c4108     	mov	w8, #0x6208             // =25096
    4564: f94002e1     	ldr	x1, [x23]
    4568: 72a40448     	movk	w8, #0x2022, lsl #16
    456c: 6b0800bf     	cmp	w5, w8
    4570: 540003c0     	b.eq	0x45e8 <aw9620x_update_work+0x450>
    4574: 528c40a8     	mov	w8, #0x6205             // =25093
    4578: 72a40448     	movk	w8, #0x2022, lsl #16
    457c: 6b0800bf     	cmp	w5, w8
    4580: 540001e0     	b.eq	0x45bc <aw9620x_update_work+0x424>
    4584: 528c4068     	mov	w8, #0x6203             // =25091
    4588: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004588:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    458c: 91000000     	add	x0, x0, #0x0
		000000000000458c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    4590: 72a40448     	movk	w8, #0x2022, lsl #16
    4594: 6b0800bf     	cmp	w5, w8
    4598: 54000b41     	b.ne	0x4700 <aw9620x_update_work+0x568>
    459c: 528c4065     	mov	w5, #0x6203             // =25091
    45a0: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000045a0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x18eb
    45a4: 91000042     	add	x2, x2, #0x0
		00000000000045a4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x18eb
    45a8: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000045a8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a10
    45ac: 91000063     	add	x3, x3, #0x0
		00000000000045ac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a10
    45b0: 52806ac4     	mov	w4, #0x356              // =854
    45b4: 72a40445     	movk	w5, #0x2022, lsl #16
    45b8: 14000016     	b	0x4610 <aw9620x_update_work+0x478>
    45bc: 528c4068     	mov	w8, #0x6203             // =25091
    45c0: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000045c0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    45c4: 91000000     	add	x0, x0, #0x0
		00000000000045c4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    45c8: 72a40448     	movk	w8, #0x2022, lsl #16
    45cc: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000045cc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a25
    45d0: 91000042     	add	x2, x2, #0x0
		00000000000045d0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a25
    45d4: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000045d4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a10
    45d8: 91000063     	add	x3, x3, #0x0
		00000000000045d8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a10
    45dc: 11000905     	add	w5, w8, #0x2
    45e0: 52806b24     	mov	w4, #0x359              // =857
    45e4: 1400000b     	b	0x4610 <aw9620x_update_work+0x478>
    45e8: 528c4068     	mov	w8, #0x6203             // =25091
    45ec: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000045ec:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    45f0: 91000000     	add	x0, x0, #0x0
		00000000000045f0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    45f4: 72a40448     	movk	w8, #0x2022, lsl #16
    45f8: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000045f8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x906
    45fc: 91000042     	add	x2, x2, #0x0
		00000000000045fc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x906
    4600: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004600:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a10
    4604: 91000063     	add	x3, x3, #0x0
		0000000000004604:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a10
    4608: 11001505     	add	w5, w8, #0x5
    460c: 52806b84     	mov	w4, #0x35c              // =860
    4610: 94000000     	bl	0x4610 <aw9620x_update_work+0x478>
		0000000000004610:  R_AARCH64_CALL26	_dev_printk
    4614: f94002e1     	ldr	x1, [x23]
    4618: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004618:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    461c: 91000000     	add	x0, x0, #0x0
		000000000000461c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4620: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004620:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2bc5
    4624: 91000042     	add	x2, x2, #0x0
		0000000000004624:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2bc5
    4628: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004628:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ea
    462c: 91000063     	add	x3, x3, #0x0
		000000000000462c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ea
    4630: 52807de4     	mov	w4, #0x3ef              // =1007
    4634: 94000000     	bl	0x4634 <aw9620x_update_work+0x49c>
		0000000000004634:  R_AARCH64_CALL26	_dev_printk
    4638: aa1303e0     	mov	x0, x19
    463c: 94000597     	bl	0x5c98 <aw9620x_reg_update_boot_work>
		000000000000463c:  R_AARCH64_CALL26	aw9620x_reg_update_boot_work
    4640: f94002e1     	ldr	x1, [x23]
    4644: 350004e0     	cbnz	w0, 0x46e0 <aw9620x_update_work+0x548>
    4648: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004648:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    464c: 91000000     	add	x0, x0, #0x0
		000000000000464c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4650: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004650:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xa2e
    4654: 91000042     	add	x2, x2, #0x0
		0000000000004654:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xa2e
    4658: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004658:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ea
    465c: 91000063     	add	x3, x3, #0x0
		000000000000465c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ea
    4660: 52807e44     	mov	w4, #0x3f2              // =1010
    4664: 94000000     	bl	0x4664 <aw9620x_update_work+0x4cc>
		0000000000004664:  R_AARCH64_CALL26	_dev_printk
    4668: aa1303e0     	mov	x0, x19
    466c: 94000754     	bl	0x63bc <aw9620x_soft_reset>
		000000000000466c:  R_AARCH64_CALL26	aw9620x_soft_reset
    4670: 35000560     	cbnz	w0, 0x471c <aw9620x_update_work+0x584>
    4674: aa1303e0     	mov	x0, x19
    4678: 940007da     	bl	0x65e0 <aw9620x_read_chipid>
		0000000000004678:  R_AARCH64_CALL26	aw9620x_read_chipid
    467c: f94002e1     	ldr	x1, [x23]
    4680: 35000ac0     	cbnz	w0, 0x47d8 <aw9620x_update_work+0x640>
    4684: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004684:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    4688: 91000000     	add	x0, x0, #0x0
		0000000000004688:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    468c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000468c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xdd7
    4690: 91000042     	add	x2, x2, #0x0
		0000000000004690:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xdd7
    4694: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004694:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ea
    4698: 91000063     	add	x3, x3, #0x0
		0000000000004698:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ea
    469c: 52807f44     	mov	w4, #0x3fa              // =1018
    46a0: 94000000     	bl	0x46a0 <aw9620x_update_work+0x508>
		00000000000046a0:  R_AARCH64_CALL26	_dev_printk
    46a4: aa1303e0     	mov	x0, x19
    46a8: 940004e6     	bl	0x5a40 <aw9620x_read_init_over_irq>
		00000000000046a8:  R_AARCH64_CALL26	aw9620x_read_init_over_irq
    46ac: f94002e1     	ldr	x1, [x23]
    46b0: 31000c1f     	cmn	w0, #0x3
    46b4: 54000a60     	b.eq	0x4800 <aw9620x_update_work+0x668>
    46b8: 3100041f     	cmn	w0, #0x1
    46bc: 54000ba1     	b.ne	0x4830 <aw9620x_update_work+0x698>
    46c0: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000046c0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    46c4: 91000000     	add	x0, x0, #0x0
		00000000000046c4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    46c8: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000046c8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xf78
    46cc: 91000042     	add	x2, x2, #0x0
		00000000000046cc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xf78
    46d0: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000046d0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    46d4: 91000063     	add	x3, x3, #0x0
		00000000000046d4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    46d8: 5281a3c4     	mov	w4, #0xd1e              // =3358
    46dc: 17ffff8e     	b	0x4514 <aw9620x_update_work+0x37c>
    46e0: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000046e0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    46e4: 91000000     	add	x0, x0, #0x0
		00000000000046e4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    46e8: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000046e8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1d3e
    46ec: 91000042     	add	x2, x2, #0x0
		00000000000046ec:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1d3e
    46f0: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000046f0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ea
    46f4: 91000063     	add	x3, x3, #0x0
		00000000000046f4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ea
    46f8: 52807fe4     	mov	w4, #0x3ff              // =1023
    46fc: 14000010     	b	0x473c <aw9620x_update_work+0x5a4>
    4700: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004700:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3906
    4704: 91000042     	add	x2, x2, #0x0
		0000000000004704:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3906
    4708: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004708:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2a10
    470c: 91000063     	add	x3, x3, #0x0
		000000000000470c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2a10
    4710: 52806be4     	mov	w4, #0x35f              // =863
    4714: 94000000     	bl	0x4714 <aw9620x_update_work+0x57c>
		0000000000004714:  R_AARCH64_CALL26	_dev_printk
    4718: 17fffee3     	b	0x42a4 <aw9620x_update_work+0x10c>
    471c: f94002e1     	ldr	x1, [x23]
    4720: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004720:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4724: 91000000     	add	x0, x0, #0x0
		0000000000004724:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4728: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004728:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x74d
    472c: 91000042     	add	x2, x2, #0x0
		000000000000472c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x74d
    4730: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004730:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ea
    4734: 91000063     	add	x3, x3, #0x0
		0000000000004734:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ea
    4738: 52807ea4     	mov	w4, #0x3f5              // =1013
    473c: 12800005     	mov	w5, #-0x1               // =-1
    4740: 94000000     	bl	0x4740 <aw9620x_update_work+0x5a8>
		0000000000004740:  R_AARCH64_CALL26	_dev_printk
    4744: 17ffff75     	b	0x4518 <aw9620x_update_work+0x380>
    4748: f94002e1     	ldr	x1, [x23]
    474c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000474c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4750: 91000000     	add	x0, x0, #0x0
		0000000000004750:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4754: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004754:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ca
    4758: 91000042     	add	x2, x2, #0x0
		0000000000004758:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ca
    475c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000475c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    4760: 91000063     	add	x3, x3, #0x0
		0000000000004760:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    4764: 5281a804     	mov	w4, #0xd40              // =3392
    4768: 17ffff6b     	b	0x4514 <aw9620x_update_work+0x37c>
    476c: f94002e1     	ldr	x1, [x23]
    4770: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004770:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4774: 91000000     	add	x0, x0, #0x0
		0000000000004774:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4778: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004778:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ad5
    477c: 91000042     	add	x2, x2, #0x0
		000000000000477c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ad5
    4780: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004780:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    4784: 91000063     	add	x3, x3, #0x0
		0000000000004784:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    4788: 5281a8c4     	mov	w4, #0xd46              // =3398
    478c: 17ffff62     	b	0x4514 <aw9620x_update_work+0x37c>
    4790: f94002e1     	ldr	x1, [x23]
    4794: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004794:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4798: 91000000     	add	x0, x0, #0x0
		0000000000004798:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    479c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000479c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x20bf
    47a0: 91000042     	add	x2, x2, #0x0
		00000000000047a0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x20bf
    47a4: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000047a4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    47a8: 91000063     	add	x3, x3, #0x0
		00000000000047a8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    47ac: 5281a964     	mov	w4, #0xd4b              // =3403
    47b0: 17ffff59     	b	0x4514 <aw9620x_update_work+0x37c>
    47b4: f94002e1     	ldr	x1, [x23]
    47b8: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000047b8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    47bc: 91000000     	add	x0, x0, #0x0
		00000000000047bc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    47c0: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000047c0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2d06
    47c4: 91000042     	add	x2, x2, #0x0
		00000000000047c4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2d06
    47c8: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000047c8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    47cc: 91000063     	add	x3, x3, #0x0
		00000000000047cc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    47d0: 5281aa44     	mov	w4, #0xd52              // =3410
    47d4: 17ffff50     	b	0x4514 <aw9620x_update_work+0x37c>
    47d8: 2a0003e5     	mov	w5, w0
    47dc: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000047dc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    47e0: 91000000     	add	x0, x0, #0x0
		00000000000047e0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    47e4: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000047e4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3be
    47e8: 91000042     	add	x2, x2, #0x0
		00000000000047e8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3be
    47ec: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		00000000000047ec:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x38ea
    47f0: 91000063     	add	x3, x3, #0x0
		00000000000047f0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x38ea
    47f4: 52807f84     	mov	w4, #0x3fc              // =1020
    47f8: 94000000     	bl	0x47f8 <aw9620x_update_work+0x660>
		00000000000047f8:  R_AARCH64_CALL26	_dev_printk
    47fc: 17ffff47     	b	0x4518 <aw9620x_update_work+0x380>
    4800: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004800:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4804: 91000000     	add	x0, x0, #0x0
		0000000000004804:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4808: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004808:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x19c
    480c: 91000042     	add	x2, x2, #0x0
		000000000000480c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x19c
    4810: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004810:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    4814: 91000063     	add	x3, x3, #0x0
		0000000000004814:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    4818: 5281a424     	mov	w4, #0xd21              // =3361
    481c: 12800045     	mov	w5, #-0x3               // =-3
    4820: 94000000     	bl	0x4820 <aw9620x_update_work+0x688>
		0000000000004820:  R_AARCH64_CALL26	_dev_printk
    4824: aa1303e0     	mov	x0, x19
    4828: 940004e5     	bl	0x5bbc <aw9620x_get_err_info>
		0000000000004828:  R_AARCH64_CALL26	aw9620x_get_err_info
    482c: 17fffea9     	b	0x42d0 <aw9620x_update_work+0x138>
    4830: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004830:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    4834: 91000000     	add	x0, x0, #0x0
		0000000000004834:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    4838: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004838:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x222b
    483c: 91000042     	add	x2, x2, #0x0
		000000000000483c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x222b
    4840: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004840:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3578
    4844: 91000063     	add	x3, x3, #0x0
		0000000000004844:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3578
    4848: 5281a484     	mov	w4, #0xd24              // =3364
    484c: 94000000     	bl	0x484c <aw9620x_update_work+0x6b4>
		000000000000484c:  R_AARCH64_CALL26	_dev_printk
    4850: 17fffea0     	b	0x42d0 <aw9620x_update_work+0x138>
    4854: 94000000     	bl	0x4854 <aw9620x_update_work+0x6bc>
		0000000000004854:  R_AARCH64_CALL26	__stack_chk_fail
