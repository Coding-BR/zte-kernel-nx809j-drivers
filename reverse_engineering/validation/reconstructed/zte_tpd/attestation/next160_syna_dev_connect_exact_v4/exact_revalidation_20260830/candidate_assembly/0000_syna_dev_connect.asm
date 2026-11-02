
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f144 <syna_dev_connect>:
   1f144: d503233f     	paciasp
   1f148: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1f14c: a90157f6     	stp	x22, x21, [sp, #0x10]
   1f150: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1f154: 910003fd     	mov	x29, sp
   1f158: f9400014     	ldr	x20, [x0]
   1f15c: b4000314     	cbz	x20, 0x1f1bc <syna_dev_connect+0x78>
   1f160: 39560808     	ldrb	w8, [x0, #0x582]
   1f164: aa0003f3     	mov	x19, x0
   1f168: 7100051f     	cmp	w8, #0x1
   1f16c: 54000360     	b.eq	0x1f1d8 <syna_dev_connect+0x94>
   1f170: f9413a75     	ldr	x21, [x19, #0x270]
   1f174: f940c2a8     	ldr	x8, [x21, #0x180]
   1f178: b40004a8     	cbz	x8, 0x1f20c <syna_dev_connect+0xc8>
   1f17c: aa1503e0     	mov	x0, x21
   1f180: 52800021     	mov	w1, #0x1                // =1
   1f184: b85fc110     	ldur	w16, [x8, #-0x4]
   1f188: 72850571     	movk	w17, #0x282b
   1f18c: 72abe611     	movk	w17, #0x5f30, lsl #16
   1f190: 6b11021f     	cmp	w16, w17
   1f194: 54000040     	b.eq	0x1f19c <syna_dev_connect+0x58>
   1f198: d4304500     	brk	#0x8228
   1f19c: d63f0100     	blr	x8
   1f1a0: 36f802e0     	tbz	w0, #0x1f, 0x1f1fc <syna_dev_connect+0xb8>
   1f1a4: 12800240     	mov	w0, #-0x13              // =-19
   1f1a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1f1ac: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1f1b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1f1b4: d50323bf     	autiasp
   1f1b8: d65f03c0     	ret
   1f1bc: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f1bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17985
   1f1c0: 91000000     	add	x0, x0, #0x0
		000000000001f1c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17985
   1f1c4: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f1c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f1c8: 91000021     	add	x1, x1, #0x0
		000000000001f1c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f1cc: 94000000     	bl	0x1f1cc <syna_dev_connect+0x88>
		000000000001f1cc:  R_AARCH64_CALL26	_printk
   1f1d0: 128002a0     	mov	w0, #-0x16              // =-22
   1f1d4: 17fffff5     	b	0x1f1a8 <syna_dev_connect+0x64>
   1f1d8: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f1d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4b4
   1f1dc: 91000000     	add	x0, x0, #0x0
		000000000001f1dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4b4
   1f1e0: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f1e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f1e4: 91000021     	add	x1, x1, #0x0
		000000000001f1e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f1e8: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f1e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c8c
   1f1ec: 91000042     	add	x2, x2, #0x0
		000000000001f1ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c8c
   1f1f0: 94000000     	bl	0x1f1f0 <syna_dev_connect+0xac>
		000000000001f1f0:  R_AARCH64_CALL26	_printk
   1f1f4: 2a1f03e0     	mov	w0, wzr
   1f1f8: 17ffffec     	b	0x1f1a8 <syna_dev_connect+0x64>
   1f1fc: b94156a0     	ldr	w0, [x21, #0x154]
   1f200: 7100041f     	cmp	w0, #0x1
   1f204: 5400004b     	b.lt	0x1f20c <syna_dev_connect+0xc8>
   1f208: 94000000     	bl	0x1f208 <syna_dev_connect+0xc4>
		000000000001f208:  R_AARCH64_CALL26	msleep
   1f20c: f940c6a8     	ldr	x8, [x21, #0x188]
   1f210: b4000128     	cbz	x8, 0x1f234 <syna_dev_connect+0xf0>
   1f214: aa1503e0     	mov	x0, x21
   1f218: b85fc110     	ldur	w16, [x8, #-0x4]
   1f21c: 72974371     	movk	w17, #0xba1b
   1f220: 72a56791     	movk	w17, #0x2b3c, lsl #16
   1f224: 6b11021f     	cmp	w16, w17
   1f228: 54000040     	b.eq	0x1f230 <syna_dev_connect+0xec>
   1f22c: d4304500     	brk	#0x8228
   1f230: d63f0100     	blr	x8
   1f234: f9400260     	ldr	x0, [x19]
   1f238: 52800021     	mov	w1, #0x1                // =1
   1f23c: 2a1f03e2     	mov	w2, wzr
   1f240: 94000000     	bl	0x1f240 <syna_dev_connect+0xfc>
		000000000001f240:  R_AARCH64_CALL26	syna_tcm_detect_device
   1f244: 36f80140     	tbz	w0, #0x1f, 0x1f26c <syna_dev_connect+0x128>
   1f248: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1876b
   1f24c: 91000108     	add	x8, x8, #0x0
		000000000001f24c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1876b
   1f250: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f254: 91000021     	add	x1, x1, #0x0
		000000000001f254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f258: 2a0003f3     	mov	w19, w0
   1f25c: aa0803e0     	mov	x0, x8
   1f260: 94000000     	bl	0x1f260 <syna_dev_connect+0x11c>
		000000000001f260:  R_AARCH64_CALL26	_printk
   1f264: 2a1303e0     	mov	w0, w19
   1f268: 17ffffd0     	b	0x1f1a8 <syna_dev_connect+0x64>
   1f26c: 39402682     	ldrb	w2, [x20, #0x9]
   1f270: 7100045f     	cmp	w2, #0x1
   1f274: 54000261     	b.ne	0x1f2c0 <syna_dev_connect+0x17c>
   1f278: aa1303e0     	mov	x0, x19
   1f27c: 94000111     	bl	0x1f6c0 <syna_cdev_ioctls+0x18c>
		000000000001f27c:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
   1f280: 36f80480     	tbz	w0, #0x1f, 0x1f310 <syna_dev_connect+0x1cc>
   1f284: 90000015     	adrp	x21, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f288: 910002b5     	add	x21, x21, #0x0
		000000000001f288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f28c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f28c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad97
   1f290: 91000000     	add	x0, x0, #0x0
		000000000001f290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad97
   1f294: aa1503e1     	mov	x1, x21
   1f298: 94000000     	bl	0x1f298 <syna_dev_connect+0x154>
		000000000001f298:  R_AARCH64_CALL26	_printk
   1f29c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f29c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c620
   1f2a0: 91000000     	add	x0, x0, #0x0
		000000000001f2a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c620
   1f2a4: aa1503e1     	mov	x1, x21
   1f2a8: 94000000     	bl	0x1f2a8 <syna_dev_connect+0x164>
		000000000001f2a8:  R_AARCH64_CALL26	_printk
   1f2ac: b941ea82     	ldr	w2, [x20, #0x1e8]
   1f2b0: aa1403e0     	mov	x0, x20
   1f2b4: 52800161     	mov	w1, #0xb                // =11
   1f2b8: 94000000     	bl	0x1f2b8 <syna_dev_connect+0x174>
		000000000001f2b8:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   1f2bc: 1400001b     	b	0x1f328 <syna_dev_connect+0x1e4>
   1f2c0: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f2c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d92
   1f2c4: 91000000     	add	x0, x0, #0x0
		000000000001f2c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d92
   1f2c8: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f2c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f2cc: 91000021     	add	x1, x1, #0x0
		000000000001f2cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f2d0: 94000000     	bl	0x1f2d0 <syna_dev_connect+0x18c>
		000000000001f2d0:  R_AARCH64_CALL26	_printk
   1f2d4: 39402688     	ldrb	w8, [x20, #0x9]
   1f2d8: 71002d1f     	cmp	w8, #0xb
   1f2dc: 54000261     	b.ne	0x1f328 <syna_dev_connect+0x1e4>
   1f2e0: aa1403e0     	mov	x0, x20
   1f2e4: aa1f03e1     	mov	x1, xzr
   1f2e8: 52800282     	mov	w2, #0x14               // =20
   1f2ec: 94000000     	bl	0x1f2ec <syna_dev_connect+0x1a8>
		000000000001f2ec:  R_AARCH64_CALL26	syna_tcm_get_boot_info
   1f2f0: 37f801c0     	tbnz	w0, #0x1f, 0x1f328 <syna_dev_connect+0x1e4>
   1f2f4: 39438682     	ldrb	w2, [x20, #0xe1]
   1f2f8: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f2f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b065
   1f2fc: 91000000     	add	x0, x0, #0x0
		000000000001f2fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b065
   1f300: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f304: 91000021     	add	x1, x1, #0x0
		000000000001f304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f308: 94000000     	bl	0x1f308 <syna_dev_connect+0x1c4>
		000000000001f308:  R_AARCH64_CALL26	_printk
   1f30c: 14000007     	b	0x1f328 <syna_dev_connect+0x1e4>
   1f310: aa1303e0     	mov	x0, x19
   1f314: 94000378     	bl	0x200f4 <syna_cdev_ioctls+0xbc0>
		000000000001f314:  R_AARCH64_CALL26	syna_dev_set_up_input_device
   1f318: 36f80080     	tbz	w0, #0x1f, 0x1f328 <syna_dev_connect+0x1e4>
   1f31c: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f31c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4df
   1f320: 91000108     	add	x8, x8, #0x0
		000000000001f320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4df
   1f324: 17ffffcb     	b	0x1f250 <syna_dev_connect+0x10c>
   1f328: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f328:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_process_unexpected_reset
   1f32c: 91000042     	add	x2, x2, #0x0
		000000000001f32c:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_process_unexpected_reset
   1f330: aa1403e0     	mov	x0, x20
   1f334: 52800201     	mov	w1, #0x10               // =16
   1f338: aa1303e3     	mov	x3, x19
   1f33c: 94000000     	bl	0x1f33c <syna_dev_connect+0x1f8>
		000000000001f33c:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
   1f340: 36f800c0     	tbz	w0, #0x1f, 0x1f358 <syna_dev_connect+0x214>
   1f344: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179a4
   1f348: 91000000     	add	x0, x0, #0x0
		000000000001f348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179a4
   1f34c: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f34c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f350: 91000021     	add	x1, x1, #0x0
		000000000001f350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f354: 94000000     	bl	0x1f354 <syna_dev_connect+0x210>
		000000000001f354:  R_AARCH64_CALL26	_printk
   1f358: f9413a75     	ldr	x21, [x19, #0x270]
   1f35c: 94000000     	bl	0x1f35c <syna_dev_connect+0x218>
		000000000001f35c:  R_AARCH64_CALL26	syna_request_managed_device
   1f360: b50000a0     	cbnz	x0, 0x1f374 <syna_dev_connect+0x230>
   1f364: 128002b4     	mov	w20, #-0x16             // =-22
   1f368: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1f36c: 91000000     	add	x0, x0, #0x0
		000000000001f36c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1f370: 1400001a     	b	0x1f3d8 <syna_dev_connect+0x294>
   1f374: b940aaa8     	ldr	w8, [x21, #0xa8]
   1f378: 36f800a8     	tbz	w8, #0x1f, 0x1f38c <syna_dev_connect+0x248>
   1f37c: 128002b4     	mov	w20, #-0x16             // =-22
   1f380: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b08c
   1f384: 91000000     	add	x0, x0, #0x0
		000000000001f384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b08c
   1f388: 14000014     	b	0x1f3d8 <syna_dev_connect+0x294>
   1f38c: aa0003f4     	mov	x20, x0
   1f390: 2a0803e0     	mov	w0, w8
   1f394: 94000000     	bl	0x1f394 <syna_dev_connect+0x250>
		000000000001f394:  R_AARCH64_CALL26	gpio_to_desc
   1f398: 94000000     	bl	0x1f398 <syna_dev_connect+0x254>
		000000000001f398:  R_AARCH64_CALL26	gpiod_to_irq
   1f39c: f9405aa4     	ldr	x4, [x21, #0xb0]
   1f3a0: 2a0003e1     	mov	w1, w0
   1f3a4: b900baa0     	str	w0, [x21, #0xb8]
   1f3a8: 90000003     	adrp	x3, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f3a8:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_isr
   1f3ac: 91000063     	add	x3, x3, #0x0
		000000000001f3ac:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_isr
   1f3b0: 90000005     	adrp	x5, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f3b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c8c
   1f3b4: 910000a5     	add	x5, x5, #0x0
		000000000001f3b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c8c
   1f3b8: aa1403e0     	mov	x0, x20
   1f3bc: aa1f03e2     	mov	x2, xzr
   1f3c0: aa1303e6     	mov	x6, x19
   1f3c4: 94000000     	bl	0x1f3c4 <syna_dev_connect+0x280>
		000000000001f3c4:  R_AARCH64_CALL26	devm_request_threaded_irq
   1f3c8: 36f80240     	tbz	w0, #0x1f, 0x1f410 <syna_dev_connect+0x2cc>
   1f3cc: 2a0003f4     	mov	w20, w0
   1f3d0: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f3d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be29
   1f3d4: 91000000     	add	x0, x0, #0x0
		000000000001f3d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be29
   1f3d8: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f3d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19039
   1f3dc: 91000021     	add	x1, x1, #0x0
		000000000001f3dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19039
   1f3e0: 94000000     	bl	0x1f3e0 <syna_dev_connect+0x29c>
		000000000001f3e0:  R_AARCH64_CALL26	_printk
   1f3e4: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f3e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b759
   1f3e8: 91000000     	add	x0, x0, #0x0
		000000000001f3e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b759
   1f3ec: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f3ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f3f0: 91000021     	add	x1, x1, #0x0
		000000000001f3f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f3f4: 94000000     	bl	0x1f3f4 <syna_dev_connect+0x2b0>
		000000000001f3f4:  R_AARCH64_CALL26	_printk
   1f3f8: f941da60     	ldr	x0, [x19, #0x3b0]
   1f3fc: b4000060     	cbz	x0, 0x1f408 <syna_dev_connect+0x2c4>
   1f400: 94000000     	bl	0x1f400 <syna_dev_connect+0x2bc>
		000000000001f400:  R_AARCH64_CALL26	input_unregister_device
   1f404: f901da7f     	str	xzr, [x19, #0x3b0]
   1f408: 2a1403e0     	mov	w0, w20
   1f40c: 17ffff67     	b	0x1f1a8 <syna_dev_connect+0x64>
   1f410: 52800034     	mov	w20, #0x1               // =1
   1f414: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19605
   1f418: 91000000     	add	x0, x0, #0x0
		000000000001f418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19605
   1f41c: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f41c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19039
   1f420: 91000021     	add	x1, x1, #0x0
		000000000001f420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19039
   1f424: 3902f2b4     	strb	w20, [x21, #0xbc]
   1f428: 94000000     	bl	0x1f428 <syna_dev_connect+0x2e4>
		000000000001f428:  R_AARCH64_CALL26	_printk
   1f42c: 52800141     	mov	w1, #0xa                // =10
   1f430: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a3
   1f434: 91000000     	add	x0, x0, #0x0
		000000000001f434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a3
   1f438: 90000003     	adrp	x3, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1badc
   1f43c: 91000063     	add	x3, x3, #0x0
		000000000001f43c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1badc
   1f440: 72a000c1     	movk	w1, #0x6, lsl #16
   1f444: 52800022     	mov	w2, #0x1                // =1
   1f448: 94000000     	bl	0x1f448 <syna_dev_connect+0x304>
		000000000001f448:  R_AARCH64_CALL26	alloc_workqueue
   1f44c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   1f450: f9021a60     	str	x0, [x19, #0x430]
   1f454: 910f4269     	add	x9, x19, #0x3d0
   1f458: f901e668     	str	x8, [x19, #0x3c8]
   1f45c: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f45c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_reflash_startup_work
   1f460: 91000108     	add	x8, x8, #0x0
		000000000001f460:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_reflash_startup_work
   1f464: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f464:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   1f468: 91000021     	add	x1, x1, #0x0
		000000000001f468:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   1f46c: 910fa260     	add	x0, x19, #0x3e8
   1f470: 52a00402     	mov	w2, #0x200000           // =2097152
   1f474: aa1f03e3     	mov	x3, xzr
   1f478: aa1f03e4     	mov	x4, xzr
   1f47c: f901ea69     	str	x9, [x19, #0x3d0]
   1f480: f901ee69     	str	x9, [x19, #0x3d8]
   1f484: f901f268     	str	x8, [x19, #0x3e0]
   1f488: 94000000     	bl	0x1f488 <syna_dev_connect+0x344>
		000000000001f488:  R_AARCH64_CALL26	init_timer_key
   1f48c: f9421a61     	ldr	x1, [x19, #0x430]
   1f490: 910f2262     	add	x2, x19, #0x3c8
   1f494: 52800400     	mov	w0, #0x20               // =32
   1f498: 52800643     	mov	w3, #0x32               // =50
   1f49c: 94000000     	bl	0x1f49c <syna_dev_connect+0x358>
		000000000001f49c:  R_AARCH64_CALL26	queue_delayed_work_on
   1f4a0: f9400268     	ldr	x8, [x19]
   1f4a4: b9057e74     	str	w20, [x19, #0x57c]
   1f4a8: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f4a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1adca
   1f4ac: 91000000     	add	x0, x0, #0x0
		000000000001f4ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1adca
   1f4b0: 39160a74     	strb	w20, [x19, #0x582]
   1f4b4: 90000014     	adrp	x20, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f4b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1932b
   1f4b8: 91000294     	add	x20, x20, #0x0
		000000000001f4b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1932b
   1f4bc: f9413a75     	ldr	x21, [x19, #0x270]
   1f4c0: 29470d02     	ldp	w2, w3, [x8, #0x38]
   1f4c4: aa1403e1     	mov	x1, x20
   1f4c8: 94000000     	bl	0x1f4c8 <syna_dev_connect+0x384>
		000000000001f4c8:  R_AARCH64_CALL26	_printk
   1f4cc: f940c6a8     	ldr	x8, [x21, #0x188]
   1f4d0: 90000015     	adrp	x21, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f4d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1933e
   1f4d4: 910002b5     	add	x21, x21, #0x0
		000000000001f4d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1933e
   1f4d8: 90000016     	adrp	x22, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f4d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0ac
   1f4dc: 910002d6     	add	x22, x22, #0x0
		000000000001f4dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0ac
   1f4e0: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d6f
   1f4e4: 91000000     	add	x0, x0, #0x0
		000000000001f4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d6f
   1f4e8: f100011f     	cmp	x8, #0x0
   1f4ec: aa1403e1     	mov	x1, x20
   1f4f0: 9a9502c3     	csel	x3, x22, x21, eq
   1f4f4: aa1503e2     	mov	x2, x21
   1f4f8: aa1503e4     	mov	x4, x21
   1f4fc: 94000000     	bl	0x1f4fc <syna_dev_connect+0x3b8>
		000000000001f4fc:  R_AARCH64_CALL26	_printk
   1f500: 39560668     	ldrb	w8, [x19, #0x581]
   1f504: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b50a
   1f508: 91000000     	add	x0, x0, #0x0
		000000000001f508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b50a
   1f50c: aa1403e1     	mov	x1, x20
   1f510: aa1603e3     	mov	x3, x22
   1f514: aa1503e4     	mov	x4, x21
   1f518: 7100011f     	cmp	w8, #0x0
   1f51c: 9a9612a2     	csel	x2, x21, x22, ne
   1f520: 94000000     	bl	0x1f520 <syna_dev_connect+0x3dc>
		000000000001f520:  R_AARCH64_CALL26	_printk
   1f524: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x1a8>
		000000000001f524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b26b
   1f528: 91000000     	add	x0, x0, #0x0
		000000000001f528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b26b
   1f52c: 17ffff2d     	b	0x1f1e0 <syna_dev_connect+0x9c>
