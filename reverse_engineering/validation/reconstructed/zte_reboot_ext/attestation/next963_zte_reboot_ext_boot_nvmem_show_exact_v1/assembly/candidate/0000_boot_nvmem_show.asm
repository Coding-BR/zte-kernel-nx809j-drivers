
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <boot_nvmem_show>:
       4: d503233f     	paciasp
       8: d10183ff     	sub	sp, sp, #0x60
       c: a9057bfd     	stp	x29, x30, [sp, #0x50]
      10: 910143fd     	add	x29, sp, #0x50
      14: d5384108     	mrs	x8, SP_EL0
      18: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf
      1c: 9100014a     	add	x10, x10, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	read_nvmem_buf
      20: f9438908     	ldr	x8, [x8, #0x710]
      24: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	_ctype
      28: 91000129     	add	x9, x9, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	_ctype
      2c: 5280054b     	mov	w11, #0x2a              // =42
      30: aa0203e0     	mov	x0, x2
      34: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ad
      38: 91000042     	add	x2, x2, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ad
      3c: f81f83a8     	stur	x8, [x29, #-0x8]
      40: 528012e8     	mov	w8, #0x97               // =151
      44: 3940014c     	ldrb	w12, [x10]
      48: 3940054d     	ldrb	w13, [x10, #0x1]
      4c: 3940094f     	ldrb	w15, [x10, #0x2]
      50: 39400d51     	ldrb	w17, [x10, #0x3]
      54: 910023e3     	add	x3, sp, #0x8
      58: 52820001     	mov	w1, #0x1000             // =4096
      5c: 386c692e     	ldrb	w14, [x9, x12]
      60: 386d6930     	ldrb	w16, [x9, x13]
      64: 79008fff     	strh	wzr, [sp, #0x46]
      68: f803e3ff     	stur	xzr, [sp, #0x3e]
      6c: 6a0801df     	tst	w14, w8
      70: 3940114e     	ldrb	w14, [x10, #0x4]
      74: f80363ff     	stur	xzr, [sp, #0x36]
      78: 1a8c016c     	csel	w12, w11, w12, eq
      7c: 6a08021f     	tst	w16, w8
      80: 386f6930     	ldrb	w16, [x9, x15]
      84: 390023ec     	strb	w12, [sp, #0x8]
      88: 3871692c     	ldrb	w12, [x9, x17]
      8c: 1a8d016d     	csel	w13, w11, w13, eq
      90: 6a08021f     	tst	w16, w8
      94: 390027ed     	strb	w13, [sp, #0x9]
      98: 3940154d     	ldrb	w13, [x10, #0x5]
      9c: 1a8f016f     	csel	w15, w11, w15, eq
      a0: 6a08019f     	tst	w12, w8
      a4: 386e692c     	ldrb	w12, [x9, x14]
      a8: 39002bef     	strb	w15, [sp, #0xa]
      ac: 386d692f     	ldrb	w15, [x9, x13]
      b0: 1a910170     	csel	w16, w11, w17, eq
      b4: 6a08019f     	tst	w12, w8
      b8: 3940194c     	ldrb	w12, [x10, #0x6]
      bc: 39002ff0     	strb	w16, [sp, #0xb]
      c0: 39401d50     	ldrb	w16, [x10, #0x7]
      c4: 1a8e016e     	csel	w14, w11, w14, eq
      c8: 6a0801ff     	tst	w15, w8
      cc: 386c692f     	ldrb	w15, [x9, x12]
      d0: 1a8d016d     	csel	w13, w11, w13, eq
      d4: 390033ee     	strb	w14, [sp, #0xc]
      d8: 3940214e     	ldrb	w14, [x10, #0x8]
      dc: 390037ed     	strb	w13, [sp, #0xd]
      e0: 3870692d     	ldrb	w13, [x9, x16]
      e4: 6a0801ff     	tst	w15, w8
      e8: 3940254f     	ldrb	w15, [x10, #0x9]
      ec: f802e3ff     	stur	xzr, [sp, #0x2e]
      f0: 1a8c016c     	csel	w12, w11, w12, eq
      f4: 6a0801bf     	tst	w13, w8
      f8: 386e692d     	ldrb	w13, [x9, x14]
      fc: 39003bec     	strb	w12, [sp, #0xe]
     100: 1a90016c     	csel	w12, w11, w16, eq
     104: 39003fec     	strb	w12, [sp, #0xf]
     108: 6a0801bf     	tst	w13, w8
     10c: 3940294c     	ldrb	w12, [x10, #0xa]
     110: 1a8e016d     	csel	w13, w11, w14, eq
     114: 386f692e     	ldrb	w14, [x9, x15]
     118: 39402d4a     	ldrb	w10, [x10, #0xb]
     11c: 390043ed     	strb	w13, [sp, #0x10]
     120: 386c692d     	ldrb	w13, [x9, x12]
     124: 6a0801df     	tst	w14, w8
     128: 386a6929     	ldrb	w9, [x9, x10]
     12c: f80263ff     	stur	xzr, [sp, #0x26]
     130: 1a8f016e     	csel	w14, w11, w15, eq
     134: 6a0801bf     	tst	w13, w8
     138: f801e3ff     	stur	xzr, [sp, #0x1e]
     13c: 1a8c016c     	csel	w12, w11, w12, eq
     140: 6a08013f     	tst	w9, w8
     144: f80163ff     	stur	xzr, [sp, #0x16]
     148: 1a8a0168     	csel	w8, w11, w10, eq
     14c: 390047ee     	strb	w14, [sp, #0x11]
     150: 39004fe8     	strb	w8, [sp, #0x13]
     154: 52800148     	mov	w8, #0xa                // =10
     158: 39004bec     	strb	w12, [sp, #0x12]
     15c: 79002be8     	strh	w8, [sp, #0x14]
     160: 94000000     	bl	0x160 <boot_nvmem_show+0x15c>
		0000000000000160:  R_AARCH64_CALL26	scnprintf
     164: d5384108     	mrs	x8, SP_EL0
     168: f9438908     	ldr	x8, [x8, #0x710]
     16c: f85f83a9     	ldur	x9, [x29, #-0x8]
     170: eb09011f     	cmp	x8, x9
     174: 540000c1     	b.ne	0x18c <boot_nvmem_show+0x188>
     178: 93407c00     	sxtw	x0, w0
     17c: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     180: 910183ff     	add	sp, sp, #0x60
     184: d50323bf     	autiasp
     188: d65f03c0     	ret
     18c: 94000000     	bl	0x18c <boot_nvmem_show+0x188>
		000000000000018c:  R_AARCH64_CALL26	__stack_chk_fail
