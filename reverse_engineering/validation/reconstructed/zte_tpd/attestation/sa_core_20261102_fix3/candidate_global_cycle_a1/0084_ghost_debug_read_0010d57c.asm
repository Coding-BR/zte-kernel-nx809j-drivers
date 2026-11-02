
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001702c <ghost_debug_read>:
   1702c: d503233f     	paciasp
   17030: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   17034: f9000bf9     	str	x25, [sp, #0x10]
   17038: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1703c: a90357f6     	stp	x22, x21, [sp, #0x30]
   17040: a9044ff4     	stp	x20, x19, [sp, #0x40]
   17044: 910003fd     	mov	x29, sp
   17048: f9400068     	ldr	x8, [x3]
   1704c: b4000128     	cbz	x8, 0x17070 <ghost_debug_read+0x44>
   17050: aa1f03e0     	mov	x0, xzr
   17054: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   17058: f9400bf9     	ldr	x25, [sp, #0x10]
   1705c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   17060: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   17064: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   17068: d50323bf     	autiasp
   1706c: d65f03c0     	ret
   17070: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017070:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17074: aa0103f5     	mov	x21, x1
   17078: aa0203f4     	mov	x20, x2
   1707c: f9400117     	ldr	x23, [x8]
		000000000001707c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17080: aa0303f3     	mov	x19, x3
   17084: d503201f     	nop
   17088: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017088:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1708c: 5281b801     	mov	w1, #0xdc0              // =3520
   17090: 52820002     	mov	w2, #0x1000             // =4096
   17094: f9400100     	ldr	x0, [x8]
		0000000000017094:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   17098: 94000000     	bl	0x17098 <ghost_debug_read+0x6c>
		0000000000017098:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1709c: b5000240     	cbnz	x0, 0x170e4 <ghost_debug_read+0xb8>
   170a0: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000170a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e6a
   170a4: 91000000     	add	x0, x0, #0x0
		00000000000170a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e6a
   170a8: 94000000     	bl	0x170a8 <ghost_debug_read+0x7c>
		00000000000170a8:  R_AARCH64_CALL26	_printk
   170ac: 92800160     	mov	x0, #-0xc               // =-12
   170b0: 17ffffe9     	b	0x17054 <ghost_debug_read+0x28>
   170b4: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000170b4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x568
   170b8: 91000108     	add	x8, x8, #0x0
		00000000000170b8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x568
   170bc: d5384116     	mrs	x22, SP_EL0
   170c0: f9402ad8     	ldr	x24, [x22, #0x50]
   170c4: f9002ac8     	str	x8, [x22, #0x50]
   170c8: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000170c8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   170cc: f9400100     	ldr	x0, [x8]
		00000000000170cc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   170d0: 5281b801     	mov	w1, #0xdc0              // =3520
   170d4: 52820002     	mov	w2, #0x1000             // =4096
   170d8: 94000000     	bl	0x170d8 <ghost_debug_read+0xac>
		00000000000170d8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   170dc: f9002ad8     	str	x24, [x22, #0x50]
   170e0: b4fffe00     	cbz	x0, 0x170a0 <ghost_debug_read+0x74>
   170e4: 395246e1     	ldrb	w1, [x23, #0x491]
   170e8: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000170e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1e
   170ec: 91000108     	add	x8, x8, #0x0
		00000000000170ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1e
   170f0: aa0003f6     	mov	x22, x0
   170f4: aa0803e0     	mov	x0, x8
   170f8: 94000000     	bl	0x170f8 <ghost_debug_read+0xcc>
		00000000000170f8:  R_AARCH64_CALL26	_printk
   170fc: 39524ae1     	ldrb	w1, [x23, #0x492]
   17100: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4aac
   17104: 91000000     	add	x0, x0, #0x0
		0000000000017104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4aac
   17108: 94000000     	bl	0x17108 <ghost_debug_read+0xdc>
		0000000000017108:  R_AARCH64_CALL26	_printk
   1710c: 39524ee1     	ldrb	w1, [x23, #0x493]
   17110: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e44
   17114: 91000000     	add	x0, x0, #0x0
		0000000000017114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e44
   17118: 94000000     	bl	0x17118 <ghost_debug_read+0xec>
		0000000000017118:  R_AARCH64_CALL26	_printk
   1711c: 395252e1     	ldrb	w1, [x23, #0x494]
   17120: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250e
   17124: 91000000     	add	x0, x0, #0x0
		0000000000017124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250e
   17128: 94000000     	bl	0x17128 <ghost_debug_read+0xfc>
		0000000000017128:  R_AARCH64_CALL26	_printk
   1712c: 395256e1     	ldrb	w1, [x23, #0x495]
   17130: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86b6
   17134: 91000000     	add	x0, x0, #0x0
		0000000000017134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86b6
   17138: 94000000     	bl	0x17138 <ghost_debug_read+0x10c>
		0000000000017138:  R_AARCH64_CALL26	_printk
   1713c: b9449ae1     	ldr	w1, [x23, #0x498]
   17140: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b8c
   17144: 91000000     	add	x0, x0, #0x0
		0000000000017144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b8c
   17148: 94000000     	bl	0x17148 <ghost_debug_read+0x11c>
		0000000000017148:  R_AARCH64_CALL26	_printk
   1714c: b9449ee1     	ldr	w1, [x23, #0x49c]
   17150: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51b6
   17154: 91000000     	add	x0, x0, #0x0
		0000000000017154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51b6
   17158: 94000000     	bl	0x17158 <ghost_debug_read+0x12c>
		0000000000017158:  R_AARCH64_CALL26	_printk
   1715c: b944a2e1     	ldr	w1, [x23, #0x4a0]
   17160: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x626
   17164: 91000000     	add	x0, x0, #0x0
		0000000000017164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x626
   17168: 94000000     	bl	0x17168 <ghost_debug_read+0x13c>
		0000000000017168:  R_AARCH64_CALL26	_printk
   1716c: b944a6e1     	ldr	w1, [x23, #0x4a4]
   17170: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2534
   17174: 91000000     	add	x0, x0, #0x0
		0000000000017174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2534
   17178: 94000000     	bl	0x17178 <ghost_debug_read+0x14c>
		0000000000017178:  R_AARCH64_CALL26	_printk
   1717c: 90000009     	adrp	x9, 0x17000 <tp_zlog_debug_write+0xa8>
		000000000001717c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56d8
   17180: 91000129     	add	x9, x9, #0x0
		0000000000017180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56d8
   17184: 52800148     	mov	w8, #0xa                // =10
   17188: a945b12b     	ldp	x11, x12, [x9, #0x58]
   1718c: 790052c8     	strh	w8, [x22, #0x28]
   17190: a940352a     	ldp	x10, x13, [x9]
   17194: f9400930     	ldr	x16, [x9, #0x10]
   17198: 9000000f     	adrp	x15, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa030
   1719c: 910001ef     	add	x15, x15, #0x0
		000000000001719c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa030
   171a0: 7901a2c8     	strh	w8, [x22, #0xd0]
   171a4: f80812cb     	stur	x11, [x22, #0x81]
   171a8: f940352b     	ldr	x11, [x9, #0x68]
   171ac: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000171ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8734
   171b0: 91000042     	add	x2, x2, #0x0
		00000000000171b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8734
   171b4: f80892cc     	stur	x12, [x22, #0x89]
   171b8: 9103eac0     	add	x0, x22, #0xfa
   171bc: f80912cb     	stur	x11, [x22, #0x91]
   171c0: a943ad2c     	ldp	x12, x11, [x9, #0x38]
   171c4: f80292ca     	stur	x10, [x22, #0x29]
   171c8: 52820001     	mov	w1, #0x1000             // =4096
   171cc: 52820018     	mov	w24, #0x1000            // =4096
   171d0: f80312cd     	stur	x13, [x22, #0x31]
   171d4: f80612cc     	stur	x12, [x22, #0x61]
   171d8: a944a92c     	ldp	x12, x10, [x9, #0x48]
   171dc: f80692cb     	stur	x11, [x22, #0x69]
   171e0: f80392d0     	stur	x16, [x22, #0x39]
   171e4: f80792ca     	stur	x10, [x22, #0x79]
   171e8: a941a92b     	ldp	x11, x10, [x9, #0x18]
   171ec: f80712cc     	stur	x12, [x22, #0x71]
   171f0: 780f92c8     	sturh	w8, [x22, #0xf9]
   171f4: f80412cb     	stur	x11, [x22, #0x41]
   171f8: a942b92b     	ldp	x11, x14, [x9, #0x28]
   171fc: f846f129     	ldur	x9, [x9, #0x6f]
   17200: f80492ca     	stur	x10, [x22, #0x49]
   17204: a94129ec     	ldp	x12, x10, [x15, #0x10]
   17208: f80512cb     	stur	x11, [x22, #0x51]
   1720c: 9000000b     	adrp	x11, 0x17000 <tp_zlog_debug_write+0xa8>
		000000000001720c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7674
   17210: 9100016b     	add	x11, x11, #0x0
		0000000000017210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7674
   17214: f80592ce     	stur	x14, [x22, #0x59]
   17218: a941b96d     	ldp	x13, x14, [x11, #0x18]
   1721c: f9401570     	ldr	x16, [x11, #0x28]
   17220: a9012acc     	stp	x12, x10, [x22, #0x10]
   17224: f80e12cc     	stur	x12, [x22, #0xe1]
   17228: a90bbacd     	stp	x13, x14, [x22, #0xb8]
   1722c: f94011ee     	ldr	x14, [x15, #0x20]
   17230: f90066d0     	str	x16, [x22, #0xc8]
   17234: a940416d     	ldp	x13, x16, [x11]
   17238: f940096b     	ldr	x11, [x11, #0x10]
   1723c: f90012ce     	str	x14, [x22, #0x20]
   17240: f80e92ca     	stur	x10, [x22, #0xe9]
   17244: a909b6c9     	stp	x9, x13, [x22, #0x98]
   17248: a94025ed     	ldp	x13, x9, [x15]
   1724c: a90aaed0     	stp	x16, x11, [x22, #0xa8]
   17250: f80f12ce     	stur	x14, [x22, #0xf1]
   17254: a90026cd     	stp	x13, x9, [x22]
   17258: f80d92c9     	stur	x9, [x22, #0xd9]
   1725c: f80d12cd     	stur	x13, [x22, #0xd1]
   17260: 395246e3     	ldrb	w3, [x23, #0x491]
   17264: 94000000     	bl	0x17264 <ghost_debug_read+0x238>
		0000000000017264:  R_AARCH64_CALL26	snprintf
   17268: 93407c08     	sxtw	x8, w0
   1726c: 5281e0c9     	mov	w9, #0xf06              // =3846
   17270: 39524ae3     	ldrb	w3, [x23, #0x492]
   17274: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8754
   17278: 91000042     	add	x2, x2, #0x0
		0000000000017278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8754
   1727c: 9103e919     	add	x25, x8, #0xfa
   17280: cb080121     	sub	x1, x9, x8
   17284: 8b1902c0     	add	x0, x22, x25
   17288: 94000000     	bl	0x17288 <ghost_debug_read+0x25c>
		0000000000017288:  R_AARCH64_CALL26	snprintf
   1728c: 8b20c339     	add	x25, x25, w0, sxtw
   17290: 39524ee3     	ldrb	w3, [x23, #0x493]
   17294: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ba
   17298: 91000042     	add	x2, x2, #0x0
		0000000000017298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ba
   1729c: cb190301     	sub	x1, x24, x25
   172a0: 8b1902c0     	add	x0, x22, x25
   172a4: 94000000     	bl	0x172a4 <ghost_debug_read+0x278>
		00000000000172a4:  R_AARCH64_CALL26	snprintf
   172a8: 8b20c339     	add	x25, x25, w0, sxtw
   172ac: 395252e3     	ldrb	w3, [x23, #0x494]
   172b0: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000172b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee2
   172b4: 91000042     	add	x2, x2, #0x0
		00000000000172b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee2
   172b8: cb190301     	sub	x1, x24, x25
   172bc: 8b1902c0     	add	x0, x22, x25
   172c0: 94000000     	bl	0x172c0 <ghost_debug_read+0x294>
		00000000000172c0:  R_AARCH64_CALL26	snprintf
   172c4: 8b20c339     	add	x25, x25, w0, sxtw
   172c8: 395256e3     	ldrb	w3, [x23, #0x495]
   172cc: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000172cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97d6
   172d0: 91000042     	add	x2, x2, #0x0
		00000000000172d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97d6
   172d4: cb190301     	sub	x1, x24, x25
   172d8: 8b1902c0     	add	x0, x22, x25
   172dc: 94000000     	bl	0x172dc <ghost_debug_read+0x2b0>
		00000000000172dc:  R_AARCH64_CALL26	snprintf
   172e0: 8b20c339     	add	x25, x25, w0, sxtw
   172e4: b9449ae3     	ldr	w3, [x23, #0x498]
   172e8: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000172e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7ea
   172ec: 91000042     	add	x2, x2, #0x0
		00000000000172ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7ea
   172f0: cb190301     	sub	x1, x24, x25
   172f4: 8b1902c0     	add	x0, x22, x25
   172f8: 94000000     	bl	0x172f8 <ghost_debug_read+0x2cc>
		00000000000172f8:  R_AARCH64_CALL26	snprintf
   172fc: 8b20c339     	add	x25, x25, w0, sxtw
   17300: b9449ee3     	ldr	w3, [x23, #0x49c]
   17304: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbca4
   17308: 91000042     	add	x2, x2, #0x0
		0000000000017308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbca4
   1730c: cb190301     	sub	x1, x24, x25
   17310: 8b1902c0     	add	x0, x22, x25
   17314: 94000000     	bl	0x17314 <ghost_debug_read+0x2e8>
		0000000000017314:  R_AARCH64_CALL26	snprintf
   17318: 8b20c339     	add	x25, x25, w0, sxtw
   1731c: b944a2e3     	ldr	w3, [x23, #0x4a0]
   17320: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f02
   17324: 91000042     	add	x2, x2, #0x0
		0000000000017324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f02
   17328: cb190301     	sub	x1, x24, x25
   1732c: 8b1902c0     	add	x0, x22, x25
   17330: 94000000     	bl	0x17330 <ghost_debug_read+0x304>
		0000000000017330:  R_AARCH64_CALL26	snprintf
   17334: 8b20c339     	add	x25, x25, w0, sxtw
   17338: b944a6e3     	ldr	w3, [x23, #0x4a4]
   1733c: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		000000000001733c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc27e
   17340: 91000042     	add	x2, x2, #0x0
		0000000000017340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc27e
   17344: cb190301     	sub	x1, x24, x25
   17348: 8b1902c0     	add	x0, x22, x25
   1734c: 94000000     	bl	0x1734c <ghost_debug_read+0x320>
		000000000001734c:  R_AARCH64_CALL26	snprintf
   17350: 8b20c337     	add	x23, x25, w0, sxtw
   17354: aa1503e0     	mov	x0, x21
   17358: aa1403e1     	mov	x1, x20
   1735c: aa1303e2     	mov	x2, x19
   17360: aa1603e3     	mov	x3, x22
   17364: aa1703e4     	mov	x4, x23
   17368: 94000000     	bl	0x17368 <ghost_debug_read+0x33c>
		0000000000017368:  R_AARCH64_CALL26	simple_read_from_buffer
   1736c: aa1603e0     	mov	x0, x22
   17370: 94000000     	bl	0x17370 <ghost_debug_read+0x344>
		0000000000017370:  R_AARCH64_CALL26	kfree
   17374: aa1703e0     	mov	x0, x23
   17378: 17ffff37     	b	0x17054 <ghost_debug_read+0x28>
