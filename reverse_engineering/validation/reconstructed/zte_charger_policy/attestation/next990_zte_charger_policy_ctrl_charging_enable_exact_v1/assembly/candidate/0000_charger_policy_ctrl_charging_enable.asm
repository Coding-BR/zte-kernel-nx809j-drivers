
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000104 <charger_policy_ctrl_charging_enable>:
     104: d503233f     	paciasp
     108: d10183ff     	sub	sp, sp, #0x60
     10c: a9027bfd     	stp	x29, x30, [sp, #0x20]
     110: f9001bf7     	str	x23, [sp, #0x30]
     114: a90457f6     	stp	x22, x21, [sp, #0x40]
     118: a9054ff4     	stp	x20, x19, [sp, #0x50]
     11c: 910083fd     	add	x29, sp, #0x20
     120: d5384108     	mrs	x8, SP_EL0
     124: aa0003f3     	mov	x19, x0
     128: 2a0203f5     	mov	w21, w2
     12c: f9438908     	ldr	x8, [x8, #0x710]
     130: 2a0103f4     	mov	w20, w1
     134: d10033a2     	sub	x2, x29, #0xc
     138: 2a1f03e1     	mov	w1, wzr
     13c: f81f83a8     	stur	x8, [x29, #-0x8]
     140: f940dc00     	ldr	x0, [x0, #0x1b8]
     144: 2901ffff     	stp	wzr, wzr, [sp, #0xc]
     148: b81f43bf     	stur	wzr, [x29, #-0xc]
     14c: 97ffff62     	bl	0xfffffffffffffed4 <policy_external_power_changed+0xffffffffffffbe64>
		000000000000014c:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     150: 36f80100     	tbz	w0, #0x1f, 0x170 <charger_policy_ctrl_charging_enable+0x6c>
     154: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d7
     158: 91000000     	add	x0, x0, #0x0
		0000000000000158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d7
     15c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000015c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     160: 91000021     	add	x1, x1, #0x0
		0000000000000160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     164: 94000000     	bl	0x164 <charger_policy_ctrl_charging_enable+0x60>
		0000000000000164:  R_AARCH64_CALL26	_printk
     168: 2a1f03f6     	mov	w22, wzr
     16c: 1400000b     	b	0x198 <charger_policy_ctrl_charging_enable+0x94>
     170: b85f43a8     	ldur	w8, [x29, #-0xc]
     174: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1acf
     178: 91000000     	add	x0, x0, #0x0
		0000000000000178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1acf
     17c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     180: 91000021     	add	x1, x1, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     184: 7100051f     	cmp	w8, #0x1
     188: 7a441904     	ccmp	w8, #0x4, #0x4, ne
     18c: 1a9f17f6     	cset	w22, eq
     190: 2a1603e2     	mov	w2, w22
     194: 94000000     	bl	0x194 <charger_policy_ctrl_charging_enable+0x90>
		0000000000000194:  R_AARCH64_CALL26	_printk
     198: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2004
     19c: 91000000     	add	x0, x0, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2004
     1a0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     1a4: 91000021     	add	x1, x1, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     1a8: 2a1603e2     	mov	w2, w22
     1ac: 94000000     	bl	0x1ac <charger_policy_ctrl_charging_enable+0xa8>
		00000000000001ac:  R_AARCH64_CALL26	_printk
     1b0: f940e260     	ldr	x0, [x19, #0x1c0]
     1b4: 910033e2     	add	x2, sp, #0xc
     1b8: 52800061     	mov	w1, #0x3                // =3
     1bc: 94000058     	bl	0x31c <charger_policy_disable_cas>
		00000000000001bc:  R_AARCH64_CALL26	.text+0x1834
     1c0: 36f80080     	tbz	w0, #0x1f, 0x1d0 <charger_policy_ctrl_charging_enable+0xcc>
     1c4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x241
     1c8: 91000000     	add	x0, x0, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x241
     1cc: 1400000f     	b	0x208 <charger_policy_ctrl_charging_enable+0x104>
     1d0: b9400ff6     	ldr	w22, [sp, #0xc]
     1d4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2026
     1d8: 91000000     	add	x0, x0, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2026
     1dc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     1e0: 91000021     	add	x1, x1, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     1e4: 2a1603e2     	mov	w2, w22
     1e8: 94000000     	bl	0x1e8 <charger_policy_ctrl_charging_enable+0xe4>
		00000000000001e8:  R_AARCH64_CALL26	_printk
     1ec: f940e260     	ldr	x0, [x19, #0x1c0]
     1f0: 910043e2     	add	x2, sp, #0x10
     1f4: 52800081     	mov	w1, #0x4                // =4
     1f8: 94000049     	bl	0x31c <charger_policy_disable_cas>
		00000000000001f8:  R_AARCH64_CALL26	.text+0x1834
     1fc: 36f80100     	tbz	w0, #0x1f, 0x21c <charger_policy_ctrl_charging_enable+0x118>
     200: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x284
     204: 91000000     	add	x0, x0, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x284
     208: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     20c: 91000021     	add	x1, x1, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     210: 94000000     	bl	0x210 <charger_policy_ctrl_charging_enable+0x10c>
		0000000000000210:  R_AARCH64_CALL26	_printk
     214: 2a1f03e0     	mov	w0, wzr
     218: 14000016     	b	0x270 <charger_policy_ctrl_charging_enable+0x16c>
     21c: b94013f7     	ldr	w23, [sp, #0x10]
     220: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e48
     224: 91000000     	add	x0, x0, #0x0
		0000000000000224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e48
     228: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     22c: 91000021     	add	x1, x1, #0x0
		000000000000022c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     230: 2a1703e2     	mov	w2, w23
     234: 94000000     	bl	0x234 <charger_policy_ctrl_charging_enable+0x130>
		0000000000000234:  R_AARCH64_CALL26	_printk
     238: 120002b5     	and	w21, w21, #0x1
     23c: 12000294     	and	w20, w20, #0x1
     240: 6b1502df     	cmp	w22, w21
     244: 540002e1     	b.ne	0x2a0 <charger_policy_ctrl_charging_enable+0x19c>
     248: 6b1402ff     	cmp	w23, w20
     24c: 540004c1     	b.ne	0x2e4 <charger_policy_ctrl_charging_enable+0x1e0>
     250: 6b1402ff     	cmp	w23, w20
     254: 540000c0     	b.eq	0x26c <charger_policy_ctrl_charging_enable+0x168>
     258: f940e260     	ldr	x0, [x19, #0x1c0]
     25c: 52800081     	mov	w1, #0x4                // =4
     260: 2a1403e2     	mov	w2, w20
     264: 9400006f     	bl	0x420 <charger_policy_disable_cas+0x104>
		0000000000000264:  R_AARCH64_CALL26	.text+0x1934
     268: 37f80520     	tbnz	w0, #0x1f, 0x30c <charger_policy_ctrl_charging_enable+0x208>
     26c: 52800020     	mov	w0, #0x1                // =1
     270: d5384108     	mrs	x8, SP_EL0
     274: f9438908     	ldr	x8, [x8, #0x710]
     278: f85f83a9     	ldur	x9, [x29, #-0x8]
     27c: eb09011f     	cmp	x8, x9
     280: 540004c1     	b.ne	0x318 <charger_policy_ctrl_charging_enable+0x214>
     284: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     288: f9401bf7     	ldr	x23, [sp, #0x30]
     28c: a94457f6     	ldp	x22, x21, [sp, #0x40]
     290: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     294: 910183ff     	add	sp, sp, #0x60
     298: d50323bf     	autiasp
     29c: d65f03c0     	ret
     2a0: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e77
     2a4: 91000000     	add	x0, x0, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e77
     2a8: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     2ac: 91000021     	add	x1, x1, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     2b0: 2a1603e2     	mov	w2, w22
     2b4: 2a1503e3     	mov	w3, w21
     2b8: 2a1703e4     	mov	w4, w23
     2bc: 2a1403e5     	mov	w5, w20
     2c0: 94000000     	bl	0x2c0 <charger_policy_ctrl_charging_enable+0x1bc>
		00000000000002c0:  R_AARCH64_CALL26	_printk
     2c4: f940e260     	ldr	x0, [x19, #0x1c0]
     2c8: 52800061     	mov	w1, #0x3                // =3
     2cc: 2a1503e2     	mov	w2, w21
     2d0: 94000054     	bl	0x420 <charger_policy_disable_cas+0x104>
		00000000000002d0:  R_AARCH64_CALL26	.text+0x1934
     2d4: 36fffbe0     	tbz	w0, #0x1f, 0x250 <charger_policy_ctrl_charging_enable+0x14c>
     2d8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cc
     2dc: 91000000     	add	x0, x0, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cc
     2e0: 17ffffca     	b	0x208 <charger_policy_ctrl_charging_enable+0x104>
     2e4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e77
     2e8: 91000000     	add	x0, x0, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e77
     2ec: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000002ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec0
     2f0: 91000021     	add	x1, x1, #0x0
		00000000000002f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec0
     2f4: 2a1603e2     	mov	w2, w22
     2f8: 2a1603e3     	mov	w3, w22
     2fc: 2a1703e4     	mov	w4, w23
     300: 2a1403e5     	mov	w5, w20
     304: 94000000     	bl	0x304 <charger_policy_ctrl_charging_enable+0x200>
		0000000000000304:  R_AARCH64_CALL26	_printk
     308: 17ffffd2     	b	0x250 <charger_policy_ctrl_charging_enable+0x14c>
     30c: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x137c
     310: 91000000     	add	x0, x0, #0x0
		0000000000000310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x137c
     314: 17ffffbd     	b	0x208 <charger_policy_ctrl_charging_enable+0x104>
     318: 94000000     	bl	0x318 <charger_policy_ctrl_charging_enable+0x214>
		0000000000000318:  R_AARCH64_CALL26	__stack_chk_fail
