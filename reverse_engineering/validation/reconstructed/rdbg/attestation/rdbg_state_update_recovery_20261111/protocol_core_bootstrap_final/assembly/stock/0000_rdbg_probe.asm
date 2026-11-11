
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <rdbg_probe>:
       4: d503233f     	paciasp
       8: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
       c: a9016ffc     	stp	x28, x27, [sp, #0x10]
      10: a90267fa     	stp	x26, x25, [sp, #0x20]
      14: a9035ff8     	stp	x24, x23, [sp, #0x30]
      18: a90457f6     	stp	x22, x21, [sp, #0x40]
      1c: a9054ff4     	stp	x20, x19, [sp, #0x50]
      20: 910003fd     	mov	x29, sp
      24: aa0003f4     	mov	x20, x0
      28: d503201f     	nop
      2c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
      30: 5281b801     	mov	w1, #0xdc0              // =3520
      34: 52800402     	mov	w2, #0x20               // =32
      38: f9400100     	ldr	x0, [x8]
		0000000000000038:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
      3c: 94000000     	bl	0x3c <rdbg_probe+0x38>
		000000000000003c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
      40: aa0003f3     	mov	x19, x0
      44: b4000c53     	cbz	x19, 0x1cc <rdbg_probe+0x1c8>
      48: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x94
      4c: b9400348     	ldr	w8, [x26]
		000000000000004c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x94
      50: 7100051f     	cmp	w8, #0x1
      54: 54000b2b     	b.lt	0x1b8 <rdbg_probe+0x1b4>
      58: aa1f03fb     	mov	x27, xzr
      5c: aa1f03f5     	mov	x21, xzr
      60: 52800a16     	mov	w22, #0x50              // =80
      64: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3be
      68: 910002f7     	add	x23, x23, #0x0
		0000000000000068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3be
      6c: 1400000b     	b	0x98 <rdbg_probe+0x94>
      70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c2
      74: 91000000     	add	x0, x0, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c2
      78: aa1903e1     	mov	x1, x25
      7c: 94000000     	bl	0x7c <rdbg_probe+0x78>
		000000000000007c:  R_AARCH64_CALL26	_printk
      80: b9800348     	ldrsw	x8, [x26]
		0000000000000080:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x94
      84: 910006b5     	add	x21, x21, #0x1
      88: 9100637b     	add	x27, x27, #0x18
      8c: 910722d6     	add	x22, x22, #0x1c8
      90: eb0802bf     	cmp	x21, x8
      94: 5400092a     	b.ge	0x1b8 <rdbg_probe+0x1b4>
      98: f106037f     	cmp	x27, #0x180
      9c: 54000c00     	b.eq	0x21c <rdbg_probe+0x218>
      a0: 54000c00     	b.eq	0x220 <rdbg_probe+0x21c>
      a4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4f0
      a8: 91000108     	add	x8, x8, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4f0
      ac: f87b6919     	ldr	x25, [x8, x27]
      b0: b4fffe99     	cbz	x25, 0x80 <rdbg_probe+0x7c>
      b4: aa1303e0     	mov	x0, x19
      b8: 52800401     	mov	w1, #0x20               // =32
      bc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e
      c0: 91000042     	add	x2, x2, #0x0
		00000000000000c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e
      c4: aa1703e3     	mov	x3, x23
      c8: 2a1503e4     	mov	w4, w21
      cc: 94000000     	bl	0xcc <rdbg_probe+0xc8>
		00000000000000cc:  R_AARCH64_CALL26	snprintf
      d0: 7100001f     	cmp	w0, #0x0
      d4: 5400076d     	b.le	0x1c0 <rdbg_probe+0x1bc>
      d8: f9417e80     	ldr	x0, [x20, #0x2f8]
      dc: aa1303e1     	mov	x1, x19
      e0: 94000000     	bl	0xe0 <rdbg_probe+0xdc>
		00000000000000e0:  R_AARCH64_CALL26	of_device_is_compatible
      e4: 340002c0     	cbz	w0, 0x13c <rdbg_probe+0x138>
      e8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000e8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
      ec: f940011c     	ldr	x28, [x8]
		00000000000000ec:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
      f0: 8b160388     	add	x8, x28, x22
      f4: f100411f     	cmp	x8, #0x10
      f8: 54000820     	b.eq	0x1fc <rdbg_probe+0x1f8>
      fc: f9417e80     	ldr	x0, [x20, #0x2f8]
     100: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27e
     104: 91000021     	add	x1, x1, #0x0
		0000000000000104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27e
     108: aa1f03e2     	mov	x2, xzr
     10c: 94000000     	bl	0x10c <rdbg_probe+0x108>
		000000000000010c:  R_AARCH64_CALL26	of_find_property
     110: b4000160     	cbz	x0, 0x13c <rdbg_probe+0x138>
     114: 8b160398     	add	x24, x28, x22
     118: 91004280     	add	x0, x20, #0x10
     11c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ed
     120: 91000021     	add	x1, x1, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ed
     124: d1002302     	sub	x2, x24, #0x8
     128: 94000000     	bl	0x128 <rdbg_probe+0x124>
		0000000000000128:  R_AARCH64_CALL26	qcom_smem_state_get
     12c: f9000300     	str	x0, [x24]
     130: b4000380     	cbz	x0, 0x1a0 <rdbg_probe+0x19c>
     134: b13ffc1f     	cmn	x0, #0xfff
     138: 54000342     	b.hs	0x1a0 <rdbg_probe+0x19c>
     13c: aa1303e0     	mov	x0, x19
     140: 52800401     	mov	w1, #0x20               // =32
     144: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b6
     148: 91000042     	add	x2, x2, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b6
     14c: aa1703e3     	mov	x3, x23
     150: 2a1503e4     	mov	w4, w21
     154: 94000000     	bl	0x154 <rdbg_probe+0x150>
		0000000000000154:  R_AARCH64_CALL26	snprintf
     158: 7100001f     	cmp	w0, #0x0
     15c: 5400032d     	b.le	0x1c0 <rdbg_probe+0x1bc>
     160: f9417e80     	ldr	x0, [x20, #0x2f8]
     164: aa1303e1     	mov	x1, x19
     168: 94000000     	bl	0x168 <rdbg_probe+0x164>
		0000000000000168:  R_AARCH64_CALL26	of_device_is_compatible
     16c: 34fff8a0     	cbz	w0, 0x80 <rdbg_probe+0x7c>
     170: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
     174: f9400108     	ldr	x8, [x8]
		0000000000000174:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
     178: 8b16011c     	add	x28, x8, x22
     17c: f100a398     	subs	x24, x28, #0x28
     180: 54fff780     	b.eq	0x70 <rdbg_probe+0x6c>
     184: f9417e80     	ldr	x0, [x20, #0x2f8]
     188: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e3
     18c: 91000021     	add	x1, x1, #0x0
		000000000000018c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e3
     190: 94000000     	bl	0x190 <rdbg_probe+0x18c>
		0000000000000190:  R_AARCH64_CALL26	of_irq_get_byname
     194: b9000300     	str	w0, [x24]
     198: b81dc380     	stur	w0, [x28, #-0x24]
     19c: 17ffffb9     	b	0x80 <rdbg_probe+0x7c>
     1a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c
     1a4: 91000000     	add	x0, x0, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c
     1a8: 94000000     	bl	0x1a8 <rdbg_probe+0x1a4>
		00000000000001a8:  R_AARCH64_CALL26	_printk
     1ac: b8766b9c     	ldr	w28, [x28, x22]
     1b0: 34fffc7c     	cbz	w28, 0x13c <rdbg_probe+0x138>
     1b4: 14000013     	b	0x200 <rdbg_probe+0x1fc>
     1b8: 2a1f03fc     	mov	w28, wzr
     1bc: 14000005     	b	0x1d0 <rdbg_probe+0x1cc>
     1c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b
     1c4: 91000000     	add	x0, x0, #0x0
		00000000000001c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b
     1c8: 94000000     	bl	0x1c8 <rdbg_probe+0x1c4>
		00000000000001c8:  R_AARCH64_CALL26	_printk
     1cc: 1280017c     	mov	w28, #-0xc              // =-12
     1d0: aa1303e0     	mov	x0, x19
     1d4: 94000000     	bl	0x1d4 <rdbg_probe+0x1d0>
		00000000000001d4:  R_AARCH64_CALL26	kfree
     1d8: 2a1c03e0     	mov	w0, w28
     1dc: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     1e0: a94457f6     	ldp	x22, x21, [sp, #0x40]
     1e4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     1e8: a94267fa     	ldp	x26, x25, [sp, #0x20]
     1ec: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     1f0: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     1f4: d50323bf     	autiasp
     1f8: d65f03c0     	ret
     1fc: 128002bc     	mov	w28, #-0x16             // =-22
     200: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     204: 91000000     	add	x0, x0, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     208: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e5
     20c: 91000021     	add	x1, x1, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e5
     210: aa1903e2     	mov	x2, x25
     214: 94000000     	bl	0x214 <rdbg_probe+0x210>
		0000000000000214:  R_AARCH64_CALL26	_printk
     218: 17ffffee     	b	0x1d0 <rdbg_probe+0x1cc>
     21c: d42aa240     	brk	#0x5512
     220: d4200020     	brk	#0x1
     224: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000224:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     228: d5384115     	mrs	x21, SP_EL0
     22c: f9402ab6     	ldr	x22, [x21, #0x50]
     230: f9400100     	ldr	x0, [x8]
		0000000000000230:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     234: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000234:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     238: 91000108     	add	x8, x8, #0x0
		0000000000000238:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     23c: 5281b801     	mov	w1, #0xdc0              // =3520
     240: 52800402     	mov	w2, #0x20               // =32
     244: f9002aa8     	str	x8, [x21, #0x50]
     248: 94000000     	bl	0x248 <rdbg_probe+0x244>
		0000000000000248:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     24c: aa0003f3     	mov	x19, x0
     250: f9002ab6     	str	x22, [x21, #0x50]
     254: b5ffefb3     	cbnz	x19, 0x48 <rdbg_probe+0x44>
     258: 17ffffdd     	b	0x1cc <rdbg_probe+0x1c8>
