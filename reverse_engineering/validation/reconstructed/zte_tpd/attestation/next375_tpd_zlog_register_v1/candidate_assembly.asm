
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023958 <tpd_zlog_register>:
   23958: d503233f     	paciasp
   2395c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   23960: f9000bf5     	str	x21, [sp, #0x10]
   23964: a9024ff4     	stp	x20, x19, [sp, #0x20]
   23968: 910003fd     	mov	x29, sp
   2396c: f9452408     	ldr	x8, [x0, #0xa48]
   23970: b5000408     	cbnz	x8, 0x239f0 <tpd_zlog_register+0x98>
   23974: aa0003f3     	mov	x19, x0
   23978: 90000000     	adrp	x0, 0x23000 <tpd_zlog_record_notify+0x428>
		0000000000023978:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev
   2397c: 91000000     	add	x0, x0, #0x0
		000000000002397c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev
   23980: 94000000     	bl	0x23980 <tpd_zlog_register+0x28>
		0000000000023980:  R_AARCH64_CALL26	zlog_register_client
   23984: f9052660     	str	x0, [x19, #0xa48]
   23988: b40003c0     	cbz	x0, 0x23a00 <tpd_zlog_register+0xa8>
   2398c: d503201f     	nop
   23990: 52810000     	mov	w0, #0x800              // =2048
   23994: 94000000     	bl	0x23994 <tpd_zlog_register+0x3c>
		0000000000023994:  R_AARCH64_CALL26	vmalloc_noprof
   23998: f905f660     	str	x0, [x19, #0xbe8]
   2399c: b4000520     	cbz	x0, 0x23a40 <tpd_zlog_register+0xe8>
   239a0: 39700263     	ldrb	w3, [x19, #0xc00]
   239a4: 7103fc7f     	cmp	w3, #0xff
   239a8: 54000160     	b.eq	0x239d4 <tpd_zlog_register+0x7c>
   239ac: 90000008     	adrp	x8, 0x23000 <tpd_zlog_record_notify+0x428>
		00000000000239ac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   239b0: f9400108     	ldr	x8, [x8]
		00000000000239b0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   239b4: f945f500     	ldr	x0, [x8, #0xbe8]
   239b8: b40000a0     	cbz	x0, 0x239cc <tpd_zlog_register+0x74>
   239bc: 90000002     	adrp	x2, 0x23000 <tpd_zlog_record_notify+0x428>
		00000000000239bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5416
   239c0: 91000042     	add	x2, x2, #0x0
		00000000000239c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5416
   239c4: 52810001     	mov	w1, #0x800              // =2048
   239c8: 94000000     	bl	0x239c8 <tpd_zlog_register+0x70>
		00000000000239c8:  R_AARCH64_CALL26	snprintf
   239cc: 528001a0     	mov	w0, #0xd                // =13
   239d0: 94000000     	bl	0x239d0 <tpd_zlog_register+0x78>
		00000000000239d0:  R_AARCH64_CALL26	tpd_zlog_record_notify
   239d4: 52800028     	mov	w8, #0x1                // =1
   239d8: 392fc268     	strb	w8, [x19, #0xbf0]
   239dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   239e0: f9400bf5     	ldr	x21, [sp, #0x10]
   239e4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   239e8: d50323bf     	autiasp
   239ec: d65f03c0     	ret
   239f0: 90000000     	adrp	x0, 0x23000 <tpd_zlog_record_notify+0x428>
		00000000000239f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4547
   239f4: 91000000     	add	x0, x0, #0x0
		00000000000239f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4547
   239f8: 94000000     	bl	0x239f8 <tpd_zlog_register+0xa0>
		00000000000239f8:  R_AARCH64_CALL26	_printk
   239fc: 17fffff8     	b	0x239dc <tpd_zlog_register+0x84>
   23a00: 90000000     	adrp	x0, 0x23000 <tpd_zlog_record_notify+0x428>
		0000000000023a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30df
   23a04: 91000000     	add	x0, x0, #0x0
		0000000000023a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30df
   23a08: 90000001     	adrp	x1, 0x23000 <tpd_zlog_record_notify+0x428>
		0000000000023a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x671f
   23a0c: 91000021     	add	x1, x1, #0x0
		0000000000023a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x671f
   23a10: 94000000     	bl	0x23a10 <tpd_zlog_register+0xb8>
		0000000000023a10:  R_AARCH64_CALL26	_printk
   23a14: 17fffff0     	b	0x239d4 <tpd_zlog_register+0x7c>
   23a18: d5384114     	mrs	x20, SP_EL0
   23a1c: f9402a95     	ldr	x21, [x20, #0x50]
   23a20: 90000008     	adrp	x8, 0x23000 <tpd_zlog_record_notify+0x428>
		0000000000023a20:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x2a8
   23a24: 91000108     	add	x8, x8, #0x0
		0000000000023a24:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x2a8
   23a28: 52810000     	mov	w0, #0x800              // =2048
   23a2c: f9002a88     	str	x8, [x20, #0x50]
   23a30: 94000000     	bl	0x23a30 <tpd_zlog_register+0xd8>
		0000000000023a30:  R_AARCH64_CALL26	vmalloc_noprof
   23a34: f9002a95     	str	x21, [x20, #0x50]
   23a38: f905f660     	str	x0, [x19, #0xbe8]
   23a3c: b5fffb20     	cbnz	x0, 0x239a0 <tpd_zlog_register+0x48>
   23a40: 90000000     	adrp	x0, 0x23000 <tpd_zlog_record_notify+0x428>
		0000000000023a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21df
   23a44: 91000000     	add	x0, x0, #0x0
		0000000000023a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21df
   23a48: 94000000     	bl	0x23a48 <tpd_zlog_register+0xf0>
		0000000000023a48:  R_AARCH64_CALL26	_printk
   23a4c: f945f660     	ldr	x0, [x19, #0xbe8]
   23a50: 2a1f03e1     	mov	w1, wzr
   23a54: 52810002     	mov	w2, #0x800              // =2048
   23a58: 94000000     	bl	0x23a58 <tpd_zlog_register+0x100>
		0000000000023a58:  R_AARCH64_CALL26	memset
   23a5c: 17ffffd1     	b	0x239a0 <tpd_zlog_register+0x48>
