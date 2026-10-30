
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <nb_fan_probe>:
       4: d503233f     	paciasp
       8: d10103ff     	sub	sp, sp, #0x40
       c: a9017bfd     	stp	x29, x30, [sp, #0x10]
      10: f90013f5     	str	x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910043fd     	add	x29, sp, #0x10
      1c: d5384108     	mrs	x8, SP_EL0
      20: aa0003f3     	mov	x19, x0
      24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x424
      28: 91000000     	add	x0, x0, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x424
      2c: f9438908     	ldr	x8, [x8, #0x710]
      30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
      34: 91000021     	add	x1, x1, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
      38: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
      3c: 91000042     	add	x2, x2, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
      40: 52806e63     	mov	w3, #0x373              // =883
      44: f90007e8     	str	x8, [sp, #0x8]
      48: 94000000     	bl	0x48 <nb_fan_probe+0x44>
		0000000000000048:  R_AARCH64_CALL26	_printk
      4c: 91004273     	add	x19, x19, #0x10
      50: 52800b01     	mov	w1, #0x58               // =88
      54: 5281b802     	mov	w2, #0xdc0              // =3520
      58: aa1303e0     	mov	x0, x19
      5c: 94000000     	bl	0x5c <nb_fan_probe+0x58>
		000000000000005c:  R_AARCH64_CALL26	devm_kmalloc
      60: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000060:  R_AARCH64_ADR_PREL_PG_HI21	chip
      64: f9000280     	str	x0, [x20]
		0000000000000064:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      68: b50001c0     	cbnz	x0, 0xa0 <nb_fan_probe+0x9c>
      6c: 12800173     	mov	w19, #-0xc              // =-12
      70: d5384108     	mrs	x8, SP_EL0
      74: f9438908     	ldr	x8, [x8, #0x710]
      78: f94007e9     	ldr	x9, [sp, #0x8]
      7c: eb09011f     	cmp	x8, x9
      80: 54002521     	b.ne	0x524 <nb_fan_probe+0x520>
      84: 2a1303e0     	mov	w0, w19
      88: a9434ff4     	ldp	x20, x19, [sp, #0x30]
      8c: f94013f5     	ldr	x21, [sp, #0x20]
      90: a9417bfd     	ldp	x29, x30, [sp, #0x10]
      94: 910103ff     	add	sp, sp, #0x40
      98: d50323bf     	autiasp
      9c: d65f03c0     	ret
      a0: f9000013     	str	x19, [x0]
      a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ad
      a8: 91000021     	add	x1, x1, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ad
      ac: aa0003f5     	mov	x21, x0
      b0: aa1303e0     	mov	x0, x19
      b4: b90007ff     	str	wzr, [sp, #0x4]
      b8: 94000000     	bl	0xb8 <nb_fan_probe+0xb4>
		00000000000000b8:  R_AARCH64_CALL26	regulator_get
      bc: aa1503e8     	mov	x8, x21
      c0: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
      c4: f90026a0     	str	x0, [x21, #0x48]
      c8: 540001a9     	b.ls	0xfc <nb_fan_probe+0xf8>
      cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
      d0: 91000000     	add	x0, x0, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
      d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
      d8: 91000021     	add	x1, x1, #0x0
		00000000000000d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
      dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
      e0: 91000042     	add	x2, x2, #0x0
		00000000000000e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
      e4: 52805ec3     	mov	w3, #0x2f6              // =758
      e8: aa0803f3     	mov	x19, x8
      ec: 94000000     	bl	0xec <nb_fan_probe+0xe8>
		00000000000000ec:  R_AARCH64_CALL26	_printk
      f0: b9404a73     	ldr	w19, [x19, #0x48]
      f4: 34000653     	cbz	w19, 0x1bc <nb_fan_probe+0x1b8>
      f8: 1400007a     	b	0x2e0 <nb_fan_probe+0x2dc>
      fc: f9400108     	ldr	x8, [x8]
     100: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a7
     104: 91000021     	add	x1, x1, #0x0
		0000000000000104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a7
     108: 910013e2     	add	x2, sp, #0x4
     10c: 52800023     	mov	w3, #0x1                // =1
     110: aa1f03e4     	mov	x4, xzr
     114: f9417500     	ldr	x0, [x8, #0x2e8]
     118: 94000000     	bl	0x118 <nb_fan_probe+0x114>
		0000000000000118:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     11c: 37f80060     	tbnz	w0, #0x1f, 0x128 <nb_fan_probe+0x124>
     120: b94007f3     	ldr	w19, [sp, #0x4]
     124: 1400000d     	b	0x158 <nb_fan_probe+0x154>
     128: 2a0003e4     	mov	w4, w0
     12c: 52973013     	mov	w19, #0xb980            // =47488
     130: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179
     134: 91000000     	add	x0, x0, #0x0
		0000000000000134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179
     138: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     13c: 91000021     	add	x1, x1, #0x0
		000000000000013c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     140: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     144: 91000042     	add	x2, x2, #0x0
		0000000000000144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     148: 52805fa3     	mov	w3, #0x2fd              // =765
     14c: 72a00553     	movk	w19, #0x2a, lsl #16
     150: 94000000     	bl	0x150 <nb_fan_probe+0x14c>
		0000000000000150:  R_AARCH64_CALL26	_printk
     154: b90007f3     	str	w19, [sp, #0x4]
     158: f94026a0     	ldr	x0, [x21, #0x48]
     15c: 2a1303e1     	mov	w1, w19
     160: 2a1303e2     	mov	w2, w19
     164: 94000000     	bl	0x164 <nb_fan_probe+0x160>
		0000000000000164:  R_AARCH64_CALL26	regulator_set_voltage
     168: 35000820     	cbnz	w0, 0x26c <nb_fan_probe+0x268>
     16c: b94007e4     	ldr	w4, [sp, #0x4]
     170: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
     174: 91000000     	add	x0, x0, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
     178: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     17c: 91000021     	add	x1, x1, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     180: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     184: 91000042     	add	x2, x2, #0x0
		0000000000000184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     188: 528060e3     	mov	w3, #0x307              // =775
     18c: 94000000     	bl	0x18c <nb_fan_probe+0x188>
		000000000000018c:  R_AARCH64_CALL26	_printk
     190: f94026a0     	ldr	x0, [x21, #0x48]
     194: 94000000     	bl	0x194 <nb_fan_probe+0x190>
		0000000000000194:  R_AARCH64_CALL26	regulator_is_enabled
     198: 35000920     	cbnz	w0, 0x2bc <nb_fan_probe+0x2b8>
     19c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x935
     1a0: 91000000     	add	x0, x0, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x935
     1a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     1a8: 91000021     	add	x1, x1, #0x0
		00000000000001a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     1ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     1b0: 91000042     	add	x2, x2, #0x0
		00000000000001b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     1b4: 528061a3     	mov	w3, #0x30d              // =781
     1b8: 94000000     	bl	0x1b8 <nb_fan_probe+0x1b4>
		00000000000001b8:  R_AARCH64_CALL26	_printk
     1bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac1
     1c0: 91000000     	add	x0, x0, #0x0
		00000000000001c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac1
     1c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     1c8: 91000021     	add	x1, x1, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     1cc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     1d0: 91000042     	add	x2, x2, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     1d4: 52807003     	mov	w3, #0x380              // =896
     1d8: 94000000     	bl	0x1d8 <nb_fan_probe+0x1d4>
		00000000000001d8:  R_AARCH64_CALL26	_printk
     1dc: f9400295     	ldr	x21, [x20]
		00000000000001dc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     1e0: f94002a0     	ldr	x0, [x21]
     1e4: 94000000     	bl	0x1e4 <nb_fan_probe+0x1e0>
		00000000000001e4:  R_AARCH64_CALL26	devm_pinctrl_get
     1e8: aa0003f3     	mov	x19, x0
     1ec: b4000560     	cbz	x0, 0x298 <nb_fan_probe+0x294>
     1f0: b13ffe7f     	cmn	x19, #0xfff
     1f4: 54000522     	b.hs	0x298 <nb_fan_probe+0x294>
     1f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b6
     1fc: 91000000     	add	x0, x0, #0x0
		00000000000001fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b6
     200: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     204: 91000021     	add	x1, x1, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     208: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea
     20c: 91000042     	add	x2, x2, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea
     210: 52806523     	mov	w3, #0x329              // =809
     214: 94000000     	bl	0x214 <nb_fan_probe+0x210>
		0000000000000214:  R_AARCH64_CALL26	_printk
     218: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75f
     21c: 91000021     	add	x1, x1, #0x0
		000000000000021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75f
     220: aa1303e0     	mov	x0, x19
     224: 94000000     	bl	0x224 <nb_fan_probe+0x220>
		0000000000000224:  R_AARCH64_CALL26	pinctrl_lookup_state
     228: f9002aa0     	str	x0, [x21, #0x50]
     22c: b40006a0     	cbz	x0, 0x300 <nb_fan_probe+0x2fc>
     230: b13ffc1f     	cmn	x0, #0xfff
     234: 54000662     	b.hs	0x300 <nb_fan_probe+0x2fc>
     238: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ae
     23c: 91000000     	add	x0, x0, #0x0
		000000000000023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ae
     240: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     244: 91000021     	add	x1, x1, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     248: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea
     24c: 91000042     	add	x2, x2, #0x0
		000000000000024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea
     250: 52806623     	mov	w3, #0x331              // =817
     254: 94000000     	bl	0x254 <nb_fan_probe+0x250>
		0000000000000254:  R_AARCH64_CALL26	_printk
     258: f9402aa1     	ldr	x1, [x21, #0x50]
     25c: aa1303e0     	mov	x0, x19
     260: 94000000     	bl	0x260 <nb_fan_probe+0x25c>
		0000000000000260:  R_AARCH64_CALL26	pinctrl_select_state
     264: 2a0003f3     	mov	w19, w0
     268: 1400002f     	b	0x324 <nb_fan_probe+0x320>
     26c: 2a0003f3     	mov	w19, w0
     270: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f8
     274: 91000000     	add	x0, x0, #0x0
		0000000000000274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f8
     278: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     27c: 91000021     	add	x1, x1, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     280: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     284: 91000042     	add	x2, x2, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     288: 52806083     	mov	w3, #0x304              // =772
     28c: 2a1303e4     	mov	w4, w19
     290: 94000000     	bl	0x290 <nb_fan_probe+0x28c>
		0000000000000290:  R_AARCH64_CALL26	_printk
     294: 14000013     	b	0x2e0 <nb_fan_probe+0x2dc>
     298: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae9
     29c: 91000000     	add	x0, x0, #0x0
		000000000000029c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae9
     2a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     2a4: 91000021     	add	x1, x1, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     2a8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea
     2ac: 91000042     	add	x2, x2, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea
     2b0: 528064c3     	mov	w3, #0x326              // =806
     2b4: 94000000     	bl	0x2b4 <nb_fan_probe+0x2b0>
		00000000000002b4:  R_AARCH64_CALL26	_printk
     2b8: 1400001b     	b	0x324 <nb_fan_probe+0x320>
     2bc: 2a0003f3     	mov	w19, w0
     2c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca
     2c4: 91000000     	add	x0, x0, #0x0
		00000000000002c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca
     2c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     2cc: 91000021     	add	x1, x1, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     2d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     2d4: 91000042     	add	x2, x2, #0x0
		00000000000002d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     2d8: 52806163     	mov	w3, #0x30b              // =779
     2dc: 94000000     	bl	0x2dc <nb_fan_probe+0x2d8>
		00000000000002dc:  R_AARCH64_CALL26	_printk
     2e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44a
     2e4: 91000000     	add	x0, x0, #0x0
		00000000000002e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44a
     2e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     2ec: 91000021     	add	x1, x1, #0x0
		00000000000002ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     2f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     2f4: 91000042     	add	x2, x2, #0x0
		00000000000002f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     2f8: 52806fa3     	mov	w3, #0x37d              // =893
     2fc: 14000026     	b	0x394 <nb_fan_probe+0x390>
     300: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e
     304: 91000000     	add	x0, x0, #0x0
		0000000000000304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e
     308: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     30c: 91000021     	add	x1, x1, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     310: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea
     314: 91000042     	add	x2, x2, #0x0
		0000000000000314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea
     318: 528065c3     	mov	w3, #0x32e              // =814
     31c: 94000000     	bl	0x31c <nb_fan_probe+0x318>
		000000000000031c:  R_AARCH64_CALL26	_printk
     320: b94052b3     	ldr	w19, [x21, #0x50]
     324: 350002b3     	cbnz	w19, 0x378 <nb_fan_probe+0x374>
     328: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c1
     32c: 91000000     	add	x0, x0, #0x0
		000000000000032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c1
     330: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     334: 91000021     	add	x1, x1, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     338: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     33c: 91000042     	add	x2, x2, #0x0
		000000000000033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     340: 52807103     	mov	w3, #0x388              // =904
     344: 94000000     	bl	0x344 <nb_fan_probe+0x340>
		0000000000000344:  R_AARCH64_CALL26	_printk
     348: f9400280     	ldr	x0, [x20]
		0000000000000348:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     34c: 94000000     	bl	0x34c <nb_fan_probe+0x348>
		000000000000034c:  R_AARCH64_CALL26	.text+0xd98
     350: 36f80280     	tbz	w0, #0x1f, 0x3a0 <nb_fan_probe+0x39c>
     354: 2a0003f3     	mov	w19, w0
     358: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba7
     35c: 91000000     	add	x0, x0, #0x0
		000000000000035c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba7
     360: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     364: 91000021     	add	x1, x1, #0x0
		0000000000000364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     368: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     36c: 91000042     	add	x2, x2, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     370: 528071a3     	mov	w3, #0x38d              // =909
     374: 14000008     	b	0x394 <nb_fan_probe+0x390>
     378: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     37c: 91000000     	add	x0, x0, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     380: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     384: 91000021     	add	x1, x1, #0x0
		0000000000000384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     388: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     38c: 91000042     	add	x2, x2, #0x0
		000000000000038c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     390: 528070a3     	mov	w3, #0x385              // =901
     394: 2a1303e4     	mov	w4, w19
     398: 94000000     	bl	0x398 <nb_fan_probe+0x394>
		0000000000000398:  R_AARCH64_CALL26	_printk
     39c: 17ffff35     	b	0x70 <nb_fan_probe+0x6c>
     3a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd2
     3a4: 91000000     	add	x0, x0, #0x0
		00000000000003a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd2
     3a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     3ac: 91000021     	add	x1, x1, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     3b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     3b4: 91000042     	add	x2, x2, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     3b8: 52807203     	mov	w3, #0x390              // =912
     3bc: 94000000     	bl	0x3bc <nb_fan_probe+0x3b8>
		00000000000003bc:  R_AARCH64_CALL26	_printk
     3c0: f9400280     	ldr	x0, [x20]
		00000000000003c0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     3c4: 94000000     	bl	0x3c4 <nb_fan_probe+0x3c0>
		00000000000003c4:  R_AARCH64_CALL26	.text+0x10b4
     3c8: 350005c0     	cbnz	w0, 0x480 <nb_fan_probe+0x47c>
     3cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x888
     3d0: 91000000     	add	x0, x0, #0x0
		00000000000003d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x888
     3d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     3d8: 91000021     	add	x1, x1, #0x0
		00000000000003d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     3dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     3e0: 91000042     	add	x2, x2, #0x0
		00000000000003e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     3e4: 52807303     	mov	w3, #0x398              // =920
     3e8: 94000000     	bl	0x3e8 <nb_fan_probe+0x3e4>
		00000000000003e8:  R_AARCH64_CALL26	_printk
     3ec: f9400288     	ldr	x8, [x20]
		00000000000003ec:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     3f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb82
     3f4: 91000021     	add	x1, x1, #0x0
		00000000000003f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb82
     3f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     3fc: 91000042     	add	x2, x2, #0x0
		00000000000003fc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     400: 91006100     	add	x0, x8, #0x18
     404: 94000000     	bl	0x404 <nb_fan_probe+0x400>
		0000000000000404:  R_AARCH64_CALL26	__mutex_init
     408: f9400288     	ldr	x8, [x20]
		0000000000000408:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     40c: 52800021     	mov	w1, #0x1                // =1
     410: 52800022     	mov	w2, #0x1                // =1
     414: f9400508     	ldr	x8, [x8, #0x8]
     418: 9100a100     	add	x0, x8, #0x28
     41c: 94000000     	bl	0x41c <nb_fan_probe+0x418>
		000000000000041c:  R_AARCH64_CALL26	hrtimer_init
     420: f9400288     	ldr	x8, [x20]
		0000000000000420:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     424: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000424:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1288
     428: 9100014a     	add	x10, x10, #0x0
		0000000000000428:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1288
     42c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000042c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d
     430: 91000000     	add	x0, x0, #0x0
		0000000000000430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d
     434: f9400509     	ldr	x9, [x8, #0x8]
     438: f900292a     	str	x10, [x9, #0x50]
     43c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000043c:  R_AARCH64_ADR_PREL_PG_HI21	kernel_kobj
     440: f9400109     	ldr	x9, [x8]
     444: f9400141     	ldr	x1, [x10]
		0000000000000444:  R_AARCH64_LDST64_ABS_LO12_NC	kernel_kobj
     448: f9004d28     	str	x8, [x9, #0x98]
     44c: 94000000     	bl	0x44c <nb_fan_probe+0x448>
		000000000000044c:  R_AARCH64_CALL26	kobject_create_and_add
     450: f9400288     	ldr	x8, [x20]
		0000000000000450:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     454: f9000900     	str	x0, [x8, #0x10]
     458: b5000260     	cbnz	x0, 0x4a4 <nb_fan_probe+0x4a0>
     45c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000045c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a3
     460: 91000000     	add	x0, x0, #0x0
		0000000000000460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a3
     464: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     468: 91000021     	add	x1, x1, #0x0
		0000000000000468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     46c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000046c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     470: 91000042     	add	x2, x2, #0x0
		0000000000000470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     474: 52807463     	mov	w3, #0x3a3              // =931
     478: 94000000     	bl	0x478 <nb_fan_probe+0x474>
		0000000000000478:  R_AARCH64_CALL26	_printk
     47c: 17fffefc     	b	0x6c <nb_fan_probe+0x68>
     480: 2a0003f3     	mov	w19, w0
     484: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79b
     488: 91000000     	add	x0, x0, #0x0
		0000000000000488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79b
     48c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000048c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     490: 91000021     	add	x1, x1, #0x0
		0000000000000490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     494: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     498: 91000042     	add	x2, x2, #0x0
		0000000000000498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     49c: 528072a3     	mov	w3, #0x395              // =917
     4a0: 17ffffbd     	b	0x394 <nb_fan_probe+0x390>
     4a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004a4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
     4a8: 91000021     	add	x1, x1, #0x0
		00000000000004a8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
     4ac: 94000000     	bl	0x4ac <nb_fan_probe+0x4a8>
		00000000000004ac:  R_AARCH64_CALL26	sysfs_create_group
     4b0: 35000260     	cbnz	w0, 0x4fc <nb_fan_probe+0x4f8>
     4b4: 90000013     	adrp	x19, 0x0 <.text>
		00000000000004b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     4b8: 91000273     	add	x19, x19, #0x0
		00000000000004b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     4bc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000004bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     4c0: 91000294     	add	x20, x20, #0x0
		00000000000004c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     4c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b0
     4c8: 91000000     	add	x0, x0, #0x0
		00000000000004c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b0
     4cc: aa1303e1     	mov	x1, x19
     4d0: aa1403e2     	mov	x2, x20
     4d4: 52807583     	mov	w3, #0x3ac              // =940
     4d8: 94000000     	bl	0x4d8 <nb_fan_probe+0x4d4>
		00000000000004d8:  R_AARCH64_CALL26	_printk
     4dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe3
     4e0: 91000000     	add	x0, x0, #0x0
		00000000000004e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe3
     4e4: aa1303e1     	mov	x1, x19
     4e8: aa1403e2     	mov	x2, x20
     4ec: 52807643     	mov	w3, #0x3b2              // =946
     4f0: 94000000     	bl	0x4f0 <nb_fan_probe+0x4ec>
		00000000000004f0:  R_AARCH64_CALL26	_printk
     4f4: 2a1f03f3     	mov	w19, wzr
     4f8: 17fffede     	b	0x70 <nb_fan_probe+0x6c>
     4fc: 2a0003f3     	mov	w19, w0
     500: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x477
     504: 91000000     	add	x0, x0, #0x0
		0000000000000504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x477
     508: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     50c: 91000021     	add	x1, x1, #0x0
		000000000000050c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     510: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     514: 91000042     	add	x2, x2, #0x0
		0000000000000514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     518: 52807523     	mov	w3, #0x3a9              // =937
     51c: 94000000     	bl	0x51c <nb_fan_probe+0x518>
		000000000000051c:  R_AARCH64_CALL26	_printk
     520: 17fffed4     	b	0x70 <nb_fan_probe+0x6c>
     524: 94000000     	bl	0x524 <nb_fan_probe+0x520>
		0000000000000524:  R_AARCH64_CALL26	__stack_chk_fail
