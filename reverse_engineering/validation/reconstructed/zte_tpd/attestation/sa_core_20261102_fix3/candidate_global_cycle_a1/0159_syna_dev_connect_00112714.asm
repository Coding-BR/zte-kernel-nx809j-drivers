
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f1a0 <syna_dev_connect>:
   1f1a0: d503233f     	paciasp
   1f1a4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1f1a8: a90157f6     	stp	x22, x21, [sp, #0x10]
   1f1ac: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1f1b0: 910003fd     	mov	x29, sp
   1f1b4: f9400014     	ldr	x20, [x0]
   1f1b8: b4000314     	cbz	x20, 0x1f218 <syna_dev_connect+0x78>
   1f1bc: 39560808     	ldrb	w8, [x0, #0x582]
   1f1c0: aa0003f3     	mov	x19, x0
   1f1c4: 7100051f     	cmp	w8, #0x1
   1f1c8: 54000360     	b.eq	0x1f234 <syna_dev_connect+0x94>
   1f1cc: f9413a75     	ldr	x21, [x19, #0x270]
   1f1d0: f940c2a8     	ldr	x8, [x21, #0x180]
   1f1d4: b40004a8     	cbz	x8, 0x1f268 <syna_dev_connect+0xc8>
   1f1d8: aa1503e0     	mov	x0, x21
   1f1dc: 52800021     	mov	w1, #0x1                // =1
   1f1e0: b85fc110     	ldur	w16, [x8, #-0x4]
   1f1e4: 72850571     	movk	w17, #0x282b
   1f1e8: 72abe611     	movk	w17, #0x5f30, lsl #16
   1f1ec: 6b11021f     	cmp	w16, w17
   1f1f0: 54000040     	b.eq	0x1f1f8 <syna_dev_connect+0x58>
   1f1f4: d4304500     	brk	#0x8228
   1f1f8: d63f0100     	blr	x8
   1f1fc: 36f802e0     	tbz	w0, #0x1f, 0x1f258 <syna_dev_connect+0xb8>
   1f200: 12800240     	mov	w0, #-0x13              // =-19
   1f204: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1f208: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1f20c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1f210: d50323bf     	autiasp
   1f214: d65f03c0     	ret
   1f218: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17985
   1f21c: 91000000     	add	x0, x0, #0x0
		000000000001f21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17985
   1f220: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f224: 91000021     	add	x1, x1, #0x0
		000000000001f224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f228: 94000000     	bl	0x1f228 <syna_dev_connect+0x88>
		000000000001f228:  R_AARCH64_CALL26	_printk
   1f22c: 128002a0     	mov	w0, #-0x16              // =-22
   1f230: 17fffff5     	b	0x1f204 <syna_dev_connect+0x64>
   1f234: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4b4
   1f238: 91000000     	add	x0, x0, #0x0
		000000000001f238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4b4
   1f23c: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f23c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f240: 91000021     	add	x1, x1, #0x0
		000000000001f240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f244: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c8c
   1f248: 91000042     	add	x2, x2, #0x0
		000000000001f248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c8c
   1f24c: 94000000     	bl	0x1f24c <syna_dev_connect+0xac>
		000000000001f24c:  R_AARCH64_CALL26	_printk
   1f250: 2a1f03e0     	mov	w0, wzr
   1f254: 17ffffec     	b	0x1f204 <syna_dev_connect+0x64>
   1f258: b94156a0     	ldr	w0, [x21, #0x154]
   1f25c: 7100041f     	cmp	w0, #0x1
   1f260: 5400004b     	b.lt	0x1f268 <syna_dev_connect+0xc8>
   1f264: 94000000     	bl	0x1f264 <syna_dev_connect+0xc4>
		000000000001f264:  R_AARCH64_CALL26	msleep
   1f268: f940c6a8     	ldr	x8, [x21, #0x188]
   1f26c: b4000128     	cbz	x8, 0x1f290 <syna_dev_connect+0xf0>
   1f270: aa1503e0     	mov	x0, x21
   1f274: b85fc110     	ldur	w16, [x8, #-0x4]
   1f278: 72974371     	movk	w17, #0xba1b
   1f27c: 72a56791     	movk	w17, #0x2b3c, lsl #16
   1f280: 6b11021f     	cmp	w16, w17
   1f284: 54000040     	b.eq	0x1f28c <syna_dev_connect+0xec>
   1f288: d4304500     	brk	#0x8228
   1f28c: d63f0100     	blr	x8
   1f290: f9400260     	ldr	x0, [x19]
   1f294: 52800021     	mov	w1, #0x1                // =1
   1f298: 2a1f03e2     	mov	w2, wzr
   1f29c: 94000000     	bl	0x1f29c <syna_dev_connect+0xfc>
		000000000001f29c:  R_AARCH64_CALL26	syna_tcm_detect_device
   1f2a0: 36f80140     	tbz	w0, #0x1f, 0x1f2c8 <syna_dev_connect+0x128>
   1f2a4: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f2a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1876b
   1f2a8: 91000108     	add	x8, x8, #0x0
		000000000001f2a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1876b
   1f2ac: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f2ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f2b0: 91000021     	add	x1, x1, #0x0
		000000000001f2b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f2b4: 2a0003f3     	mov	w19, w0
   1f2b8: aa0803e0     	mov	x0, x8
   1f2bc: 94000000     	bl	0x1f2bc <syna_dev_connect+0x11c>
		000000000001f2bc:  R_AARCH64_CALL26	_printk
   1f2c0: 2a1303e0     	mov	w0, w19
   1f2c4: 17ffffd0     	b	0x1f204 <syna_dev_connect+0x64>
   1f2c8: 39402682     	ldrb	w2, [x20, #0x9]
   1f2cc: 7100045f     	cmp	w2, #0x1
   1f2d0: 54000261     	b.ne	0x1f31c <syna_dev_connect+0x17c>
   1f2d4: aa1303e0     	mov	x0, x19
   1f2d8: 94000111     	bl	0x1f71c <syna_cdev_ioctls+0x18c>
		000000000001f2d8:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
   1f2dc: 36f80480     	tbz	w0, #0x1f, 0x1f36c <syna_dev_connect+0x1cc>
   1f2e0: 90000015     	adrp	x21, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f2e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f2e4: 910002b5     	add	x21, x21, #0x0
		000000000001f2e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f2e8: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f2e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad97
   1f2ec: 91000000     	add	x0, x0, #0x0
		000000000001f2ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad97
   1f2f0: aa1503e1     	mov	x1, x21
   1f2f4: 94000000     	bl	0x1f2f4 <syna_dev_connect+0x154>
		000000000001f2f4:  R_AARCH64_CALL26	_printk
   1f2f8: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f2f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c639
   1f2fc: 91000000     	add	x0, x0, #0x0
		000000000001f2fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c639
   1f300: aa1503e1     	mov	x1, x21
   1f304: 94000000     	bl	0x1f304 <syna_dev_connect+0x164>
		000000000001f304:  R_AARCH64_CALL26	_printk
   1f308: b941ea82     	ldr	w2, [x20, #0x1e8]
   1f30c: aa1403e0     	mov	x0, x20
   1f310: 52800161     	mov	w1, #0xb                // =11
   1f314: 94000000     	bl	0x1f314 <syna_dev_connect+0x174>
		000000000001f314:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   1f318: 1400001b     	b	0x1f384 <syna_dev_connect+0x1e4>
   1f31c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f31c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d92
   1f320: 91000000     	add	x0, x0, #0x0
		000000000001f320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d92
   1f324: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f328: 91000021     	add	x1, x1, #0x0
		000000000001f328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f32c: 94000000     	bl	0x1f32c <syna_dev_connect+0x18c>
		000000000001f32c:  R_AARCH64_CALL26	_printk
   1f330: 39402688     	ldrb	w8, [x20, #0x9]
   1f334: 71002d1f     	cmp	w8, #0xb
   1f338: 54000261     	b.ne	0x1f384 <syna_dev_connect+0x1e4>
   1f33c: aa1403e0     	mov	x0, x20
   1f340: aa1f03e1     	mov	x1, xzr
   1f344: 52800282     	mov	w2, #0x14               // =20
   1f348: 94000000     	bl	0x1f348 <syna_dev_connect+0x1a8>
		000000000001f348:  R_AARCH64_CALL26	syna_tcm_get_boot_info
   1f34c: 37f801c0     	tbnz	w0, #0x1f, 0x1f384 <syna_dev_connect+0x1e4>
   1f350: 39438682     	ldrb	w2, [x20, #0xe1]
   1f354: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b065
   1f358: 91000000     	add	x0, x0, #0x0
		000000000001f358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b065
   1f35c: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f35c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f360: 91000021     	add	x1, x1, #0x0
		000000000001f360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f364: 94000000     	bl	0x1f364 <syna_dev_connect+0x1c4>
		000000000001f364:  R_AARCH64_CALL26	_printk
   1f368: 14000007     	b	0x1f384 <syna_dev_connect+0x1e4>
   1f36c: aa1303e0     	mov	x0, x19
   1f370: 94000378     	bl	0x20150 <syna_cdev_ioctls+0xbc0>
		000000000001f370:  R_AARCH64_CALL26	syna_dev_set_up_input_device
   1f374: 36f80080     	tbz	w0, #0x1f, 0x1f384 <syna_dev_connect+0x1e4>
   1f378: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4df
   1f37c: 91000108     	add	x8, x8, #0x0
		000000000001f37c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4df
   1f380: 17ffffcb     	b	0x1f2ac <syna_dev_connect+0x10c>
   1f384: 90000002     	adrp	x2, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f384:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_process_unexpected_reset
   1f388: 91000042     	add	x2, x2, #0x0
		000000000001f388:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_process_unexpected_reset
   1f38c: aa1403e0     	mov	x0, x20
   1f390: 52800201     	mov	w1, #0x10               // =16
   1f394: aa1303e3     	mov	x3, x19
   1f398: 94000000     	bl	0x1f398 <syna_dev_connect+0x1f8>
		000000000001f398:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
   1f39c: 36f800c0     	tbz	w0, #0x1f, 0x1f3b4 <syna_dev_connect+0x214>
   1f3a0: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f3a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179a4
   1f3a4: 91000000     	add	x0, x0, #0x0
		000000000001f3a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179a4
   1f3a8: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f3a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f3ac: 91000021     	add	x1, x1, #0x0
		000000000001f3ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f3b0: 94000000     	bl	0x1f3b0 <syna_dev_connect+0x210>
		000000000001f3b0:  R_AARCH64_CALL26	_printk
   1f3b4: f9413a75     	ldr	x21, [x19, #0x270]
   1f3b8: 94000000     	bl	0x1f3b8 <syna_dev_connect+0x218>
		000000000001f3b8:  R_AARCH64_CALL26	syna_request_managed_device
   1f3bc: b50000a0     	cbnz	x0, 0x1f3d0 <syna_dev_connect+0x230>
   1f3c0: 128002b4     	mov	w20, #-0x16             // =-22
   1f3c4: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f3c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1f3c8: 91000000     	add	x0, x0, #0x0
		000000000001f3c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1f3cc: 1400001a     	b	0x1f434 <syna_dev_connect+0x294>
   1f3d0: b940aaa8     	ldr	w8, [x21, #0xa8]
   1f3d4: 36f800a8     	tbz	w8, #0x1f, 0x1f3e8 <syna_dev_connect+0x248>
   1f3d8: 128002b4     	mov	w20, #-0x16             // =-22
   1f3dc: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f3dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b08c
   1f3e0: 91000000     	add	x0, x0, #0x0
		000000000001f3e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b08c
   1f3e4: 14000014     	b	0x1f434 <syna_dev_connect+0x294>
   1f3e8: aa0003f4     	mov	x20, x0
   1f3ec: 2a0803e0     	mov	w0, w8
   1f3f0: 94000000     	bl	0x1f3f0 <syna_dev_connect+0x250>
		000000000001f3f0:  R_AARCH64_CALL26	gpio_to_desc
   1f3f4: 94000000     	bl	0x1f3f4 <syna_dev_connect+0x254>
		000000000001f3f4:  R_AARCH64_CALL26	gpiod_to_irq
   1f3f8: f9405aa4     	ldr	x4, [x21, #0xb0]
   1f3fc: 2a0003e1     	mov	w1, w0
   1f400: b900baa0     	str	w0, [x21, #0xb8]
   1f404: 90000003     	adrp	x3, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f404:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_isr
   1f408: 91000063     	add	x3, x3, #0x0
		000000000001f408:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_isr
   1f40c: 90000005     	adrp	x5, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f40c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c8c
   1f410: 910000a5     	add	x5, x5, #0x0
		000000000001f410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c8c
   1f414: aa1403e0     	mov	x0, x20
   1f418: aa1f03e2     	mov	x2, xzr
   1f41c: aa1303e6     	mov	x6, x19
   1f420: 94000000     	bl	0x1f420 <syna_dev_connect+0x280>
		000000000001f420:  R_AARCH64_CALL26	devm_request_threaded_irq
   1f424: 36f80240     	tbz	w0, #0x1f, 0x1f46c <syna_dev_connect+0x2cc>
   1f428: 2a0003f4     	mov	w20, w0
   1f42c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f42c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be29
   1f430: 91000000     	add	x0, x0, #0x0
		000000000001f430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be29
   1f434: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19039
   1f438: 91000021     	add	x1, x1, #0x0
		000000000001f438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19039
   1f43c: 94000000     	bl	0x1f43c <syna_dev_connect+0x29c>
		000000000001f43c:  R_AARCH64_CALL26	_printk
   1f440: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b759
   1f444: 91000000     	add	x0, x0, #0x0
		000000000001f444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b759
   1f448: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be18
   1f44c: 91000021     	add	x1, x1, #0x0
		000000000001f44c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be18
   1f450: 94000000     	bl	0x1f450 <syna_dev_connect+0x2b0>
		000000000001f450:  R_AARCH64_CALL26	_printk
   1f454: f941da60     	ldr	x0, [x19, #0x3b0]
   1f458: b4000060     	cbz	x0, 0x1f464 <syna_dev_connect+0x2c4>
   1f45c: 94000000     	bl	0x1f45c <syna_dev_connect+0x2bc>
		000000000001f45c:  R_AARCH64_CALL26	input_unregister_device
   1f460: f901da7f     	str	xzr, [x19, #0x3b0]
   1f464: 2a1403e0     	mov	w0, w20
   1f468: 17ffff67     	b	0x1f204 <syna_dev_connect+0x64>
   1f46c: 52800034     	mov	w20, #0x1               // =1
   1f470: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19605
   1f474: 91000000     	add	x0, x0, #0x0
		000000000001f474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19605
   1f478: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19039
   1f47c: 91000021     	add	x1, x1, #0x0
		000000000001f47c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19039
   1f480: 3902f2b4     	strb	w20, [x21, #0xbc]
   1f484: 94000000     	bl	0x1f484 <syna_dev_connect+0x2e4>
		000000000001f484:  R_AARCH64_CALL26	_printk
   1f488: 52800141     	mov	w1, #0xa                // =10
   1f48c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f48c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a3
   1f490: 91000000     	add	x0, x0, #0x0
		000000000001f490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a3
   1f494: 90000003     	adrp	x3, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1badc
   1f498: 91000063     	add	x3, x3, #0x0
		000000000001f498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1badc
   1f49c: 72a000c1     	movk	w1, #0x6, lsl #16
   1f4a0: 52800022     	mov	w2, #0x1                // =1
   1f4a4: 94000000     	bl	0x1f4a4 <syna_dev_connect+0x304>
		000000000001f4a4:  R_AARCH64_CALL26	alloc_workqueue
   1f4a8: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   1f4ac: f9021a60     	str	x0, [x19, #0x430]
   1f4b0: 910f4269     	add	x9, x19, #0x3d0
   1f4b4: f901e668     	str	x8, [x19, #0x3c8]
   1f4b8: 90000008     	adrp	x8, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f4b8:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_reflash_startup_work
   1f4bc: 91000108     	add	x8, x8, #0x0
		000000000001f4bc:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_reflash_startup_work
   1f4c0: 90000001     	adrp	x1, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f4c0:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   1f4c4: 91000021     	add	x1, x1, #0x0
		000000000001f4c4:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   1f4c8: 910fa260     	add	x0, x19, #0x3e8
   1f4cc: 52a00402     	mov	w2, #0x200000           // =2097152
   1f4d0: aa1f03e3     	mov	x3, xzr
   1f4d4: aa1f03e4     	mov	x4, xzr
   1f4d8: f901ea69     	str	x9, [x19, #0x3d0]
   1f4dc: f901ee69     	str	x9, [x19, #0x3d8]
   1f4e0: f901f268     	str	x8, [x19, #0x3e0]
   1f4e4: 94000000     	bl	0x1f4e4 <syna_dev_connect+0x344>
		000000000001f4e4:  R_AARCH64_CALL26	init_timer_key
   1f4e8: f9421a61     	ldr	x1, [x19, #0x430]
   1f4ec: 910f2262     	add	x2, x19, #0x3c8
   1f4f0: 52800400     	mov	w0, #0x20               // =32
   1f4f4: 52800643     	mov	w3, #0x32               // =50
   1f4f8: 94000000     	bl	0x1f4f8 <syna_dev_connect+0x358>
		000000000001f4f8:  R_AARCH64_CALL26	queue_delayed_work_on
   1f4fc: f9400268     	ldr	x8, [x19]
   1f500: b9057e74     	str	w20, [x19, #0x57c]
   1f504: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1adca
   1f508: 91000000     	add	x0, x0, #0x0
		000000000001f508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1adca
   1f50c: 39160a74     	strb	w20, [x19, #0x582]
   1f510: 90000014     	adrp	x20, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1932b
   1f514: 91000294     	add	x20, x20, #0x0
		000000000001f514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1932b
   1f518: f9413a75     	ldr	x21, [x19, #0x270]
   1f51c: 29470d02     	ldp	w2, w3, [x8, #0x38]
   1f520: aa1403e1     	mov	x1, x20
   1f524: 94000000     	bl	0x1f524 <syna_dev_connect+0x384>
		000000000001f524:  R_AARCH64_CALL26	_printk
   1f528: f940c6a8     	ldr	x8, [x21, #0x188]
   1f52c: 90000015     	adrp	x21, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f52c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1933e
   1f530: 910002b5     	add	x21, x21, #0x0
		000000000001f530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1933e
   1f534: 90000016     	adrp	x22, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0ac
   1f538: 910002d6     	add	x22, x22, #0x0
		000000000001f538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0ac
   1f53c: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f53c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d6f
   1f540: 91000000     	add	x0, x0, #0x0
		000000000001f540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d6f
   1f544: f100011f     	cmp	x8, #0x0
   1f548: aa1403e1     	mov	x1, x20
   1f54c: 9a9502c3     	csel	x3, x22, x21, eq
   1f550: aa1503e2     	mov	x2, x21
   1f554: aa1503e4     	mov	x4, x21
   1f558: 94000000     	bl	0x1f558 <syna_dev_connect+0x3b8>
		000000000001f558:  R_AARCH64_CALL26	_printk
   1f55c: 39560668     	ldrb	w8, [x19, #0x581]
   1f560: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b50a
   1f564: 91000000     	add	x0, x0, #0x0
		000000000001f564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b50a
   1f568: aa1403e1     	mov	x1, x20
   1f56c: aa1603e3     	mov	x3, x22
   1f570: aa1503e4     	mov	x4, x21
   1f574: 7100011f     	cmp	w8, #0x0
   1f578: 9a9612a2     	csel	x2, x21, x22, ne
   1f57c: 94000000     	bl	0x1f57c <syna_dev_connect+0x3dc>
		000000000001f57c:  R_AARCH64_CALL26	_printk
   1f580: 90000000     	adrp	x0, 0x1f000 <syna_testing_check_dev_id_show+0x14c>
		000000000001f580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b26b
   1f584: 91000000     	add	x0, x0, #0x0
		000000000001f584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b26b
   1f588: 17ffff2d     	b	0x1f23c <syna_dev_connect+0x9c>
