
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016fd0 <ghost_debug_read>:
   16fd0: d503233f     	paciasp
   16fd4: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   16fd8: f9000bf9     	str	x25, [sp, #0x10]
   16fdc: a9025ff8     	stp	x24, x23, [sp, #0x20]
   16fe0: a90357f6     	stp	x22, x21, [sp, #0x30]
   16fe4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   16fe8: 910003fd     	mov	x29, sp
   16fec: f9400068     	ldr	x8, [x3]
   16ff0: b4000128     	cbz	x8, 0x17014 <ghost_debug_read+0x44>
   16ff4: aa1f03e0     	mov	x0, xzr
   16ff8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   16ffc: f9400bf9     	ldr	x25, [sp, #0x10]
   17000: a94357f6     	ldp	x22, x21, [sp, #0x30]
   17004: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   17008: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1700c: d50323bf     	autiasp
   17010: d65f03c0     	ret
   17014: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017014:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17018: aa0103f5     	mov	x21, x1
   1701c: aa0203f4     	mov	x20, x2
   17020: f9400117     	ldr	x23, [x8]
		0000000000017020:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17024: aa0303f3     	mov	x19, x3
   17028: d503201f     	nop
   1702c: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		000000000001702c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   17030: 5281b801     	mov	w1, #0xdc0              // =3520
   17034: 52820002     	mov	w2, #0x1000             // =4096
   17038: f9400100     	ldr	x0, [x8]
		0000000000017038:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1703c: 94000000     	bl	0x1703c <ghost_debug_read+0x6c>
		000000000001703c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   17040: b5000240     	cbnz	x0, 0x17088 <ghost_debug_read+0xb8>
   17044: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e6a
   17048: 91000000     	add	x0, x0, #0x0
		0000000000017048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e6a
   1704c: 94000000     	bl	0x1704c <ghost_debug_read+0x7c>
		000000000001704c:  R_AARCH64_CALL26	_printk
   17050: 92800160     	mov	x0, #-0xc               // =-12
   17054: 17ffffe9     	b	0x16ff8 <ghost_debug_read+0x28>
   17058: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017058:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x568
   1705c: 91000108     	add	x8, x8, #0x0
		000000000001705c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x568
   17060: d5384116     	mrs	x22, SP_EL0
   17064: f9402ad8     	ldr	x24, [x22, #0x50]
   17068: f9002ac8     	str	x8, [x22, #0x50]
   1706c: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		000000000001706c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   17070: f9400100     	ldr	x0, [x8]
		0000000000017070:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   17074: 5281b801     	mov	w1, #0xdc0              // =3520
   17078: 52820002     	mov	w2, #0x1000             // =4096
   1707c: 94000000     	bl	0x1707c <ghost_debug_read+0xac>
		000000000001707c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   17080: f9002ad8     	str	x24, [x22, #0x50]
   17084: b4fffe00     	cbz	x0, 0x17044 <ghost_debug_read+0x74>
   17088: 395246e1     	ldrb	w1, [x23, #0x491]
   1708c: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		000000000001708c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1e
   17090: 91000108     	add	x8, x8, #0x0
		0000000000017090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1e
   17094: aa0003f6     	mov	x22, x0
   17098: aa0803e0     	mov	x0, x8
   1709c: 94000000     	bl	0x1709c <ghost_debug_read+0xcc>
		000000000001709c:  R_AARCH64_CALL26	_printk
   170a0: 39524ae1     	ldrb	w1, [x23, #0x492]
   170a4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000170a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4aac
   170a8: 91000000     	add	x0, x0, #0x0
		00000000000170a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4aac
   170ac: 94000000     	bl	0x170ac <ghost_debug_read+0xdc>
		00000000000170ac:  R_AARCH64_CALL26	_printk
   170b0: 39524ee1     	ldrb	w1, [x23, #0x493]
   170b4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000170b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e44
   170b8: 91000000     	add	x0, x0, #0x0
		00000000000170b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e44
   170bc: 94000000     	bl	0x170bc <ghost_debug_read+0xec>
		00000000000170bc:  R_AARCH64_CALL26	_printk
   170c0: 395252e1     	ldrb	w1, [x23, #0x494]
   170c4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000170c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250e
   170c8: 91000000     	add	x0, x0, #0x0
		00000000000170c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250e
   170cc: 94000000     	bl	0x170cc <ghost_debug_read+0xfc>
		00000000000170cc:  R_AARCH64_CALL26	_printk
   170d0: 395256e1     	ldrb	w1, [x23, #0x495]
   170d4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000170d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86b6
   170d8: 91000000     	add	x0, x0, #0x0
		00000000000170d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86b6
   170dc: 94000000     	bl	0x170dc <ghost_debug_read+0x10c>
		00000000000170dc:  R_AARCH64_CALL26	_printk
   170e0: b9449ae1     	ldr	w1, [x23, #0x498]
   170e4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000170e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b8c
   170e8: 91000000     	add	x0, x0, #0x0
		00000000000170e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b8c
   170ec: 94000000     	bl	0x170ec <ghost_debug_read+0x11c>
		00000000000170ec:  R_AARCH64_CALL26	_printk
   170f0: b9449ee1     	ldr	w1, [x23, #0x49c]
   170f4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000170f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51b6
   170f8: 91000000     	add	x0, x0, #0x0
		00000000000170f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51b6
   170fc: 94000000     	bl	0x170fc <ghost_debug_read+0x12c>
		00000000000170fc:  R_AARCH64_CALL26	_printk
   17100: b944a2e1     	ldr	w1, [x23, #0x4a0]
   17104: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x626
   17108: 91000000     	add	x0, x0, #0x0
		0000000000017108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x626
   1710c: 94000000     	bl	0x1710c <ghost_debug_read+0x13c>
		000000000001710c:  R_AARCH64_CALL26	_printk
   17110: b944a6e1     	ldr	w1, [x23, #0x4a4]
   17114: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2534
   17118: 91000000     	add	x0, x0, #0x0
		0000000000017118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2534
   1711c: 94000000     	bl	0x1711c <ghost_debug_read+0x14c>
		000000000001711c:  R_AARCH64_CALL26	_printk
   17120: 90000009     	adrp	x9, 0x17000 <ghost_debug_read+0x30>
		0000000000017120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56d8
   17124: 91000129     	add	x9, x9, #0x0
		0000000000017124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56d8
   17128: 52800148     	mov	w8, #0xa                // =10
   1712c: a945b12b     	ldp	x11, x12, [x9, #0x58]
   17130: 790052c8     	strh	w8, [x22, #0x28]
   17134: a940352a     	ldp	x10, x13, [x9]
   17138: f9400930     	ldr	x16, [x9, #0x10]
   1713c: 9000000f     	adrp	x15, 0x17000 <ghost_debug_read+0x30>
		000000000001713c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa030
   17140: 910001ef     	add	x15, x15, #0x0
		0000000000017140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa030
   17144: 7901a2c8     	strh	w8, [x22, #0xd0]
   17148: f80812cb     	stur	x11, [x22, #0x81]
   1714c: f940352b     	ldr	x11, [x9, #0x68]
   17150: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		0000000000017150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8734
   17154: 91000042     	add	x2, x2, #0x0
		0000000000017154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8734
   17158: f80892cc     	stur	x12, [x22, #0x89]
   1715c: 9103eac0     	add	x0, x22, #0xfa
   17160: f80912cb     	stur	x11, [x22, #0x91]
   17164: a943ad2c     	ldp	x12, x11, [x9, #0x38]
   17168: f80292ca     	stur	x10, [x22, #0x29]
   1716c: 52820001     	mov	w1, #0x1000             // =4096
   17170: 52820018     	mov	w24, #0x1000            // =4096
   17174: f80312cd     	stur	x13, [x22, #0x31]
   17178: f80612cc     	stur	x12, [x22, #0x61]
   1717c: a944a92c     	ldp	x12, x10, [x9, #0x48]
   17180: f80692cb     	stur	x11, [x22, #0x69]
   17184: f80392d0     	stur	x16, [x22, #0x39]
   17188: f80792ca     	stur	x10, [x22, #0x79]
   1718c: a941a92b     	ldp	x11, x10, [x9, #0x18]
   17190: f80712cc     	stur	x12, [x22, #0x71]
   17194: 780f92c8     	sturh	w8, [x22, #0xf9]
   17198: f80412cb     	stur	x11, [x22, #0x41]
   1719c: a942b92b     	ldp	x11, x14, [x9, #0x28]
   171a0: f846f129     	ldur	x9, [x9, #0x6f]
   171a4: f80492ca     	stur	x10, [x22, #0x49]
   171a8: a94129ec     	ldp	x12, x10, [x15, #0x10]
   171ac: f80512cb     	stur	x11, [x22, #0x51]
   171b0: 9000000b     	adrp	x11, 0x17000 <ghost_debug_read+0x30>
		00000000000171b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7674
   171b4: 9100016b     	add	x11, x11, #0x0
		00000000000171b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7674
   171b8: f80592ce     	stur	x14, [x22, #0x59]
   171bc: a941b96d     	ldp	x13, x14, [x11, #0x18]
   171c0: f9401570     	ldr	x16, [x11, #0x28]
   171c4: a9012acc     	stp	x12, x10, [x22, #0x10]
   171c8: f80e12cc     	stur	x12, [x22, #0xe1]
   171cc: a90bbacd     	stp	x13, x14, [x22, #0xb8]
   171d0: f94011ee     	ldr	x14, [x15, #0x20]
   171d4: f90066d0     	str	x16, [x22, #0xc8]
   171d8: a940416d     	ldp	x13, x16, [x11]
   171dc: f940096b     	ldr	x11, [x11, #0x10]
   171e0: f90012ce     	str	x14, [x22, #0x20]
   171e4: f80e92ca     	stur	x10, [x22, #0xe9]
   171e8: a909b6c9     	stp	x9, x13, [x22, #0x98]
   171ec: a94025ed     	ldp	x13, x9, [x15]
   171f0: a90aaed0     	stp	x16, x11, [x22, #0xa8]
   171f4: f80f12ce     	stur	x14, [x22, #0xf1]
   171f8: a90026cd     	stp	x13, x9, [x22]
   171fc: f80d92c9     	stur	x9, [x22, #0xd9]
   17200: f80d12cd     	stur	x13, [x22, #0xd1]
   17204: 395246e3     	ldrb	w3, [x23, #0x491]
   17208: 94000000     	bl	0x17208 <ghost_debug_read+0x238>
		0000000000017208:  R_AARCH64_CALL26	snprintf
   1720c: 93407c08     	sxtw	x8, w0
   17210: 5281e0c9     	mov	w9, #0xf06              // =3846
   17214: 39524ae3     	ldrb	w3, [x23, #0x492]
   17218: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		0000000000017218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8754
   1721c: 91000042     	add	x2, x2, #0x0
		000000000001721c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8754
   17220: 9103e919     	add	x25, x8, #0xfa
   17224: cb080121     	sub	x1, x9, x8
   17228: 8b1902c0     	add	x0, x22, x25
   1722c: 94000000     	bl	0x1722c <ghost_debug_read+0x25c>
		000000000001722c:  R_AARCH64_CALL26	snprintf
   17230: 8b20c339     	add	x25, x25, w0, sxtw
   17234: 39524ee3     	ldrb	w3, [x23, #0x493]
   17238: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		0000000000017238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ba
   1723c: 91000042     	add	x2, x2, #0x0
		000000000001723c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ba
   17240: cb190301     	sub	x1, x24, x25
   17244: 8b1902c0     	add	x0, x22, x25
   17248: 94000000     	bl	0x17248 <ghost_debug_read+0x278>
		0000000000017248:  R_AARCH64_CALL26	snprintf
   1724c: 8b20c339     	add	x25, x25, w0, sxtw
   17250: 395252e3     	ldrb	w3, [x23, #0x494]
   17254: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		0000000000017254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee2
   17258: 91000042     	add	x2, x2, #0x0
		0000000000017258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee2
   1725c: cb190301     	sub	x1, x24, x25
   17260: 8b1902c0     	add	x0, x22, x25
   17264: 94000000     	bl	0x17264 <ghost_debug_read+0x294>
		0000000000017264:  R_AARCH64_CALL26	snprintf
   17268: 8b20c339     	add	x25, x25, w0, sxtw
   1726c: 395256e3     	ldrb	w3, [x23, #0x495]
   17270: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		0000000000017270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97d6
   17274: 91000042     	add	x2, x2, #0x0
		0000000000017274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97d6
   17278: cb190301     	sub	x1, x24, x25
   1727c: 8b1902c0     	add	x0, x22, x25
   17280: 94000000     	bl	0x17280 <ghost_debug_read+0x2b0>
		0000000000017280:  R_AARCH64_CALL26	snprintf
   17284: 8b20c339     	add	x25, x25, w0, sxtw
   17288: b9449ae3     	ldr	w3, [x23, #0x498]
   1728c: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		000000000001728c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7ea
   17290: 91000042     	add	x2, x2, #0x0
		0000000000017290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7ea
   17294: cb190301     	sub	x1, x24, x25
   17298: 8b1902c0     	add	x0, x22, x25
   1729c: 94000000     	bl	0x1729c <ghost_debug_read+0x2cc>
		000000000001729c:  R_AARCH64_CALL26	snprintf
   172a0: 8b20c339     	add	x25, x25, w0, sxtw
   172a4: b9449ee3     	ldr	w3, [x23, #0x49c]
   172a8: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		00000000000172a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbca4
   172ac: 91000042     	add	x2, x2, #0x0
		00000000000172ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbca4
   172b0: cb190301     	sub	x1, x24, x25
   172b4: 8b1902c0     	add	x0, x22, x25
   172b8: 94000000     	bl	0x172b8 <ghost_debug_read+0x2e8>
		00000000000172b8:  R_AARCH64_CALL26	snprintf
   172bc: 8b20c339     	add	x25, x25, w0, sxtw
   172c0: b944a2e3     	ldr	w3, [x23, #0x4a0]
   172c4: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		00000000000172c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f02
   172c8: 91000042     	add	x2, x2, #0x0
		00000000000172c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f02
   172cc: cb190301     	sub	x1, x24, x25
   172d0: 8b1902c0     	add	x0, x22, x25
   172d4: 94000000     	bl	0x172d4 <ghost_debug_read+0x304>
		00000000000172d4:  R_AARCH64_CALL26	snprintf
   172d8: 8b20c339     	add	x25, x25, w0, sxtw
   172dc: b944a6e3     	ldr	w3, [x23, #0x4a4]
   172e0: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		00000000000172e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc27e
   172e4: 91000042     	add	x2, x2, #0x0
		00000000000172e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc27e
   172e8: cb190301     	sub	x1, x24, x25
   172ec: 8b1902c0     	add	x0, x22, x25
   172f0: 94000000     	bl	0x172f0 <ghost_debug_read+0x320>
		00000000000172f0:  R_AARCH64_CALL26	snprintf
   172f4: 8b20c337     	add	x23, x25, w0, sxtw
   172f8: aa1503e0     	mov	x0, x21
   172fc: aa1403e1     	mov	x1, x20
   17300: aa1303e2     	mov	x2, x19
   17304: aa1603e3     	mov	x3, x22
   17308: aa1703e4     	mov	x4, x23
   1730c: 94000000     	bl	0x1730c <ghost_debug_read+0x33c>
		000000000001730c:  R_AARCH64_CALL26	simple_read_from_buffer
   17310: aa1603e0     	mov	x0, x22
   17314: 94000000     	bl	0x17314 <ghost_debug_read+0x344>
		0000000000017314:  R_AARCH64_CALL26	kfree
   17318: aa1703e0     	mov	x0, x23
   1731c: 17ffff37     	b	0x16ff8 <ghost_debug_read+0x28>
