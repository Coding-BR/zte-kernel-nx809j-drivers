
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e32c <tpd_zlog_register>:
    e32c: d503233f     	paciasp
    e330: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e334: f9000bf5     	str	x21, [sp, #0x10]
    e338: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e33c: 910003fd     	mov	x29, sp
    e340: f9452408     	ldr	x8, [x0, #0xa48]
    e344: b5000408     	cbnz	x8, 0xe3c4 <tpd_zlog_register+0x98>
    e348: aa0003f3     	mov	x19, x0
    e34c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e34c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev
    e350: 91000000     	add	x0, x0, #0x0
		000000000000e350:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev
    e354: 94000000     	bl	0xe354 <tpd_zlog_register+0x28>
		000000000000e354:  R_AARCH64_CALL26	zlog_register_client
    e358: f9052660     	str	x0, [x19, #0xa48]
    e35c: b40003c0     	cbz	x0, 0xe3d4 <tpd_zlog_register+0xa8>
    e360: d503201f     	nop
    e364: 52810000     	mov	w0, #0x800              // =2048
    e368: 94000000     	bl	0xe368 <tpd_zlog_register+0x3c>
		000000000000e368:  R_AARCH64_CALL26	vmalloc_noprof
    e36c: f905f660     	str	x0, [x19, #0xbe8]
    e370: b4000520     	cbz	x0, 0xe414 <tpd_zlog_register+0xe8>
    e374: 39700263     	ldrb	w3, [x19, #0xc00]
    e378: 7103fc7f     	cmp	w3, #0xff
    e37c: 54000160     	b.eq	0xe3a8 <tpd_zlog_register+0x7c>
    e380: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e380:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    e384: f9400108     	ldr	x8, [x8]
		000000000000e384:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    e388: f945f500     	ldr	x0, [x8, #0xbe8]
    e38c: b40000a0     	cbz	x0, 0xe3a0 <tpd_zlog_register+0x74>
    e390: 90000002     	adrp	x2, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b20b
    e394: 91000042     	add	x2, x2, #0x0
		000000000000e394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b20b
    e398: 52810001     	mov	w1, #0x800              // =2048
    e39c: 94000000     	bl	0xe39c <tpd_zlog_register+0x70>
		000000000000e39c:  R_AARCH64_CALL26	snprintf
    e3a0: 528001a0     	mov	w0, #0xd                // =13
    e3a4: 94000000     	bl	0xe3a4 <tpd_zlog_register+0x78>
		000000000000e3a4:  R_AARCH64_CALL26	tpd_zlog_record_notify
    e3a8: 52800028     	mov	w8, #0x1                // =1
    e3ac: 392fc268     	strb	w8, [x19, #0xbf0]
    e3b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e3b4: f9400bf5     	ldr	x21, [sp, #0x10]
    e3b8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e3bc: d50323bf     	autiasp
    e3c0: d65f03c0     	ret
    e3c4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e3c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ab
    e3c8: 91000000     	add	x0, x0, #0x0
		000000000000e3c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ab
    e3cc: 94000000     	bl	0xe3cc <tpd_zlog_register+0xa0>
		000000000000e3cc:  R_AARCH64_CALL26	_printk
    e3d0: 17fffff8     	b	0xe3b0 <tpd_zlog_register+0x84>
    e3d4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e3d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197b9
    e3d8: 91000000     	add	x0, x0, #0x0
		000000000000e3d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197b9
    e3dc: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e3dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c015
    e3e0: 91000021     	add	x1, x1, #0x0
		000000000000e3e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c015
    e3e4: 94000000     	bl	0xe3e4 <tpd_zlog_register+0xb8>
		000000000000e3e4:  R_AARCH64_CALL26	_printk
    e3e8: 17fffff0     	b	0xe3a8 <tpd_zlog_register+0x7c>
    e3ec: d5384114     	mrs	x20, SP_EL0
    e3f0: f9402a95     	ldr	x21, [x20, #0x50]
    e3f4: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e3f4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
    e3f8: 91000108     	add	x8, x8, #0x0
		000000000000e3f8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
    e3fc: 52810000     	mov	w0, #0x800              // =2048
    e400: f9002a88     	str	x8, [x20, #0x50]
    e404: 94000000     	bl	0xe404 <tpd_zlog_register+0xd8>
		000000000000e404:  R_AARCH64_CALL26	vmalloc_noprof
    e408: f9002a95     	str	x21, [x20, #0x50]
    e40c: f905f660     	str	x0, [x19, #0xbe8]
    e410: b5fffb20     	cbnz	x0, 0xe374 <tpd_zlog_register+0x48>
    e414: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b0a
    e418: 91000000     	add	x0, x0, #0x0
		000000000000e418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b0a
    e41c: 94000000     	bl	0xe41c <tpd_zlog_register+0xf0>
		000000000000e41c:  R_AARCH64_CALL26	_printk
    e420: f945f660     	ldr	x0, [x19, #0xbe8]
    e424: 2a1f03e1     	mov	w1, wzr
    e428: 52810002     	mov	w2, #0x800              // =2048
    e42c: 94000000     	bl	0xe42c <tpd_zlog_register+0x100>
		000000000000e42c:  R_AARCH64_CALL26	memset
    e430: 17ffffd1     	b	0xe374 <tpd_zlog_register+0x48>
