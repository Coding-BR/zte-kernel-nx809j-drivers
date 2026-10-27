
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000617c <aw9620x_recover_fun>:
    617c: d503233f     	paciasp
    6180: d10143ff     	sub	sp, sp, #0x50
    6184: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6188: f90013f7     	str	x23, [sp, #0x20]
    618c: a90357f6     	stp	x22, x21, [sp, #0x30]
    6190: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6194: 910043fd     	add	x29, sp, #0x10
    6198: d5384108     	mrs	x8, SP_EL0
    619c: 2a0103f4     	mov	w20, w1
    61a0: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000061a0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfaf
    61a4: 91000063     	add	x3, x3, #0x0
		00000000000061a4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfaf
    61a8: f9438908     	ldr	x8, [x8, #0x710]
    61ac: aa0003f3     	mov	x19, x0
    61b0: 529e0235     	mov	w21, #0xf011            // =61457
    61b4: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000061b4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x15d8
    61b8: 91000042     	add	x2, x2, #0x0
		00000000000061b8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x15d8
    61bc: f90007e8     	str	x8, [sp, #0x8]
    61c0: 52807084     	mov	w4, #0x384              // =900
    61c4: aa0303e5     	mov	x5, x3
    61c8: f9401801     	ldr	x1, [x0, #0x30]
    61cc: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000061cc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    61d0: 91000000     	add	x0, x0, #0x0
		00000000000061d0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    61d4: 72a78015     	movk	w21, #0x3c00, lsl #16
    61d8: b90007ff     	str	wzr, [sp, #0x4]
    61dc: 94000000     	bl	0x61dc <aw9620x_recover_fun+0x60>
		00000000000061dc:  R_AARCH64_CALL26	_dev_printk
    61e0: 5281fdc8     	mov	w8, #0xfee              // =4078
    61e4: aa1303e0     	mov	x0, x19
    61e8: 529fe401     	mov	w1, #0xff20             // =65312
    61ec: 2a0802a2     	orr	w2, w21, w8
    61f0: 97ffed88     	bl	0x1810 <aw9620x_i2c_write>
		00000000000061f0:  R_AARCH64_CALL26	aw9620x_i2c_write
    61f4: 35000220     	cbnz	w0, 0x6238 <aw9620x_recover_fun+0xbc>
    61f8: 910013e2     	add	x2, sp, #0x4
    61fc: aa1303e0     	mov	x0, x19
    6200: 5288e881     	mov	w1, #0x4744             // =18244
    6204: 97fff63f     	bl	0x3b00 <aw9620x_i2c_read>
		0000000000006204:  R_AARCH64_CALL26	aw9620x_i2c_read
    6208: f9401a61     	ldr	x1, [x19, #0x30]
    620c: 36f802c0     	tbz	w0, #0x1f, 0x6264 <aw9620x_recover_fun+0xe8>
    6210: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006210:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    6214: 91000000     	add	x0, x0, #0x0
		0000000000006214:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    6218: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006218:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x31b9
    621c: 91000042     	add	x2, x2, #0x0
		000000000000621c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x31b9
    6220: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006220:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfaf
    6224: 91000063     	add	x3, x3, #0x0
		0000000000006224:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfaf
    6228: 528071a4     	mov	w4, #0x38d              // =909
    622c: 12800005     	mov	w5, #-0x1               // =-1
    6230: 94000000     	bl	0x6230 <aw9620x_recover_fun+0xb4>
		0000000000006230:  R_AARCH64_CALL26	_dev_printk
    6234: 1400000a     	b	0x625c <aw9620x_recover_fun+0xe0>
    6238: f9401a61     	ldr	x1, [x19, #0x30]
    623c: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000623c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    6240: 91000000     	add	x0, x0, #0x0
		0000000000006240:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    6244: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006244:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x17d8
    6248: 91000042     	add	x2, x2, #0x0
		0000000000006248:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x17d8
    624c: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000624c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfaf
    6250: 91000063     	add	x3, x3, #0x0
		0000000000006250:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfaf
    6254: 528070e4     	mov	w4, #0x387              // =903
    6258: 94000000     	bl	0x6258 <aw9620x_recover_fun+0xdc>
		0000000000006258:  R_AARCH64_CALL26	_dev_printk
    625c: 12800000     	mov	w0, #-0x1               // =-1
    6260: 14000038     	b	0x6340 <aw9620x_recover_fun+0x1c4>
    6264: b94007f5     	ldr	w21, [sp, #0x4]
    6268: 90000016     	adrp	x22, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006268:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x272f
    626c: 910002d6     	add	x22, x22, #0x0
		000000000000626c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x272f
    6270: 90000017     	adrp	x23, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006270:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfaf
    6274: 910002f7     	add	x23, x23, #0x0
		0000000000006274:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfaf
    6278: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006278:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xa5c
    627c: 91000042     	add	x2, x2, #0x0
		000000000000627c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xa5c
    6280: aa1603e0     	mov	x0, x22
    6284: aa1703e3     	mov	x3, x23
    6288: 52807224     	mov	w4, #0x391              // =913
    628c: 2a1503e5     	mov	w5, w21
    6290: 94000000     	bl	0x6290 <aw9620x_recover_fun+0x114>
		0000000000006290:  R_AARCH64_CALL26	_dev_printk
    6294: 53187ea8     	lsr	w8, w21, #24
    6298: f9401a61     	ldr	x1, [x19, #0x30]
    629c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000629c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x31de
    62a0: 91000042     	add	x2, x2, #0x0
		00000000000062a0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x31de
    62a4: aa1603e0     	mov	x0, x22
    62a8: aa1703e3     	mov	x3, x23
    62ac: 7103f91f     	cmp	w8, #0xfe
    62b0: 12005ea8     	and	w8, w21, #0xffffff
    62b4: 528073c4     	mov	w4, #0x39e              // =926
    62b8: 7a409a84     	ccmp	w20, #0x0, #0x4, ls
    62bc: 1a950114     	csel	w20, w8, w21, eq
    62c0: 2a1403e5     	mov	w5, w20
    62c4: 94000000     	bl	0x62c4 <aw9620x_recover_fun+0x148>
		00000000000062c4:  R_AARCH64_CALL26	_dev_printk
    62c8: f9401a61     	ldr	x1, [x19, #0x30]
    62cc: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000062cc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x272f
    62d0: 91000000     	add	x0, x0, #0x0
		00000000000062d0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x272f
    62d4: 6b15029f     	cmp	w20, w21
    62d8: 54000101     	b.ne	0x62f8 <aw9620x_recover_fun+0x17c>
    62dc: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000062dc:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x35a8
    62e0: 91000042     	add	x2, x2, #0x0
		00000000000062e0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x35a8
    62e4: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000062e4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfaf
    62e8: 91000063     	add	x3, x3, #0x0
		00000000000062e8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfaf
    62ec: 528074e4     	mov	w4, #0x3a7              // =935
    62f0: 94000000     	bl	0x62f0 <aw9620x_recover_fun+0x174>
		00000000000062f0:  R_AARCH64_CALL26	_dev_printk
    62f4: 1400000c     	b	0x6324 <aw9620x_recover_fun+0x1a8>
    62f8: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000062f8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3200
    62fc: 91000042     	add	x2, x2, #0x0
		00000000000062fc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3200
    6300: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006300:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfaf
    6304: 91000063     	add	x3, x3, #0x0
		0000000000006304:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfaf
    6308: 52807424     	mov	w4, #0x3a1              // =929
    630c: 94000000     	bl	0x630c <aw9620x_recover_fun+0x190>
		000000000000630c:  R_AARCH64_CALL26	_dev_printk
    6310: aa1303e0     	mov	x0, x19
    6314: 5288e881     	mov	w1, #0x4744             // =18244
    6318: 2a1403e2     	mov	w2, w20
    631c: 97ffed3d     	bl	0x1810 <aw9620x_i2c_write>
		000000000000631c:  R_AARCH64_CALL26	aw9620x_i2c_write
    6320: 350003a0     	cbnz	w0, 0x6394 <aw9620x_recover_fun+0x218>
    6324: 529e0222     	mov	w2, #0xf011             // =61457
    6328: aa1303e0     	mov	x0, x19
    632c: 529fe401     	mov	w1, #0xff20             // =65312
    6330: 72a78002     	movk	w2, #0x3c00, lsl #16
    6334: 97ffed37     	bl	0x1810 <aw9620x_i2c_write>
		0000000000006334:  R_AARCH64_CALL26	aw9620x_i2c_write
    6338: 37f801c0     	tbnz	w0, #0x1f, 0x6370 <aw9620x_recover_fun+0x1f4>
    633c: 2a1f03e0     	mov	w0, wzr
    6340: d5384108     	mrs	x8, SP_EL0
    6344: f9438908     	ldr	x8, [x8, #0x710]
    6348: f94007e9     	ldr	x9, [sp, #0x8]
    634c: eb09011f     	cmp	x8, x9
    6350: 54000341     	b.ne	0x63b8 <aw9620x_recover_fun+0x23c>
    6354: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    6358: f94013f7     	ldr	x23, [sp, #0x20]
    635c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    6360: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6364: 910143ff     	add	sp, sp, #0x50
    6368: d50323bf     	autiasp
    636c: d65f03c0     	ret
    6370: f9401a61     	ldr	x1, [x19, #0x30]
    6374: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006374:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    6378: 91000000     	add	x0, x0, #0x0
		0000000000006378:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    637c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000637c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x322a
    6380: 91000042     	add	x2, x2, #0x0
		0000000000006380:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x322a
    6384: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006384:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfaf
    6388: 91000063     	add	x3, x3, #0x0
		0000000000006388:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfaf
    638c: 52807584     	mov	w4, #0x3ac              // =940
    6390: 17ffffa7     	b	0x622c <aw9620x_recover_fun+0xb0>
    6394: f9401a61     	ldr	x1, [x19, #0x30]
    6398: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006398:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    639c: 91000000     	add	x0, x0, #0x0
		000000000000639c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    63a0: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000063a0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x931
    63a4: 91000042     	add	x2, x2, #0x0
		00000000000063a4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x931
    63a8: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000063a8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfaf
    63ac: 91000063     	add	x3, x3, #0x0
		00000000000063ac:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfaf
    63b0: 52807484     	mov	w4, #0x3a4              // =932
    63b4: 17ffffcf     	b	0x62f0 <aw9620x_recover_fun+0x174>
    63b8: 94000000     	bl	0x63b8 <aw9620x_recover_fun+0x23c>
		00000000000063b8:  R_AARCH64_CALL26	__stack_chk_fail
