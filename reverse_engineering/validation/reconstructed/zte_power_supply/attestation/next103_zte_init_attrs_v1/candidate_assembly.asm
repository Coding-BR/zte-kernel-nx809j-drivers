
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000118 <zte_power_supply_init_attrs>:
     118: d503233f     	paciasp
     11c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     120: a9016ffc     	stp	x28, x27, [sp, #0x10]
     124: a90267fa     	stp	x26, x25, [sp, #0x20]
     128: a9035ff8     	stp	x24, x23, [sp, #0x30]
     12c: a90457f6     	stp	x22, x21, [sp, #0x40]
     130: a9054ff4     	stp	x20, x19, [sp, #0x50]
     134: 910003fd     	mov	x29, sp
     138: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000138:  R_AARCH64_ADR_PREL_PG_HI21	.data
     13c: 91000108     	add	x8, x8, #0x0
		000000000000013c:  R_AARCH64_ADD_ABS_LO12_NC	.data
     140: 52800261     	mov	w1, #0x13               // =19
     144: f9000408     	str	x8, [x0, #0x8]
     148: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49c
     14c: 91000000     	add	x0, x0, #0x0
		000000000000014c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49c
     150: 94000000     	bl	0x150 <zte_power_supply_init_attrs+0x38>
		0000000000000150:  R_AARCH64_CALL26	_printk
     154: aa1f03f7     	mov	x23, xzr
     158: aa1f03f3     	mov	x19, xzr
     15c: 52800b18     	mov	w24, #0x58              // =88
     160: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
     164: 91000339     	add	x25, x25, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
     168: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x578
     16c: 910002d6     	add	x22, x22, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x578
     170: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x25c
     174: 9100035a     	add	x26, x26, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x25c
     178: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3cc
     17c: 9100037b     	add	x27, x27, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3cc
     180: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     184: 9100039c     	add	x28, x28, #0x0
		0000000000000184:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     188: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000188:  R_AARCH64_ADR_PREL_PG_HI21	_ctype
     18c: 91000294     	add	x20, x20, #0x0
		000000000000018c:  R_AARCH64_ADD_ABS_LO12_NC	_ctype
     190: 14000013     	b	0x1dc <zte_power_supply_init_attrs+0xc4>
     194: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd2
     198: 91000000     	add	x0, x0, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd2
     19c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x306
     1a0: 91000021     	add	x1, x1, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x306
     1a4: 2a1303e2     	mov	w2, w19
     1a8: 94000000     	bl	0x1a8 <zte_power_supply_init_attrs+0x90>
		00000000000001a8:  R_AARCH64_CALL26	_printk
     1ac: 910022a0     	add	x0, x21, #0x8
     1b0: aa1603e1     	mov	x1, x22
     1b4: 2a1303e2     	mov	w2, w19
     1b8: 94000000     	bl	0x1b8 <zte_power_supply_init_attrs+0xa0>
		00000000000001b8:  R_AARCH64_CALL26	sprintf
     1bc: 910022a8     	add	x8, x21, #0x8
     1c0: 910162f7     	add	x23, x23, #0x58
     1c4: f8028ea8     	str	x8, [x21, #0x28]!
     1c8: f8337b95     	str	x21, [x28, x19, lsl #3]
     1cc: 91000673     	add	x19, x19, #0x1
     1d0: f1004e7f     	cmp	x19, #0x13
     1d4: a9016eba     	stp	x26, x27, [x21, #0x10]
     1d8: 540002e0     	b.eq	0x234 <zte_power_supply_init_attrs+0x11c>
     1dc: 9b186675     	madd	x21, x19, x24, x25
     1e0: f94002a8     	ldr	x8, [x21]
     1e4: b4fffd88     	cbz	x8, 0x194 <zte_power_supply_init_attrs+0x7c>
     1e8: 394022a9     	ldrb	w9, [x21, #0x8]
     1ec: 34fffe89     	cbz	w9, 0x1bc <zte_power_supply_init_attrs+0xa4>
     1f0: aa1703e8     	mov	x8, x23
     1f4: 9100210a     	add	x10, x8, #0x8
     1f8: f11a1d5f     	cmp	x10, #0x687
     1fc: 540002c8     	b.hi	0x254 <zte_power_supply_init_attrs+0x13c>
     200: 92401d2a     	and	x10, x9, #0xff
     204: 8b08032b     	add	x11, x25, x8
     208: f119fd1f     	cmp	x8, #0x67f
     20c: 386a6a8a     	ldrb	w10, [x20, x10]
     210: 531b014a     	ubfiz	w10, w10, #5, #1
     214: 0b090149     	add	w9, w10, w9
     218: 39002169     	strb	w9, [x11, #0x8]
     21c: 540001c0     	b.eq	0x254 <zte_power_supply_init_attrs+0x13c>
     220: 8b080329     	add	x9, x25, x8
     224: 91000508     	add	x8, x8, #0x1
     228: 39402529     	ldrb	w9, [x9, #0x9]
     22c: 35fffe49     	cbnz	w9, 0x1f4 <zte_power_supply_init_attrs+0xdc>
     230: 17ffffe3     	b	0x1bc <zte_power_supply_init_attrs+0xa4>
     234: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     238: a94457f6     	ldp	x22, x21, [sp, #0x40]
     23c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     240: a94267fa     	ldp	x26, x25, [sp, #0x20]
     244: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     248: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     24c: d50323bf     	autiasp
     250: d65f03c0     	ret
     254: d4200020     	brk	#0x1
