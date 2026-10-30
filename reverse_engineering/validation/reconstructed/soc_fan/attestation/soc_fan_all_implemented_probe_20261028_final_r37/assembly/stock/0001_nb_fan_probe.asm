
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000044 <nb_fan_probe>:
      44: d503233f     	paciasp
      48: d10103ff     	sub	sp, sp, #0x40
      4c: a9017bfd     	stp	x29, x30, [sp, #0x10]
      50: f90013f5     	str	x21, [sp, #0x20]
      54: a9034ff4     	stp	x20, x19, [sp, #0x30]
      58: 910043fd     	add	x29, sp, #0x10
      5c: d5384108     	mrs	x8, SP_EL0
      60: aa0003f3     	mov	x19, x0
      64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ee
      68: 91000000     	add	x0, x0, #0x0
		0000000000000068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ee
      6c: f9438908     	ldr	x8, [x8, #0x710]
      70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
      74: 91000021     	add	x1, x1, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
      78: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
      7c: 91000042     	add	x2, x2, #0x0
		000000000000007c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
      80: 52806e63     	mov	w3, #0x373              // =883
      84: f90007e8     	str	x8, [sp, #0x8]
      88: 94000000     	bl	0x88 <nb_fan_probe+0x44>
		0000000000000088:  R_AARCH64_CALL26	_printk
      8c: 91004273     	add	x19, x19, #0x10
      90: 52800b01     	mov	w1, #0x58               // =88
      94: 5281b802     	mov	w2, #0xdc0              // =3520
      98: aa1303e0     	mov	x0, x19
      9c: 94000000     	bl	0x9c <nb_fan_probe+0x58>
		000000000000009c:  R_AARCH64_CALL26	devm_kmalloc
      a0: 90000014     	adrp	x20, 0x0 <.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	chip
      a4: f9000280     	str	x0, [x20]
		00000000000000a4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      a8: b50001c0     	cbnz	x0, 0xe0 <nb_fan_probe+0x9c>
      ac: 12800173     	mov	w19, #-0xc              // =-12
      b0: d5384108     	mrs	x8, SP_EL0
      b4: f9438908     	ldr	x8, [x8, #0x710]
      b8: f94007e9     	ldr	x9, [sp, #0x8]
      bc: eb09011f     	cmp	x8, x9
      c0: 54002521     	b.ne	0x564 <nb_fan_probe+0x520>
      c4: 2a1303e0     	mov	w0, w19
      c8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
      cc: f94013f5     	ldr	x21, [sp, #0x20]
      d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
      d4: 910103ff     	add	sp, sp, #0x40
      d8: d50323bf     	autiasp
      dc: d65f03c0     	ret
      e0: f9000013     	str	x19, [x0]
      e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x477
      e8: 91000021     	add	x1, x1, #0x0
		00000000000000e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x477
      ec: aa0003f5     	mov	x21, x0
      f0: aa1303e0     	mov	x0, x19
      f4: b90007ff     	str	wzr, [sp, #0x4]
      f8: 94000000     	bl	0xf8 <nb_fan_probe+0xb4>
		00000000000000f8:  R_AARCH64_CALL26	regulator_get
      fc: aa1503e8     	mov	x8, x21
     100: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     104: f90026a0     	str	x0, [x21, #0x48]
     108: 540001a9     	b.ls	0x13c <nb_fan_probe+0xf8>
     10c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
     110: 91000000     	add	x0, x0, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
     114: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     118: 91000021     	add	x1, x1, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     11c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     120: 91000042     	add	x2, x2, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     124: 52805ec3     	mov	w3, #0x2f6              // =758
     128: aa0803f3     	mov	x19, x8
     12c: 94000000     	bl	0x12c <nb_fan_probe+0xe8>
		000000000000012c:  R_AARCH64_CALL26	_printk
     130: b9404a73     	ldr	w19, [x19, #0x48]
     134: 34000653     	cbz	w19, 0x1fc <nb_fan_probe+0x1b8>
     138: 1400007a     	b	0x320 <nb_fan_probe+0x2dc>
     13c: f9400108     	ldr	x8, [x8]
     140: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x681
     144: 91000021     	add	x1, x1, #0x0
		0000000000000144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x681
     148: 910013e2     	add	x2, sp, #0x4
     14c: 52800023     	mov	w3, #0x1                // =1
     150: aa1f03e4     	mov	x4, xzr
     154: f9417500     	ldr	x0, [x8, #0x2e8]
     158: 94000000     	bl	0x158 <nb_fan_probe+0x114>
		0000000000000158:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     15c: 37f80060     	tbnz	w0, #0x1f, 0x168 <nb_fan_probe+0x124>
     160: b94007f3     	ldr	w19, [sp, #0x4]
     164: 1400000d     	b	0x198 <nb_fan_probe+0x154>
     168: 2a0003e4     	mov	w4, w0
     16c: 52973013     	mov	w19, #0xb980            // =47488
     170: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179
     174: 91000000     	add	x0, x0, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179
     178: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     17c: 91000021     	add	x1, x1, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     180: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     184: 91000042     	add	x2, x2, #0x0
		0000000000000184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     188: 52805fa3     	mov	w3, #0x2fd              // =765
     18c: 72a00553     	movk	w19, #0x2a, lsl #16
     190: 94000000     	bl	0x190 <nb_fan_probe+0x14c>
		0000000000000190:  R_AARCH64_CALL26	_printk
     194: b90007f3     	str	w19, [sp, #0x4]
     198: f94026a0     	ldr	x0, [x21, #0x48]
     19c: 2a1303e1     	mov	w1, w19
     1a0: 2a1303e2     	mov	w2, w19
     1a4: 94000000     	bl	0x1a4 <nb_fan_probe+0x160>
		00000000000001a4:  R_AARCH64_CALL26	regulator_set_voltage
     1a8: 35000820     	cbnz	w0, 0x2ac <nb_fan_probe+0x268>
     1ac: b94007e4     	ldr	w4, [sp, #0x4]
     1b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
     1b4: 91000000     	add	x0, x0, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
     1b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     1bc: 91000021     	add	x1, x1, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     1c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     1c4: 91000042     	add	x2, x2, #0x0
		00000000000001c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     1c8: 528060e3     	mov	w3, #0x307              // =775
     1cc: 94000000     	bl	0x1cc <nb_fan_probe+0x188>
		00000000000001cc:  R_AARCH64_CALL26	_printk
     1d0: f94026a0     	ldr	x0, [x21, #0x48]
     1d4: 94000000     	bl	0x1d4 <nb_fan_probe+0x190>
		00000000000001d4:  R_AARCH64_CALL26	regulator_is_enabled
     1d8: 35000920     	cbnz	w0, 0x2fc <nb_fan_probe+0x2b8>
     1dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x92f
     1e0: 91000000     	add	x0, x0, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x92f
     1e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     1e8: 91000021     	add	x1, x1, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     1ec: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     1f0: 91000042     	add	x2, x2, #0x0
		00000000000001f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     1f4: 528061a3     	mov	w3, #0x30d              // =781
     1f8: 94000000     	bl	0x1f8 <nb_fan_probe+0x1b4>
		00000000000001f8:  R_AARCH64_CALL26	_printk
     1fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac1
     200: 91000000     	add	x0, x0, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac1
     204: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     208: 91000021     	add	x1, x1, #0x0
		0000000000000208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     20c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     210: 91000042     	add	x2, x2, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     214: 52807003     	mov	w3, #0x380              // =896
     218: 94000000     	bl	0x218 <nb_fan_probe+0x1d4>
		0000000000000218:  R_AARCH64_CALL26	_printk
     21c: f9400295     	ldr	x21, [x20]
		000000000000021c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     220: f94002a0     	ldr	x0, [x21]
     224: 94000000     	bl	0x224 <nb_fan_probe+0x1e0>
		0000000000000224:  R_AARCH64_CALL26	devm_pinctrl_get
     228: aa0003f3     	mov	x19, x0
     22c: b4000560     	cbz	x0, 0x2d8 <nb_fan_probe+0x294>
     230: b13ffe7f     	cmn	x19, #0xfff
     234: 54000522     	b.hs	0x2d8 <nb_fan_probe+0x294>
     238: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x480
     23c: 91000000     	add	x0, x0, #0x0
		000000000000023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x480
     240: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     244: 91000021     	add	x1, x1, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     248: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea
     24c: 91000042     	add	x2, x2, #0x0
		000000000000024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea
     250: 52806523     	mov	w3, #0x329              // =809
     254: 94000000     	bl	0x254 <nb_fan_probe+0x210>
		0000000000000254:  R_AARCH64_CALL26	_printk
     258: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x735
     25c: 91000021     	add	x1, x1, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x735
     260: aa1303e0     	mov	x0, x19
     264: 94000000     	bl	0x264 <nb_fan_probe+0x220>
		0000000000000264:  R_AARCH64_CALL26	pinctrl_lookup_state
     268: f9002aa0     	str	x0, [x21, #0x50]
     26c: b40006a0     	cbz	x0, 0x340 <nb_fan_probe+0x2fc>
     270: b13ffc1f     	cmn	x0, #0xfff
     274: 54000662     	b.hs	0x340 <nb_fan_probe+0x2fc>
     278: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ae
     27c: 91000000     	add	x0, x0, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ae
     280: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     284: 91000021     	add	x1, x1, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     288: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea
     28c: 91000042     	add	x2, x2, #0x0
		000000000000028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea
     290: 52806623     	mov	w3, #0x331              // =817
     294: 94000000     	bl	0x294 <nb_fan_probe+0x250>
		0000000000000294:  R_AARCH64_CALL26	_printk
     298: f9402aa1     	ldr	x1, [x21, #0x50]
     29c: aa1303e0     	mov	x0, x19
     2a0: 94000000     	bl	0x2a0 <nb_fan_probe+0x25c>
		00000000000002a0:  R_AARCH64_CALL26	pinctrl_select_state
     2a4: 2a0003f3     	mov	w19, w0
     2a8: 1400002f     	b	0x364 <nb_fan_probe+0x320>
     2ac: 2a0003f3     	mov	w19, w0
     2b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f8
     2b4: 91000000     	add	x0, x0, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f8
     2b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     2bc: 91000021     	add	x1, x1, #0x0
		00000000000002bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     2c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     2c4: 91000042     	add	x2, x2, #0x0
		00000000000002c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     2c8: 52806083     	mov	w3, #0x304              // =772
     2cc: 2a1303e4     	mov	w4, w19
     2d0: 94000000     	bl	0x2d0 <nb_fan_probe+0x28c>
		00000000000002d0:  R_AARCH64_CALL26	_printk
     2d4: 14000013     	b	0x320 <nb_fan_probe+0x2dc>
     2d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae9
     2dc: 91000000     	add	x0, x0, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae9
     2e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     2e4: 91000021     	add	x1, x1, #0x0
		00000000000002e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     2e8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea
     2ec: 91000042     	add	x2, x2, #0x0
		00000000000002ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea
     2f0: 528064c3     	mov	w3, #0x326              // =806
     2f4: 94000000     	bl	0x2f4 <nb_fan_probe+0x2b0>
		00000000000002f4:  R_AARCH64_CALL26	_printk
     2f8: 1400001b     	b	0x364 <nb_fan_probe+0x320>
     2fc: 2a0003f3     	mov	w19, w0
     300: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca
     304: 91000000     	add	x0, x0, #0x0
		0000000000000304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca
     308: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     30c: 91000021     	add	x1, x1, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     310: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d8
     314: 91000042     	add	x2, x2, #0x0
		0000000000000314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d8
     318: 52806163     	mov	w3, #0x30b              // =779
     31c: 94000000     	bl	0x31c <nb_fan_probe+0x2d8>
		000000000000031c:  R_AARCH64_CALL26	_printk
     320: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x414
     324: 91000000     	add	x0, x0, #0x0
		0000000000000324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x414
     328: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     32c: 91000021     	add	x1, x1, #0x0
		000000000000032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     330: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     334: 91000042     	add	x2, x2, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     338: 52806fa3     	mov	w3, #0x37d              // =893
     33c: 14000026     	b	0x3d4 <nb_fan_probe+0x390>
     340: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e
     344: 91000000     	add	x0, x0, #0x0
		0000000000000344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e
     348: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     34c: 91000021     	add	x1, x1, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     350: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ea
     354: 91000042     	add	x2, x2, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ea
     358: 528065c3     	mov	w3, #0x32e              // =814
     35c: 94000000     	bl	0x35c <nb_fan_probe+0x318>
		000000000000035c:  R_AARCH64_CALL26	_printk
     360: b94052b3     	ldr	w19, [x21, #0x50]
     364: 350002b3     	cbnz	w19, 0x3b8 <nb_fan_probe+0x374>
     368: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c1
     36c: 91000000     	add	x0, x0, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c1
     370: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     374: 91000021     	add	x1, x1, #0x0
		0000000000000374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     378: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     37c: 91000042     	add	x2, x2, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     380: 52807103     	mov	w3, #0x388              // =904
     384: 94000000     	bl	0x384 <nb_fan_probe+0x340>
		0000000000000384:  R_AARCH64_CALL26	_printk
     388: f9400280     	ldr	x0, [x20]
		0000000000000388:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     38c: 94000087     	bl	0x5a8 <nb_fan_parse_dt>
     390: 36f80280     	tbz	w0, #0x1f, 0x3e0 <nb_fan_probe+0x39c>
     394: 2a0003f3     	mov	w19, w0
     398: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba7
     39c: 91000000     	add	x0, x0, #0x0
		000000000000039c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba7
     3a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     3a4: 91000021     	add	x1, x1, #0x0
		00000000000003a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     3a8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     3ac: 91000042     	add	x2, x2, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     3b0: 528071a3     	mov	w3, #0x38d              // =909
     3b4: 14000008     	b	0x3d4 <nb_fan_probe+0x390>
     3b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     3bc: 91000000     	add	x0, x0, #0x0
		00000000000003bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     3c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     3c4: 91000021     	add	x1, x1, #0x0
		00000000000003c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     3c8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     3cc: 91000042     	add	x2, x2, #0x0
		00000000000003cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     3d0: 528070a3     	mov	w3, #0x385              // =901
     3d4: 2a1303e4     	mov	w4, w19
     3d8: 94000000     	bl	0x3d8 <nb_fan_probe+0x394>
		00000000000003d8:  R_AARCH64_CALL26	_printk
     3dc: 17ffff35     	b	0xb0 <nb_fan_probe+0x6c>
     3e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd2
     3e4: 91000000     	add	x0, x0, #0x0
		00000000000003e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd2
     3e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     3ec: 91000021     	add	x1, x1, #0x0
		00000000000003ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     3f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     3f4: 91000042     	add	x2, x2, #0x0
		00000000000003f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     3f8: 52807203     	mov	w3, #0x390              // =912
     3fc: 94000000     	bl	0x3fc <nb_fan_probe+0x3b8>
		00000000000003fc:  R_AARCH64_CALL26	_printk
     400: f9400280     	ldr	x0, [x20]
		0000000000000400:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     404: 94000130     	bl	0x8c4 <nb_fan_gpio_proc>
     408: 350005c0     	cbnz	w0, 0x4c0 <nb_fan_probe+0x47c>
     40c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000040c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x888
     410: 91000000     	add	x0, x0, #0x0
		0000000000000410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x888
     414: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     418: 91000021     	add	x1, x1, #0x0
		0000000000000418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     41c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     420: 91000042     	add	x2, x2, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     424: 52807303     	mov	w3, #0x398              // =920
     428: 94000000     	bl	0x428 <nb_fan_probe+0x3e4>
		0000000000000428:  R_AARCH64_CALL26	_printk
     42c: f9400288     	ldr	x8, [x20]
		000000000000042c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     430: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb82
     434: 91000021     	add	x1, x1, #0x0
		0000000000000434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb82
     438: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000438:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     43c: 91000042     	add	x2, x2, #0x0
		000000000000043c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     440: 91006100     	add	x0, x8, #0x18
     444: 94000000     	bl	0x444 <nb_fan_probe+0x400>
		0000000000000444:  R_AARCH64_CALL26	__mutex_init
     448: f9400288     	ldr	x8, [x20]
		0000000000000448:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     44c: 52800021     	mov	w1, #0x1                // =1
     450: 52800022     	mov	w2, #0x1                // =1
     454: f9400508     	ldr	x8, [x8, #0x8]
     458: 9100a100     	add	x0, x8, #0x28
     45c: 94000000     	bl	0x45c <nb_fan_probe+0x418>
		000000000000045c:  R_AARCH64_CALL26	hrtimer_init
     460: f9400288     	ldr	x8, [x20]
		0000000000000460:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     464: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000464:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xa98
     468: 9100014a     	add	x10, x10, #0x0
		0000000000000468:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xa98
     46c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000046c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c
     470: 91000000     	add	x0, x0, #0x0
		0000000000000470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c
     474: f9400509     	ldr	x9, [x8, #0x8]
     478: f900292a     	str	x10, [x9, #0x50]
     47c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000047c:  R_AARCH64_ADR_PREL_PG_HI21	kernel_kobj
     480: f9400109     	ldr	x9, [x8]
     484: f9400141     	ldr	x1, [x10]
		0000000000000484:  R_AARCH64_LDST64_ABS_LO12_NC	kernel_kobj
     488: f9004d28     	str	x8, [x9, #0x98]
     48c: 94000000     	bl	0x48c <nb_fan_probe+0x448>
		000000000000048c:  R_AARCH64_CALL26	kobject_create_and_add
     490: f9400288     	ldr	x8, [x20]
		0000000000000490:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     494: f9000900     	str	x0, [x8, #0x10]
     498: b5000260     	cbnz	x0, 0x4e4 <nb_fan_probe+0x4a0>
     49c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000049c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a3
     4a0: 91000000     	add	x0, x0, #0x0
		00000000000004a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a3
     4a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     4a8: 91000021     	add	x1, x1, #0x0
		00000000000004a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     4ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     4b0: 91000042     	add	x2, x2, #0x0
		00000000000004b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     4b4: 52807463     	mov	w3, #0x3a3              // =931
     4b8: 94000000     	bl	0x4b8 <nb_fan_probe+0x474>
		00000000000004b8:  R_AARCH64_CALL26	_printk
     4bc: 17fffefc     	b	0xac <nb_fan_probe+0x68>
     4c0: 2a0003f3     	mov	w19, w0
     4c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x767
     4c8: 91000000     	add	x0, x0, #0x0
		00000000000004c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x767
     4cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     4d0: 91000021     	add	x1, x1, #0x0
		00000000000004d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     4d4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     4d8: 91000042     	add	x2, x2, #0x0
		00000000000004d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     4dc: 528072a3     	mov	w3, #0x395              // =917
     4e0: 17ffffbd     	b	0x3d4 <nb_fan_probe+0x390>
     4e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004e4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
     4e8: 91000021     	add	x1, x1, #0x0
		00000000000004e8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
     4ec: 94000000     	bl	0x4ec <nb_fan_probe+0x4a8>
		00000000000004ec:  R_AARCH64_CALL26	sysfs_create_group
     4f0: 35000260     	cbnz	w0, 0x53c <nb_fan_probe+0x4f8>
     4f4: 90000013     	adrp	x19, 0x0 <.text>
		00000000000004f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     4f8: 91000273     	add	x19, x19, #0x0
		00000000000004f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     4fc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000004fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     500: 91000294     	add	x20, x20, #0x0
		0000000000000500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     504: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b0
     508: 91000000     	add	x0, x0, #0x0
		0000000000000508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b0
     50c: aa1303e1     	mov	x1, x19
     510: aa1403e2     	mov	x2, x20
     514: 52807583     	mov	w3, #0x3ac              // =940
     518: 94000000     	bl	0x518 <nb_fan_probe+0x4d4>
		0000000000000518:  R_AARCH64_CALL26	_printk
     51c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000051c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe3
     520: 91000000     	add	x0, x0, #0x0
		0000000000000520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe3
     524: aa1303e1     	mov	x1, x19
     528: aa1403e2     	mov	x2, x20
     52c: 52807643     	mov	w3, #0x3b2              // =946
     530: 94000000     	bl	0x530 <nb_fan_probe+0x4ec>
		0000000000000530:  R_AARCH64_CALL26	_printk
     534: 2a1f03f3     	mov	w19, wzr
     538: 17fffede     	b	0xb0 <nb_fan_probe+0x6c>
     53c: 2a0003f3     	mov	w19, w0
     540: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x441
     544: 91000000     	add	x0, x0, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x441
     548: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     54c: 91000021     	add	x1, x1, #0x0
		000000000000054c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     550: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4
     554: 91000042     	add	x2, x2, #0x0
		0000000000000554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4
     558: 52807523     	mov	w3, #0x3a9              // =937
     55c: 94000000     	bl	0x55c <nb_fan_probe+0x518>
		000000000000055c:  R_AARCH64_CALL26	_printk
     560: 17fffed4     	b	0xb0 <nb_fan_probe+0x6c>
     564: 94000000     	bl	0x564 <nb_fan_probe+0x520>
		0000000000000564:  R_AARCH64_CALL26	__stack_chk_fail
