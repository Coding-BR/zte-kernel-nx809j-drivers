
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <charger_policy_status_runchging>:
       4: d503233f     	paciasp
       8: d10103ff     	sub	sp, sp, #0x40
       c: a9017bfd     	stp	x29, x30, [sp, #0x10]
      10: f90013f5     	str	x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910043fd     	add	x29, sp, #0x10
      1c: d5384108     	mrs	x8, SP_EL0
      20: aa0003f3     	mov	x19, x0
      24: f9438908     	ldr	x8, [x8, #0x710]
      28: f90007e8     	str	x8, [sp, #0x8]
      2c: 39487008     	ldrb	w8, [x0, #0x21c]
      30: 7100051f     	cmp	w8, #0x1
      34: 54000181     	b.ne	0x64 <charger_policy_status_runchging+0x60>
      38: 52800020     	mov	w0, #0x1                // =1
      3c: 94000000     	bl	0x3c <charger_policy_status_runchging+0x38>
		000000000000003c:  R_AARCH64_CALL26	ktime_get_with_offset
      40: 94000000     	bl	0x40 <charger_policy_status_runchging+0x3c>
		0000000000000040:  R_AARCH64_CALL26	ns_to_timespec64
      44: 39487668     	ldrb	w8, [x19, #0x21d]
      48: 7100051f     	cmp	w8, #0x1
      4c: 54000ac0     	b.eq	0x1a4 <charger_policy_status_runchging+0x1a0>
      50: f9410668     	ldr	x8, [x19, #0x208]
      54: b941fa69     	ldr	w9, [x19, #0x1f8]
      58: cb080008     	sub	x8, x0, x8
      5c: eb09011f     	cmp	x8, x9
      60: 54000bcc     	b.gt	0x1d8 <charger_policy_status_runchging+0x1d4>
      64: aa1303e0     	mov	x0, x19
      68: 52800021     	mov	w1, #0x1                // =1
      6c: 52800022     	mov	w2, #0x1                // =1
      70: 94000000     	bl	0x70 <charger_policy_status_runchging+0x6c>
		0000000000000070:  R_AARCH64_CALL26	.text+0x6dc
      74: f940de60     	ldr	x0, [x19, #0x1b8]
      78: 910013e2     	add	x2, sp, #0x4
      7c: 528005e1     	mov	w1, #0x2f               // =47
      80: b90007ff     	str	wzr, [sp, #0x4]
      84: 94000000     	bl	0x84 <charger_policy_status_runchging+0x80>
		0000000000000084:  R_AARCH64_CALL26	.text+0x8c8
      88: 37f80700     	tbnz	w0, #0x1f, 0x168 <charger_policy_status_runchging+0x164>
      8c: 39487668     	ldrb	w8, [x19, #0x21d]
      90: 7100051f     	cmp	w8, #0x1
      94: 54000740     	b.eq	0x17c <charger_policy_status_runchging+0x178>
      98: 39486668     	ldrb	w8, [x19, #0x219]
      9c: 7100051f     	cmp	w8, #0x1
      a0: 540002a1     	b.ne	0xf4 <charger_policy_status_runchging+0xf0>
      a4: 39487268     	ldrb	w8, [x19, #0x21c]
      a8: 36000148     	tbz	w8, #0x0, 0xd0 <charger_policy_status_runchging+0xcc>
      ac: b941f268     	ldr	w8, [x19, #0x1f0]
      b0: b941a274     	ldr	w20, [x19, #0x1a0]
      b4: 34000148     	cbz	w8, 0xdc <charger_policy_status_runchging+0xd8>
      b8: b941a668     	ldr	w8, [x19, #0x1a4]
      bc: 0b140108     	add	w8, w8, w20
      c0: 7100011f     	cmp	w8, #0x0
      c4: 1a88a508     	cinc	w8, w8, lt
      c8: 13017d14     	asr	w20, w8, #1
      cc: 14000004     	b	0xdc <charger_policy_status_runchging+0xd8>
      d0: b941a268     	ldr	w8, [x19, #0x1a0]
      d4: b941aa69     	ldr	w9, [x19, #0x1a8]
      d8: 0b080134     	add	w20, w9, w8
      dc: 39487668     	ldrb	w8, [x19, #0x21d]
      e0: b94007f5     	ldr	w21, [sp, #0x4]
      e4: 7100051f     	cmp	w8, #0x1
      e8: 54000860     	b.eq	0x1f4 <charger_policy_status_runchging+0x1f0>
      ec: 6b1402bf     	cmp	w21, w20
      f0: 5400094a     	b.ge	0x218 <charger_policy_status_runchging+0x214>
      f4: 39486a68     	ldrb	w8, [x19, #0x21a]
      f8: 7100051f     	cmp	w8, #0x1
      fc: 54000b61     	b.ne	0x268 <charger_policy_status_runchging+0x264>
     100: 39486e68     	ldrb	w8, [x19, #0x21b]
     104: 7100051f     	cmp	w8, #0x1
     108: 54000b01     	b.ne	0x268 <charger_policy_status_runchging+0x264>
     10c: 39487268     	ldrb	w8, [x19, #0x21c]
     110: 36000148     	tbz	w8, #0x0, 0x138 <charger_policy_status_runchging+0x134>
     114: b941f268     	ldr	w8, [x19, #0x1f0]
     118: b9419a74     	ldr	w20, [x19, #0x198]
     11c: 34000148     	cbz	w8, 0x144 <charger_policy_status_runchging+0x140>
     120: b9419e68     	ldr	w8, [x19, #0x19c]
     124: 0b140108     	add	w8, w8, w20
     128: 7100011f     	cmp	w8, #0x0
     12c: 1a88a508     	cinc	w8, w8, lt
     130: 13017d14     	asr	w20, w8, #1
     134: 14000004     	b	0x144 <charger_policy_status_runchging+0x140>
     138: b9419a68     	ldr	w8, [x19, #0x198]
     13c: b941aa69     	ldr	w9, [x19, #0x1a8]
     140: 0b080134     	add	w20, w9, w8
     144: 39487668     	ldrb	w8, [x19, #0x21d]
     148: b94007f5     	ldr	w21, [sp, #0x4]
     14c: 7100051f     	cmp	w8, #0x1
     150: 54000a40     	b.eq	0x298 <charger_policy_status_runchging+0x294>
     154: 6b1402bf     	cmp	w21, w20
     158: 5400088b     	b.lt	0x268 <charger_policy_status_runchging+0x264>
     15c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000015c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x106c
     160: 91000000     	add	x0, x0, #0x0
		0000000000000160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x106c
     164: 1400002f     	b	0x220 <charger_policy_status_runchging+0x21c>
     168: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f6
     16c: 91000000     	add	x0, x0, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f6
     170: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1763
     174: 91000021     	add	x1, x1, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1763
     178: 1400003b     	b	0x264 <charger_policy_status_runchging+0x260>
     17c: 39486662     	ldrb	w2, [x19, #0x219]
     180: 39486a63     	ldrb	w3, [x19, #0x21a]
     184: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9af
     188: 91000000     	add	x0, x0, #0x0
		0000000000000188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9af
     18c: 39486e64     	ldrb	w4, [x19, #0x21b]
     190: 39487265     	ldrb	w5, [x19, #0x21c]
     194: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1763
     198: 91000021     	add	x1, x1, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1763
     19c: 94000000     	bl	0x19c <charger_policy_status_runchging+0x198>
		000000000000019c:  R_AARCH64_CALL26	_printk
     1a0: 17ffffbe     	b	0x98 <charger_policy_status_runchging+0x94>
     1a4: f9410663     	ldr	x3, [x19, #0x208]
     1a8: b941fa65     	ldr	w5, [x19, #0x1f8]
     1ac: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f40
     1b0: 91000108     	add	x8, x8, #0x0
		00000000000001b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f40
     1b4: aa0003f4     	mov	x20, x0
     1b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x220
     1bc: 91000021     	add	x1, x1, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x220
     1c0: cb030004     	sub	x4, x0, x3
     1c4: aa0803e0     	mov	x0, x8
     1c8: aa1403e2     	mov	x2, x20
     1cc: 94000000     	bl	0x1cc <charger_policy_status_runchging+0x1c8>
		00000000000001cc:  R_AARCH64_CALL26	_printk
     1d0: aa1403e0     	mov	x0, x20
     1d4: 17ffff9f     	b	0x50 <charger_policy_status_runchging+0x4c>
     1d8: b941ee68     	ldr	w8, [x19, #0x1ec]
     1dc: 52800069     	mov	w9, #0x3                // =3
     1e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b0
     1e4: 91000000     	add	x0, x0, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b0
     1e8: b901ee69     	str	w9, [x19, #0x1ec]
     1ec: b901f268     	str	w8, [x19, #0x1f0]
     1f0: 1400001b     	b	0x25c <charger_policy_status_runchging+0x258>
     1f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad
     1f8: 91000000     	add	x0, x0, #0x0
		00000000000001f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad
     1fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1763
     200: 91000021     	add	x1, x1, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1763
     204: 2a1503e2     	mov	w2, w21
     208: 2a1403e3     	mov	w3, w20
     20c: 94000000     	bl	0x20c <charger_policy_status_runchging+0x208>
		000000000000020c:  R_AARCH64_CALL26	_printk
     210: 6b1402bf     	cmp	w21, w20
     214: 54fff70b     	b.lt	0xf4 <charger_policy_status_runchging+0xf0>
     218: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbed
     21c: 91000000     	add	x0, x0, #0x0
		000000000000021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbed
     220: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1763
     224: 91000021     	add	x1, x1, #0x0
		0000000000000224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1763
     228: 2a1503e2     	mov	w2, w21
     22c: 2a1403e3     	mov	w3, w20
     230: 94000000     	bl	0x230 <charger_policy_status_runchging+0x22c>
		0000000000000230:  R_AARCH64_CALL26	_printk
     234: b941ee68     	ldr	w8, [x19, #0x1ec]
     238: 52800049     	mov	w9, #0x2                // =2
     23c: aa1303e0     	mov	x0, x19
     240: 2a1f03e1     	mov	w1, wzr
     244: 2a1f03e2     	mov	w2, wzr
     248: b901ee69     	str	w9, [x19, #0x1ec]
     24c: b901f268     	str	w8, [x19, #0x1f0]
     250: 94000000     	bl	0x250 <charger_policy_status_runchging+0x24c>
		0000000000000250:  R_AARCH64_CALL26	.text+0x6dc
     254: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fa
     258: 91000000     	add	x0, x0, #0x0
		0000000000000258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fa
     25c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dac
     260: 91000021     	add	x1, x1, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dac
     264: 94000000     	bl	0x264 <charger_policy_status_runchging+0x260>
		0000000000000264:  R_AARCH64_CALL26	_printk
     268: d5384108     	mrs	x8, SP_EL0
     26c: f9438908     	ldr	x8, [x8, #0x710]
     270: f94007e9     	ldr	x9, [sp, #0x8]
     274: eb09011f     	cmp	x8, x9
     278: 54000241     	b.ne	0x2c0 <charger_policy_status_runchging+0x2bc>
     27c: 2a1f03e0     	mov	w0, wzr
     280: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     284: f94013f5     	ldr	x21, [sp, #0x20]
     288: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     28c: 910103ff     	add	sp, sp, #0x40
     290: d50323bf     	autiasp
     294: d65f03c0     	ret
     298: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1923
     29c: 91000000     	add	x0, x0, #0x0
		000000000000029c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1923
     2a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1763
     2a4: 91000021     	add	x1, x1, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1763
     2a8: 2a1503e2     	mov	w2, w21
     2ac: 2a1403e3     	mov	w3, w20
     2b0: 94000000     	bl	0x2b0 <charger_policy_status_runchging+0x2ac>
		00000000000002b0:  R_AARCH64_CALL26	_printk
     2b4: 6b1402bf     	cmp	w21, w20
     2b8: 54fffd8b     	b.lt	0x268 <charger_policy_status_runchging+0x264>
     2bc: 17ffffa8     	b	0x15c <charger_policy_status_runchging+0x158>
     2c0: 94000000     	bl	0x2c0 <charger_policy_status_runchging+0x2bc>
		00000000000002c0:  R_AARCH64_CALL26	__stack_chk_fail
