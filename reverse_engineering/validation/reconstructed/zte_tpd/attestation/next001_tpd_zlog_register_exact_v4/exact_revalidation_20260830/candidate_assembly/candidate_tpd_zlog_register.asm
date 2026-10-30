
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e2d0 <tpd_zlog_register>:
    e2d0: d503233f     	paciasp
    e2d4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e2d8: f9000bf5     	str	x21, [sp, #0x10]
    e2dc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e2e0: 910003fd     	mov	x29, sp
    e2e4: f9452408     	ldr	x8, [x0, #0xa48]
    e2e8: b5000408     	cbnz	x8, 0xe368 <tpd_zlog_register+0x98>
    e2ec: aa0003f3     	mov	x19, x0
    e2f0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e2f0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev
    e2f4: 91000000     	add	x0, x0, #0x0
		000000000000e2f4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev
    e2f8: 94000000     	bl	0xe2f8 <tpd_zlog_register+0x28>
		000000000000e2f8:  R_AARCH64_CALL26	zlog_register_client
    e2fc: f9052660     	str	x0, [x19, #0xa48]
    e300: b40003c0     	cbz	x0, 0xe378 <tpd_zlog_register+0xa8>
    e304: d503201f     	nop
    e308: 52810000     	mov	w0, #0x800              // =2048
    e30c: 94000000     	bl	0xe30c <tpd_zlog_register+0x3c>
		000000000000e30c:  R_AARCH64_CALL26	vmalloc_noprof
    e310: f905f660     	str	x0, [x19, #0xbe8]
    e314: b4000520     	cbz	x0, 0xe3b8 <tpd_zlog_register+0xe8>
    e318: 39700263     	ldrb	w3, [x19, #0xc00]
    e31c: 7103fc7f     	cmp	w3, #0xff
    e320: 54000160     	b.eq	0xe34c <tpd_zlog_register+0x7c>
    e324: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e324:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e328: f9400108     	ldr	x8, [x8]
		000000000000e328:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e32c: f945f500     	ldr	x0, [x8, #0xbe8]
    e330: b40000a0     	cbz	x0, 0xe344 <tpd_zlog_register+0x74>
    e334: 90000002     	adrp	x2, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b20b
    e338: 91000042     	add	x2, x2, #0x0
		000000000000e338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b20b
    e33c: 52810001     	mov	w1, #0x800              // =2048
    e340: 94000000     	bl	0xe340 <tpd_zlog_register+0x70>
		000000000000e340:  R_AARCH64_CALL26	snprintf
    e344: 528001a0     	mov	w0, #0xd                // =13
    e348: 94000000     	bl	0xe348 <tpd_zlog_register+0x78>
		000000000000e348:  R_AARCH64_CALL26	tpd_zlog_record_notify
    e34c: 52800028     	mov	w8, #0x1                // =1
    e350: 392fc268     	strb	w8, [x19, #0xbf0]
    e354: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e358: f9400bf5     	ldr	x21, [sp, #0x10]
    e35c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e360: d50323bf     	autiasp
    e364: d65f03c0     	ret
    e368: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ab
    e36c: 91000000     	add	x0, x0, #0x0
		000000000000e36c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ab
    e370: 94000000     	bl	0xe370 <tpd_zlog_register+0xa0>
		000000000000e370:  R_AARCH64_CALL26	_printk
    e374: 17fffff8     	b	0xe354 <tpd_zlog_register+0x84>
    e378: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197b9
    e37c: 91000000     	add	x0, x0, #0x0
		000000000000e37c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197b9
    e380: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c015
    e384: 91000021     	add	x1, x1, #0x0
		000000000000e384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c015
    e388: 94000000     	bl	0xe388 <tpd_zlog_register+0xb8>
		000000000000e388:  R_AARCH64_CALL26	_printk
    e38c: 17fffff0     	b	0xe34c <tpd_zlog_register+0x7c>
    e390: d5384114     	mrs	x20, SP_EL0
    e394: f9402a95     	ldr	x21, [x20, #0x50]
    e398: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e398:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
    e39c: 91000108     	add	x8, x8, #0x0
		000000000000e39c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
    e3a0: 52810000     	mov	w0, #0x800              // =2048
    e3a4: f9002a88     	str	x8, [x20, #0x50]
    e3a8: 94000000     	bl	0xe3a8 <tpd_zlog_register+0xd8>
		000000000000e3a8:  R_AARCH64_CALL26	vmalloc_noprof
    e3ac: f9002a95     	str	x21, [x20, #0x50]
    e3b0: f905f660     	str	x0, [x19, #0xbe8]
    e3b4: b5fffb20     	cbnz	x0, 0xe318 <tpd_zlog_register+0x48>
    e3b8: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e3b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b0a
    e3bc: 91000000     	add	x0, x0, #0x0
		000000000000e3bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b0a
    e3c0: 94000000     	bl	0xe3c0 <tpd_zlog_register+0xf0>
		000000000000e3c0:  R_AARCH64_CALL26	_printk
    e3c4: f945f660     	ldr	x0, [x19, #0xbe8]
    e3c8: 2a1f03e1     	mov	w1, wzr
    e3cc: 52810002     	mov	w2, #0x800              // =2048
    e3d0: 94000000     	bl	0xe3d0 <tpd_zlog_register+0x100>
		000000000000e3d0:  R_AARCH64_CALL26	memset
    e3d4: 17ffffd1     	b	0xe318 <tpd_zlog_register+0x48>
