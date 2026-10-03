
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000135b0 <tpd_zlog_register>:
   135b0: d503233f     	paciasp
   135b4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   135b8: f9000bf5     	str	x21, [sp, #0x10]
   135bc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   135c0: 910003fd     	mov	x29, sp
   135c4: f9452408     	ldr	x8, [x0, #0xa48]
   135c8: b5000408     	cbnz	x8, 0x13648 <tpd_zlog_register+0x98>
   135cc: aa0003f3     	mov	x19, x0
   135d0: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		00000000000135d0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev
   135d4: 91000000     	add	x0, x0, #0x0
		00000000000135d4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev
   135d8: 94000000     	bl	0x135d8 <tpd_zlog_register+0x28>
		00000000000135d8:  R_AARCH64_CALL26	zlog_register_client
   135dc: f9052660     	str	x0, [x19, #0xa48]
   135e0: b40003c0     	cbz	x0, 0x13658 <tpd_zlog_register+0xa8>
   135e4: d503201f     	nop
   135e8: 52810000     	mov	w0, #0x800              // =2048
   135ec: 94000000     	bl	0x135ec <tpd_zlog_register+0x3c>
		00000000000135ec:  R_AARCH64_CALL26	vmalloc_noprof
   135f0: f905f660     	str	x0, [x19, #0xbe8]
   135f4: b4000520     	cbz	x0, 0x13698 <tpd_zlog_register+0xe8>
   135f8: 39700263     	ldrb	w3, [x19, #0xc00]
   135fc: 7103fc7f     	cmp	w3, #0xff
   13600: 54000160     	b.eq	0x1362c <tpd_zlog_register+0x7c>
   13604: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013604:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   13608: f9400108     	ldr	x8, [x8]
		0000000000013608:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1360c: f945f500     	ldr	x0, [x8, #0xbe8]
   13610: b40000a0     	cbz	x0, 0x13624 <tpd_zlog_register+0x74>
   13614: 90000002     	adrp	x2, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c183
   13618: 91000042     	add	x2, x2, #0x0
		0000000000013618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c183
   1361c: 52810001     	mov	w1, #0x800              // =2048
   13620: 94000000     	bl	0x13620 <tpd_zlog_register+0x70>
		0000000000013620:  R_AARCH64_CALL26	snprintf
   13624: 528001a0     	mov	w0, #0xd                // =13
   13628: 94000000     	bl	0x13628 <tpd_zlog_register+0x78>
		0000000000013628:  R_AARCH64_CALL26	tpd_zlog_record_notify
   1362c: 52800028     	mov	w8, #0x1                // =1
   13630: 392fc268     	strb	w8, [x19, #0xbf0]
   13634: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   13638: f9400bf5     	ldr	x21, [sp, #0x10]
   1363c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13640: d50323bf     	autiasp
   13644: d65f03c0     	ret
   13648: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b466
   1364c: 91000000     	add	x0, x0, #0x0
		000000000001364c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b466
   13650: 94000000     	bl	0x13650 <tpd_zlog_register+0xa0>
		0000000000013650:  R_AARCH64_CALL26	_printk
   13654: 17fffff8     	b	0x13634 <tpd_zlog_register+0x84>
   13658: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a04d
   1365c: 91000000     	add	x0, x0, #0x0
		000000000001365c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a04d
   13660: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d170
   13664: 91000021     	add	x1, x1, #0x0
		0000000000013664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d170
   13668: 94000000     	bl	0x13668 <tpd_zlog_register+0xb8>
		0000000000013668:  R_AARCH64_CALL26	_printk
   1366c: 17fffff0     	b	0x1362c <tpd_zlog_register+0x7c>
   13670: d5384114     	mrs	x20, SP_EL0
   13674: f9402a95     	ldr	x21, [x20, #0x50]
   13678: 90000008     	adrp	x8, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013678:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xf0
   1367c: 91000108     	add	x8, x8, #0x0
		000000000001367c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xf0
   13680: 52810000     	mov	w0, #0x800              // =2048
   13684: f9002a88     	str	x8, [x20, #0x50]
   13688: 94000000     	bl	0x13688 <tpd_zlog_register+0xd8>
		0000000000013688:  R_AARCH64_CALL26	vmalloc_noprof
   1368c: f9002a95     	str	x21, [x20, #0x50]
   13690: f905f660     	str	x0, [x19, #0xbe8]
   13694: b5fffb20     	cbnz	x0, 0x135f8 <tpd_zlog_register+0x48>
   13698: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190e4
   1369c: 91000000     	add	x0, x0, #0x0
		000000000001369c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190e4
   136a0: 94000000     	bl	0x136a0 <tpd_zlog_register+0xf0>
		00000000000136a0:  R_AARCH64_CALL26	_printk
   136a4: f945f660     	ldr	x0, [x19, #0xbe8]
   136a8: 2a1f03e1     	mov	w1, wzr
   136ac: 52810002     	mov	w2, #0x800              // =2048
   136b0: 94000000     	bl	0x136b0 <tpd_zlog_register+0x100>
		00000000000136b0:  R_AARCH64_CALL26	memset
   136b4: 17ffffd1     	b	0x135f8 <tpd_zlog_register+0x48>
