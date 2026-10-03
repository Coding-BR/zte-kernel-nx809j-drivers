
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <tpd_zlog_register>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: f9452408     	ldr	x8, [x0, #0xa48]
      1c: b5000408     	cbnz	x8, 0x9c <tpd_zlog_register+0x98>
      20: aa0003f3     	mov	x19, x0
      24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	zlog_tp_dev
      28: 91000000     	add	x0, x0, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	zlog_tp_dev
      2c: 94000000     	bl	0x2c <tpd_zlog_register+0x28>
		000000000000002c:  R_AARCH64_CALL26	zlog_register_client
      30: f9052660     	str	x0, [x19, #0xa48]
      34: b40003c0     	cbz	x0, 0xac <tpd_zlog_register+0xa8>
      38: d503201f     	nop
      3c: 52810000     	mov	w0, #0x800              // =2048
      40: 94000000     	bl	0x40 <tpd_zlog_register+0x3c>
		0000000000000040:  R_AARCH64_CALL26	vmalloc_noprof
      44: f905f660     	str	x0, [x19, #0xbe8]
      48: b4000520     	cbz	x0, 0xec <tpd_zlog_register+0xe8>
      4c: 39700263     	ldrb	w3, [x19, #0xc00]
      50: 7103fc7f     	cmp	w3, #0xff
      54: 54000160     	b.eq	0x80 <tpd_zlog_register+0x7c>
      58: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000058:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
      5c: f9400108     	ldr	x8, [x8]
		000000000000005c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
      60: f945f500     	ldr	x0, [x8, #0xbe8]
      64: b40000a0     	cbz	x0, 0x78 <tpd_zlog_register+0x74>
      68: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a40
      6c: 91000042     	add	x2, x2, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a40
      70: 52810001     	mov	w1, #0x800              // =2048
      74: 94000000     	bl	0x74 <tpd_zlog_register+0x70>
		0000000000000074:  R_AARCH64_CALL26	snprintf
      78: 528001a0     	mov	w0, #0xd                // =13
      7c: 94000000     	bl	0x7c <tpd_zlog_register+0x78>
		000000000000007c:  R_AARCH64_CALL26	tpd_zlog_record_notify
      80: 52800028     	mov	w8, #0x1                // =1
      84: 392fc268     	strb	w8, [x19, #0xbf0]
      88: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      8c: f9400bf5     	ldr	x21, [sp, #0x10]
      90: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      94: d50323bf     	autiasp
      98: d65f03c0     	ret
      9c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x72a8
      a0: 91000000     	add	x0, x0, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x72a8
      a4: 94000000     	bl	0xa4 <tpd_zlog_register+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	_printk
      a8: 17fffff8     	b	0x88 <tpd_zlog_register+0x84>
      ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ffd
      b0: 91000000     	add	x0, x0, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ffd
      b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab2d
      b8: 91000021     	add	x1, x1, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab2d
      bc: 94000000     	bl	0xbc <tpd_zlog_register+0xb8>
		00000000000000bc:  R_AARCH64_CALL26	_printk
      c0: 17fffff0     	b	0x80 <tpd_zlog_register+0x7c>
      c4: d5384114     	mrs	x20, SP_EL0
      c8: f9402a95     	ldr	x21, [x20, #0x50]
      cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
      d0: 91000108     	add	x8, x8, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
      d4: 52810000     	mov	w0, #0x800              // =2048
      d8: f9002a88     	str	x8, [x20, #0x50]
      dc: 94000000     	bl	0xdc <tpd_zlog_register+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	vmalloc_noprof
      e0: f9002a95     	str	x21, [x20, #0x50]
      e4: f905f660     	str	x0, [x19, #0xbe8]
      e8: b5fffb20     	cbnz	x0, 0x4c <tpd_zlog_register+0x48>
      ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3021
      f0: 91000000     	add	x0, x0, #0x0
		00000000000000f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3021
      f4: 94000000     	bl	0xf4 <tpd_zlog_register+0xf0>
		00000000000000f4:  R_AARCH64_CALL26	_printk
      f8: f945f660     	ldr	x0, [x19, #0xbe8]
      fc: 2a1f03e1     	mov	w1, wzr
     100: 52810002     	mov	w2, #0x800              // =2048
     104: 94000000     	bl	0x104 <tpd_zlog_register+0x100>
		0000000000000104:  R_AARCH64_CALL26	memset
     108: 17ffffd1     	b	0x4c <tpd_zlog_register+0x48>
