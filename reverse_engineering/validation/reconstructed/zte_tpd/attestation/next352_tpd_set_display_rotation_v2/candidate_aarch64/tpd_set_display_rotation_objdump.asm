
/out/tpd_set_display_rotation.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_display_rotation>:
       0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       4: a90157f6     	stp	x22, x21, [sp, #0x10]
       8: 2a0103f6     	mov	w22, w1
       c: 90000001     	adrp	x1, 0x0 <tpd_set_display_rotation>
		000000000000000c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      10: 91000021     	add	x1, x1, #0x0
		0000000000000010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      14: a9024ff4     	stp	x20, x19, [sp, #0x20]
      18: aa0003f3     	mov	x19, x0
      1c: f946dc14     	ldr	x20, [x0, #0xdb8]
      20: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
      24: 91000000     	add	x0, x0, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
      28: 910003fd     	mov	x29, sp
      2c: 94000000     	bl	0x2c <tpd_set_display_rotation+0x2c>
		000000000000002c:  R_AARCH64_CALL26	printk
      30: b4000134     	cbz	x20, 0x54 <tpd_set_display_rotation+0x54>
      34: f9413a89     	ldr	x9, [x20, #0x270]
      38: f9400288     	ldr	x8, [x20]
      3c: b940b92a     	ldr	w10, [x9, #0xb8]
      40: 3400006a     	cbz	w10, 0x4c <tpd_set_display_rotation+0x4c>
      44: 3942f129     	ldrb	w9, [x9, #0xbc]
      48: 370000a9     	tbnz	w9, #0x0, 0x5c <tpd_set_display_rotation+0x5c>
      4c: b9420d15     	ldr	w21, [x8, #0x20c]
      50: 14000004     	b	0x60 <tpd_set_display_rotation+0x60>
      54: 128002a0     	mov	w0, #-0x16              // =-22
      58: 14000044     	b	0x168 <tpd_set_display_rotation+0x168>
      5c: 2a1f03f5     	mov	w21, wzr
      60: b9001276     	str	w22, [x19, #0x10]
      64: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	unk_37B3D
      68: 91000000     	add	x0, x0, #0x0
		0000000000000068:  R_AARCH64_ADD_ABS_LO12_NC	unk_37B3D
      6c: b9060a96     	str	w22, [x20, #0x608]
      70: 90000001     	adrp	x1, 0x0 <tpd_set_display_rotation>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      74: 91000021     	add	x1, x1, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      78: b9401262     	ldr	w2, [x19, #0x10]
      7c: 94000000     	bl	0x7c <tpd_set_display_rotation+0x7c>
		000000000000007c:  R_AARCH64_CALL26	printk
      80: b9457e88     	ldr	w8, [x20, #0x57c]
      84: 7100051f     	cmp	w8, #0x1
      88: 540005a0     	b.eq	0x13c <tpd_set_display_rotation+0x13c>
      8c: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
      90: 91000000     	add	x0, x0, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
      94: 90000001     	adrp	x1, 0x0 <tpd_set_display_rotation>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      98: 91000021     	add	x1, x1, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      9c: 2a1f03e2     	mov	w2, wzr
      a0: 94000000     	bl	0xa0 <tpd_set_display_rotation+0xa0>
		00000000000000a0:  R_AARCH64_CALL26	printk
      a4: 52801900     	mov	w0, #0xc8               // =200
      a8: 94000000     	bl	0xa8 <tpd_set_display_rotation+0xa8>
		00000000000000a8:  R_AARCH64_CALL26	msleep
      ac: b9457e88     	ldr	w8, [x20, #0x57c]
      b0: 7100051f     	cmp	w8, #0x1
      b4: 54000440     	b.eq	0x13c <tpd_set_display_rotation+0x13c>
      b8: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
      bc: 91000000     	add	x0, x0, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
      c0: 90000001     	adrp	x1, 0x0 <tpd_set_display_rotation>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      c4: 91000021     	add	x1, x1, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      c8: 52800022     	mov	w2, #0x1                // =1
      cc: 94000000     	bl	0xcc <tpd_set_display_rotation+0xcc>
		00000000000000cc:  R_AARCH64_CALL26	printk
      d0: 52801900     	mov	w0, #0xc8               // =200
      d4: 94000000     	bl	0xd4 <tpd_set_display_rotation+0xd4>
		00000000000000d4:  R_AARCH64_CALL26	msleep
      d8: b9457e88     	ldr	w8, [x20, #0x57c]
      dc: 7100051f     	cmp	w8, #0x1
      e0: 540002e0     	b.eq	0x13c <tpd_set_display_rotation+0x13c>
      e4: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
      e8: 91000000     	add	x0, x0, #0x0
		00000000000000e8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
      ec: 90000001     	adrp	x1, 0x0 <tpd_set_display_rotation>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      f0: 91000021     	add	x1, x1, #0x0
		00000000000000f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      f4: 52800042     	mov	w2, #0x2                // =2
      f8: 94000000     	bl	0xf8 <tpd_set_display_rotation+0xf8>
		00000000000000f8:  R_AARCH64_CALL26	printk
      fc: 52801900     	mov	w0, #0xc8               // =200
     100: 94000000     	bl	0x100 <tpd_set_display_rotation+0x100>
		0000000000000100:  R_AARCH64_CALL26	msleep
     104: b9457e88     	ldr	w8, [x20, #0x57c]
     108: 7100051f     	cmp	w8, #0x1
     10c: 54000180     	b.eq	0x13c <tpd_set_display_rotation+0x13c>
     110: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		0000000000000110:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
     114: 91000000     	add	x0, x0, #0x0
		0000000000000114:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
     118: 90000001     	adrp	x1, 0x0 <tpd_set_display_rotation>
		0000000000000118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     11c: 91000021     	add	x1, x1, #0x0
		000000000000011c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     120: 52800062     	mov	w2, #0x3                // =3
     124: 94000000     	bl	0x124 <tpd_set_display_rotation+0x124>
		0000000000000124:  R_AARCH64_CALL26	printk
     128: 52801900     	mov	w0, #0xc8               // =200
     12c: 94000000     	bl	0x12c <tpd_set_display_rotation+0x12c>
		000000000000012c:  R_AARCH64_CALL26	msleep
     130: b9457e88     	ldr	w8, [x20, #0x57c]
     134: 7100051f     	cmp	w8, #0x1
     138: 54000201     	b.ne	0x178 <tpd_set_display_rotation+0x178>
     13c: b9401261     	ldr	w1, [x19, #0x10]
     140: aa1403e0     	mov	x0, x20
     144: 2a1503e2     	mov	w2, w21
     148: 94000000     	bl	0x148 <tpd_set_display_rotation+0x148>
		0000000000000148:  R_AARCH64_CALL26	syna_dev_set_display_rotation
     14c: 36f800c0     	tbz	w0, #0x1f, 0x164 <tpd_set_display_rotation+0x164>
     150: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	unk_36936
     154: 91000000     	add	x0, x0, #0x0
		0000000000000154:  R_AARCH64_ADD_ABS_LO12_NC	unk_36936
     158: 90000001     	adrp	x1, 0x0 <tpd_set_display_rotation>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     15c: 91000021     	add	x1, x1, #0x0
		000000000000015c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     160: 94000000     	bl	0x160 <tpd_set_display_rotation+0x160>
		0000000000000160:  R_AARCH64_CALL26	printk
     164: b9401260     	ldr	w0, [x19, #0x10]
     168: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     16c: a94157f6     	ldp	x22, x21, [sp, #0x10]
     170: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     174: d65f03c0     	ret
     178: 90000013     	adrp	x19, 0x0 <tpd_set_display_rotation>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     17c: 91000273     	add	x19, x19, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     180: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C397
     184: 91000000     	add	x0, x0, #0x0
		0000000000000184:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C397
     188: aa1303e1     	mov	x1, x19
     18c: 52800082     	mov	w2, #0x4                // =4
     190: 94000000     	bl	0x190 <tpd_set_display_rotation+0x190>
		0000000000000190:  R_AARCH64_CALL26	printk
     194: 52801900     	mov	w0, #0xc8               // =200
     198: 94000000     	bl	0x198 <tpd_set_display_rotation+0x198>
		0000000000000198:  R_AARCH64_CALL26	msleep
     19c: 90000000     	adrp	x0, 0x0 <tpd_set_display_rotation>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	unk_38BA1
     1a0: 91000000     	add	x0, x0, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	unk_38BA1
     1a4: aa1303e1     	mov	x1, x19
     1a8: 94000000     	bl	0x1a8 <tpd_set_display_rotation+0x1a8>
		00000000000001a8:  R_AARCH64_CALL26	printk
     1ac: 128002a0     	mov	w0, #-0x16              // =-22
     1b0: 17ffffee     	b	0x168 <tpd_set_display_rotation+0x168>
