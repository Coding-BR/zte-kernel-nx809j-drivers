
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zlog_register_client_stock>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_bss_base+0x24c4
      20: 39400108     	ldrb	w8, [x8]
		0000000000000020:  R_AARCH64_LDST8_ABS_LO12_NC	zlog_exact_bss_base+0x24c4
      24: 36000128     	tbz	w8, #0x0, 0x48 <zlog_register_client_stock+0x44>
      28: aa0003f3     	mov	x19, x0
      2c: b50001c0     	cbnz	x0, 0x64 <zlog_register_client_stock+0x60>
      30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x2ea
      34: 91000000     	add	x0, x0, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x2ea
      38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
      3c: 91000021     	add	x1, x1, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
      40: 94000000     	bl	0x40 <zlog_register_client_stock+0x3c>
		0000000000000040:  R_AARCH64_CALL26	_printk
      44: 14000060     	b	0x1c4 <zlog_register_client_stock+0x1c0>
      48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
      4c: 91000021     	add	x1, x1, #0x0
		000000000000004c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
      50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x581
      54: 91000000     	add	x0, x0, #0x0
		0000000000000054:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x581
      58: aa0103e2     	mov	x2, x1
      5c: 94000000     	bl	0x5c <zlog_register_client_stock+0x58>
		000000000000005c:  R_AARCH64_CALL26	_printk
      60: 14000059     	b	0x1c4 <zlog_register_client_stock+0x1c0>
      64: aa1f03f5     	mov	x21, xzr
      68: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server
      6c: 91000294     	add	x20, x20, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server
      70: 14000007     	b	0x8c <zlog_register_client_stock+0x88>
      74: 9102c280     	add	x0, x20, #0xb0
      78: 94000000     	bl	0x78 <zlog_register_client_stock+0x74>
		0000000000000078:  R_AARCH64_CALL26	mutex_unlock
      7c: 910006b5     	add	x21, x21, #0x1
      80: 91048294     	add	x20, x20, #0x120
      84: f10082bf     	cmp	x21, #0x20
      88: 54000600     	b.eq	0x148 <zlog_register_client_stock+0x144>
      8c: 9102c280     	add	x0, x20, #0xb0
      90: 94000000     	bl	0x90 <zlog_register_client_stock+0x8c>
		0000000000000090:  R_AARCH64_CALL26	mutex_lock
      94: 39446288     	ldrb	w8, [x20, #0x118]
      98: 34fffee8     	cbz	w8, 0x74 <zlog_register_client_stock+0x70>
      9c: b940e288     	ldr	w8, [x20, #0xe0]
      a0: b9400269     	ldr	w9, [x19]
      a4: 6b09011f     	cmp	w8, w9
      a8: 54fffe61     	b.ne	0x74 <zlog_register_client_stock+0x70>
      ac: f9400661     	ldr	x1, [x19, #0x8]
      b0: 91001280     	add	x0, x20, #0x4
      b4: 528003e2     	mov	w2, #0x1f               // =31
      b8: 94000000     	bl	0xb8 <zlog_register_client_stock+0xb4>
		00000000000000b8:  R_AARCH64_CALL26	strncmp
      bc: 35fffdc0     	cbnz	w0, 0x74 <zlog_register_client_stock+0x70>
      c0: f9400a61     	ldr	x1, [x19, #0x10]
      c4: 91009280     	add	x0, x20, #0x24
      c8: 528003e2     	mov	w2, #0x1f               // =31
      cc: 94000000     	bl	0xcc <zlog_register_client_stock+0xc8>
		00000000000000cc:  R_AARCH64_CALL26	strncmp
      d0: 35fffd20     	cbnz	w0, 0x74 <zlog_register_client_stock+0x70>
      d4: f9400e61     	ldr	x1, [x19, #0x18]
      d8: 91011280     	add	x0, x20, #0x44
      dc: 528007e2     	mov	w2, #0x3f               // =63
      e0: 94000000     	bl	0xe0 <zlog_register_client_stock+0xdc>
		00000000000000e0:  R_AARCH64_CALL26	strncmp
      e4: 35fffc80     	cbnz	w0, 0x74 <zlog_register_client_stock+0x70>
      e8: f9401261     	ldr	x1, [x19, #0x20]
      ec: 91021280     	add	x0, x20, #0x84
      f0: 528003e2     	mov	w2, #0x1f               // =31
      f4: 94000000     	bl	0xf4 <zlog_register_client_stock+0xf0>
		00000000000000f4:  R_AARCH64_CALL26	strncmp
      f8: 35fffbe0     	cbnz	w0, 0x74 <zlog_register_client_stock+0x70>
      fc: 9102c280     	add	x0, x20, #0xb0
     100: 94000000     	bl	0x100 <zlog_register_client_stock+0xfc>
		0000000000000100:  R_AARCH64_CALL26	mutex_unlock
     104: b9400263     	ldr	w3, [x19]
     108: f9400664     	ldr	x4, [x19, #0x8]
     10c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x5b
     110: 91000021     	add	x1, x1, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x5b
     114: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x174
     118: 91000000     	add	x0, x0, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x174
     11c: aa0103e2     	mov	x2, x1
     120: 94000000     	bl	0x120 <zlog_register_client_stock+0x11c>
		0000000000000120:  R_AARCH64_CALL26	_printk
     124: f27b6abf     	tst	x21, #0xffffffe0
     128: 54000101     	b.ne	0x148 <zlog_register_client_stock+0x144>
     12c: aa1403e2     	mov	x2, x20
     130: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000130:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6fe
     134: 91000000     	add	x0, x0, #0x0
		0000000000000134:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6fe
     138: b8404443     	ldr	w3, [x2], #0x4
     13c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     140: 91000021     	add	x1, x1, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     144: 14000076     	b	0x31c <zlog_register_client_stock+0x318>
     148: f9400662     	ldr	x2, [x19, #0x8]
     14c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000014c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x340
     150: 91000000     	add	x0, x0, #0x0
		0000000000000150:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x340
     154: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000154:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     158: 91000021     	add	x1, x1, #0x0
		0000000000000158:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     15c: 94000000     	bl	0x15c <zlog_register_client_stock+0x158>
		000000000000015c:  R_AARCH64_CALL26	_printk
     160: aa1f03f8     	mov	x24, xzr
     164: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000164:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_bss_base+0x118
     168: 910002f7     	add	x23, x23, #0x0
		0000000000000168:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_bss_base+0x118
     16c: d101a2f5     	sub	x21, x23, #0x68
     170: aa1503e0     	mov	x0, x21
     174: 94000000     	bl	0x174 <zlog_register_client_stock+0x170>
		0000000000000174:  R_AARCH64_CALL26	mutex_lock
     178: 394002e8     	ldrb	w8, [x23]
     17c: 34000108     	cbz	w8, 0x19c <zlog_register_client_stock+0x198>
     180: aa1503e0     	mov	x0, x21
     184: 94000000     	bl	0x184 <zlog_register_client_stock+0x180>
		0000000000000184:  R_AARCH64_CALL26	mutex_unlock
     188: 91000718     	add	x24, x24, #0x1
     18c: 910482f7     	add	x23, x23, #0x120
     190: f100831f     	cmp	x24, #0x20
     194: 54fffec1     	b.ne	0x16c <zlog_register_client_stock+0x168>
     198: 14000005     	b	0x1ac <zlog_register_client_stock+0x1a8>
     19c: aa1503e0     	mov	x0, x21
     1a0: 94000000     	bl	0x1a0 <zlog_register_client_stock+0x19c>
		00000000000001a0:  R_AARCH64_CALL26	mutex_unlock
     1a4: 71007f1f     	cmp	w24, #0x1f
     1a8: 540001e9     	b.ls	0x1e4 <zlog_register_client_stock+0x1e0>
     1ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x9e
     1b0: 91000000     	add	x0, x0, #0x0
		00000000000001b0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x9e
     1b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     1b8: 91000021     	add	x1, x1, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     1bc: 52800402     	mov	w2, #0x20               // =32
     1c0: 94000000     	bl	0x1c0 <zlog_register_client_stock+0x1bc>
		00000000000001c0:  R_AARCH64_CALL26	_printk
     1c4: aa1f03f4     	mov	x20, xzr
     1c8: aa1403e0     	mov	x0, x20
     1cc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     1d0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     1d4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     1d8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     1dc: d50323bf     	autiasp
     1e0: d65f03c0     	ret
     1e4: aa1503e0     	mov	x0, x21
     1e8: 94000000     	bl	0x1e8 <zlog_register_client_stock+0x1e4>
		00000000000001e8:  R_AARCH64_CALL26	mutex_lock
     1ec: d503201f     	nop
     1f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001f0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     1f4: 5281b801     	mov	w1, #0xdc0              // =3520
     1f8: 52810002     	mov	w2, #0x800              // =2048
     1fc: f9400100     	ldr	x0, [x8]
		00000000000001fc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     200: 94000000     	bl	0x200 <zlog_register_client_stock+0x1fc>
		0000000000000200:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     204: f81f02e0     	stur	x0, [x23, #-0x10]
     208: b50002c0     	cbnz	x0, 0x260 <zlog_register_client_stock+0x25c>
     20c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x502
     210: 91000000     	add	x0, x0, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x502
     214: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000214:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     218: 91000021     	add	x1, x1, #0x0
		0000000000000218:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     21c: 94000000     	bl	0x21c <zlog_register_client_stock+0x218>
		000000000000021c:  R_AARCH64_CALL26	_printk
     220: aa1503e0     	mov	x0, x21
     224: 94000000     	bl	0x224 <zlog_register_client_stock+0x220>
		0000000000000224:  R_AARCH64_CALL26	mutex_unlock
     228: 17ffffe7     	b	0x1c4 <zlog_register_client_stock+0x1c0>
     22c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_codetag_base
     230: 91000108     	add	x8, x8, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_codetag_base
     234: d5384114     	mrs	x20, SP_EL0
     238: f9402a96     	ldr	x22, [x20, #0x50]
     23c: f9002a88     	str	x8, [x20, #0x50]
     240: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     244: f9400100     	ldr	x0, [x8]
		0000000000000244:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     248: 5281b801     	mov	w1, #0xdc0              // =3520
     24c: 52810002     	mov	w2, #0x800              // =2048
     250: 94000000     	bl	0x250 <zlog_register_client_stock+0x24c>
		0000000000000250:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     254: f9002a96     	str	x22, [x20, #0x50]
     258: f81f02e0     	stur	x0, [x23, #-0x10]
     25c: b4fffd80     	cbz	x0, 0x20c <zlog_register_client_stock+0x208>
     260: 52810008     	mov	w8, #0x800              // =2048
     264: f81d82ff     	stur	xzr, [x23, #-0x28]
     268: d10452f6     	sub	x22, x23, #0x114
     26c: a93e22ff     	stp	xzr, x8, [x23, #-0x20]
     270: aa1603e0     	mov	x0, x22
     274: 528003e2     	mov	w2, #0x1f               // =31
     278: f9400661     	ldr	x1, [x19, #0x8]
     27c: 94000000     	bl	0x27c <zlog_register_client_stock+0x278>
		000000000000027c:  R_AARCH64_CALL26	strncpy
     280: 3810b2ff     	sturb	wzr, [x23, #-0xf5]
     284: f9400a61     	ldr	x1, [x19, #0x10]
     288: b40000a1     	cbz	x1, 0x29c <zlog_register_client_stock+0x298>
     28c: d103d2e0     	sub	x0, x23, #0xf4
     290: 528003e2     	mov	w2, #0x1f               // =31
     294: 94000000     	bl	0x294 <zlog_register_client_stock+0x290>
		0000000000000294:  R_AARCH64_CALL26	strncpy
     298: 3812b2ff     	sturb	wzr, [x23, #-0xd5]
     29c: f9400e61     	ldr	x1, [x19, #0x18]
     2a0: d10462f4     	sub	x20, x23, #0x118
     2a4: b40000a1     	cbz	x1, 0x2b8 <zlog_register_client_stock+0x2b4>
     2a8: d10352e0     	sub	x0, x23, #0xd4
     2ac: 528007e2     	mov	w2, #0x3f               // =63
     2b0: 94000000     	bl	0x2b0 <zlog_register_client_stock+0x2ac>
		00000000000002b0:  R_AARCH64_CALL26	strncpy
     2b4: 3816b2ff     	sturb	wzr, [x23, #-0x95]
     2b8: f9401261     	ldr	x1, [x19, #0x20]
     2bc: b40000a1     	cbz	x1, 0x2d0 <zlog_register_client_stock+0x2cc>
     2c0: d10252e0     	sub	x0, x23, #0x94
     2c4: 528003e2     	mov	w2, #0x1f               // =31
     2c8: 94000000     	bl	0x2c8 <zlog_register_client_stock+0x2c4>
		00000000000002c8:  R_AARCH64_CALL26	strncpy
     2cc: 3818b2ff     	sturb	wzr, [x23, #-0x75]
     2d0: b9400268     	ldr	w8, [x19]
     2d4: b9000298     	str	w24, [x20]
     2d8: 52800029     	mov	w9, #0x1                // =1
     2dc: b81c82e8     	stur	w8, [x23, #-0x38]
     2e0: f9401668     	ldr	x8, [x19, #0x28]
     2e4: 390002e9     	strb	w9, [x23]
     2e8: f81902e8     	stur	x8, [x23, #-0x70]
     2ec: 1400000e     	b	0x324 <zlog_register_client_stock+0x320>
     2f0: d100c2e8     	sub	x8, x23, #0x30
     2f4: 52800049     	mov	w9, #0x2                // =2
     2f8: f829311f     	stset	x9, [x8]
     2fc: aa1503e0     	mov	x0, x21
     300: 94000000     	bl	0x300 <zlog_register_client_stock+0x2fc>
		0000000000000300:  R_AARCH64_CALL26	mutex_unlock
     304: b9400283     	ldr	w3, [x20]
     308: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base
     30c: 91000000     	add	x0, x0, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base
     310: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000310:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     314: 91000021     	add	x1, x1, #0x0
		0000000000000314:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     318: aa1603e2     	mov	x2, x22
     31c: 94000000     	bl	0x31c <zlog_register_client_stock+0x318>
		000000000000031c:  R_AARCH64_CALL26	_printk
     320: 17ffffaa     	b	0x1c8 <zlog_register_client_stock+0x1c4>
     324: d100c2e8     	sub	x8, x23, #0x30
     328: f9800111     	prfm	pstl1strm, [x8]
     32c: c85f7d09     	ldxr	x9, [x8]
     330: b27f0129     	orr	x9, x9, #0x2
     334: c80a7d09     	stxr	w10, x9, [x8]
     338: 35ffffaa     	cbnz	w10, 0x32c <zlog_register_client_stock+0x328>
     33c: 17fffff0     	b	0x2fc <zlog_register_client_stock+0x2f8>
