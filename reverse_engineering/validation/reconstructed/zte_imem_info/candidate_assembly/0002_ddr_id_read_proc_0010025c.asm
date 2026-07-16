
/input/zte_imem_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000cc <ddr_id_read_proc>:
      cc: d503233f     	paciasp
      d0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      d4: a90157f6     	stp	x22, x21, [sp, #0x10]
      d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
      dc: 910003fd     	mov	x29, sp
      e0: aa0003f3     	mov	x19, x0
      e4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d
      e8: 91000042     	add	x2, x2, #0x0
		00000000000000e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d
      ec: aa1f03e0     	mov	x0, xzr
      f0: aa1f03e1     	mov	x1, xzr
      f4: 94000000     	bl	0xf4 <ddr_id_read_proc+0x28>
		00000000000000f4:  R_AARCH64_CALL26	of_find_compatible_node
      f8: 90000016     	adrp	x22, 0x0 <.text>
		00000000000000f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      fc: b5000080     	cbnz	x0, 0x10c <ddr_id_read_proc+0x40>
     100: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142
     104: 91000000     	add	x0, x0, #0x0
		0000000000000104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142
     108: 14000007     	b	0x124 <ddr_id_read_proc+0x58>
     10c: 2a1f03e1     	mov	w1, wzr
     110: 94000000     	bl	0x110 <ddr_id_read_proc+0x44>
		0000000000000110:  R_AARCH64_CALL26	of_iomap
     114: f90002c0     	str	x0, [x22]
		0000000000000114:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     118: b5000600     	cbnz	x0, 0x1d8 <ddr_id_read_proc+0x10c>
     11c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
     120: 91000000     	add	x0, x0, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
     124: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d
     128: 91000021     	add	x1, x1, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d
     12c: 94000000     	bl	0x12c <ddr_id_read_proc+0x60>
		000000000000012c:  R_AARCH64_CALL26	_printk
     130: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x164
     134: 91000294     	add	x20, x20, #0x0
		0000000000000134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x164
     138: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     13c: 91000042     	add	x2, x2, #0x0
		000000000000013c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     140: aa1f03e0     	mov	x0, xzr
     144: aa1f03e1     	mov	x1, xzr
     148: 94000000     	bl	0x148 <ddr_id_read_proc+0x7c>
		0000000000000148:  R_AARCH64_CALL26	of_find_compatible_node
     14c: b5000080     	cbnz	x0, 0x15c <ddr_id_read_proc+0x90>
     150: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142
     154: 91000000     	add	x0, x0, #0x0
		0000000000000154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142
     158: 14000007     	b	0x174 <ddr_id_read_proc+0xa8>
     15c: 2a1f03e1     	mov	w1, wzr
     160: 94000000     	bl	0x160 <ddr_id_read_proc+0x94>
		0000000000000160:  R_AARCH64_CALL26	of_iomap
     164: f90002c0     	str	x0, [x22]
		0000000000000164:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     168: b5000620     	cbnz	x0, 0x22c <ddr_id_read_proc+0x160>
     16c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000016c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
     170: 91000000     	add	x0, x0, #0x0
		0000000000000170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
     174: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     178: 91000021     	add	x1, x1, #0x0
		0000000000000178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     17c: 94000000     	bl	0x17c <ddr_id_read_proc+0xb0>
		000000000000017c:  R_AARCH64_CALL26	_printk
     180: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x164
     184: 910002b5     	add	x21, x21, #0x0
		0000000000000184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x164
     188: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15
     18c: 91000042     	add	x2, x2, #0x0
		000000000000018c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15
     190: aa1f03e0     	mov	x0, xzr
     194: aa1f03e1     	mov	x1, xzr
     198: 94000000     	bl	0x198 <ddr_id_read_proc+0xcc>
		0000000000000198:  R_AARCH64_CALL26	of_find_compatible_node
     19c: b5000080     	cbnz	x0, 0x1ac <ddr_id_read_proc+0xe0>
     1a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142
     1a4: 91000000     	add	x0, x0, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142
     1a8: 14000007     	b	0x1c4 <ddr_id_read_proc+0xf8>
     1ac: 2a1f03e1     	mov	w1, wzr
     1b0: 94000000     	bl	0x1b0 <ddr_id_read_proc+0xe4>
		00000000000001b0:  R_AARCH64_CALL26	of_iomap
     1b4: f90002c0     	str	x0, [x22]
		00000000000001b4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     1b8: b5000540     	cbnz	x0, 0x260 <ddr_id_read_proc+0x194>
     1bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
     1c0: 91000000     	add	x0, x0, #0x0
		00000000000001c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
     1c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15
     1c8: 91000021     	add	x1, x1, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15
     1cc: 94000000     	bl	0x1cc <ddr_id_read_proc+0x100>
		00000000000001cc:  R_AARCH64_CALL26	_printk
     1d0: 2a1f03e3     	mov	w3, wzr
     1d4: 1400002e     	b	0x28c <ddr_id_read_proc+0x1c0>
     1d8: b9400014     	ldr	w20, [x0]
     1dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
     1e0: 91000000     	add	x0, x0, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
     1e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d
     1e8: 91000021     	add	x1, x1, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d
     1ec: 2a1403e2     	mov	w2, w20
     1f0: 94000000     	bl	0x1f0 <ddr_id_read_proc+0x124>
		00000000000001f0:  R_AARCH64_CALL26	_printk
     1f4: 51000688     	sub	w8, w20, #0x1
     1f8: 7100351f     	cmp	w8, #0xd
     1fc: 54000608     	b.hi	0x2bc <ddr_id_read_proc+0x1f0>
     200: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
     204: 91000129     	add	x9, x9, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
     208: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43
     20c: 91000294     	add	x20, x20, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43
     210: 1000000a     	adr	x10, 0x210 <ddr_id_read_proc+0x144>
     214: b8a8792b     	ldrsw	x11, [x9, x8, lsl #2]
     218: 8b0b014a     	add	x10, x10, x11
     21c: d61f0140     	br	x10
     220: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33
     224: 91000294     	add	x20, x20, #0x0
		0000000000000224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33
     228: 17ffffc4     	b	0x138 <ddr_id_read_proc+0x6c>
     22c: b9400015     	ldr	w21, [x0]
     230: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
     234: 91000000     	add	x0, x0, #0x0
		0000000000000234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
     238: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     23c: 91000021     	add	x1, x1, #0x0
		000000000000023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     240: 2a1503e2     	mov	w2, w21
     244: 94000000     	bl	0x244 <ddr_id_read_proc+0x178>
		0000000000000244:  R_AARCH64_CALL26	_printk
     248: 710026bf     	cmp	w21, #0x9
     24c: 54fff9a8     	b.hi	0x180 <ddr_id_read_proc+0xb4>
     250: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xf8
     254: 91000108     	add	x8, x8, #0x0
		0000000000000254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xf8
     258: f8755915     	ldr	x21, [x8, w21, uxtw #3]
     25c: 17ffffcb     	b	0x188 <ddr_id_read_proc+0xbc>
     260: b9400016     	ldr	w22, [x0]
     264: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
     268: 91000000     	add	x0, x0, #0x0
		0000000000000268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
     26c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000026c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15
     270: 91000021     	add	x1, x1, #0x0
		0000000000000270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15
     274: 2a1603e2     	mov	w2, w22
     278: 94000000     	bl	0x278 <ddr_id_read_proc+0x1ac>
		0000000000000278:  R_AARCH64_CALL26	_printk
     27c: 110ffec8     	add	w8, w22, #0x3ff
     280: 710002df     	cmp	w22, #0x0
     284: 1a96b108     	csel	w8, w8, w22, lt
     288: 130a7d03     	asr	w3, w8, #10
     28c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000028c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c
     290: 91000021     	add	x1, x1, #0x0
		0000000000000290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c
     294: aa1303e0     	mov	x0, x19
     298: aa1403e2     	mov	x2, x20
     29c: aa1503e4     	mov	x4, x21
     2a0: 94000000     	bl	0x2a0 <ddr_id_read_proc+0x1d4>
		00000000000002a0:  R_AARCH64_CALL26	seq_printf
     2a4: 2a1f03e0     	mov	w0, wzr
     2a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     2ac: a94157f6     	ldp	x22, x21, [sp, #0x10]
     2b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     2b4: d50323bf     	autiasp
     2b8: d65f03c0     	ret
     2bc: 7103fa9f     	cmp	w20, #0xfe
     2c0: 540004e0     	b.eq	0x35c <ddr_id_read_proc+0x290>
     2c4: 7103fe9f     	cmp	w20, #0xff
     2c8: 54fff341     	b.ne	0x130 <ddr_id_read_proc+0x64>
     2cc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000002cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     2d0: 91000294     	add	x20, x20, #0x0
		00000000000002d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     2d4: 17ffff99     	b	0x138 <ddr_id_read_proc+0x6c>
     2d8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc
     2dc: 91000294     	add	x20, x20, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc
     2e0: 17ffff96     	b	0x138 <ddr_id_read_proc+0x6c>
     2e4: 90000014     	adrp	x20, 0x0 <.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     2e8: 91000294     	add	x20, x20, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     2ec: 17ffff93     	b	0x138 <ddr_id_read_proc+0x6c>
     2f0: 90000014     	adrp	x20, 0x0 <.text>
		00000000000002f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf
     2f4: 91000294     	add	x20, x20, #0x0
		00000000000002f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf
     2f8: 17ffff90     	b	0x138 <ddr_id_read_proc+0x6c>
     2fc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000002fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7
     300: 91000294     	add	x20, x20, #0x0
		0000000000000300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7
     304: 17ffff8d     	b	0x138 <ddr_id_read_proc+0x6c>
     308: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     30c: 91000294     	add	x20, x20, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     310: 17ffff8a     	b	0x138 <ddr_id_read_proc+0x6c>
     314: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3
     318: 91000294     	add	x20, x20, #0x0
		0000000000000318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3
     31c: 17ffff87     	b	0x138 <ddr_id_read_proc+0x6c>
     320: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f
     324: 91000294     	add	x20, x20, #0x0
		0000000000000324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f
     328: 17ffff84     	b	0x138 <ddr_id_read_proc+0x6c>
     32c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000032c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1
     330: 91000294     	add	x20, x20, #0x0
		0000000000000330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1
     334: 17ffff81     	b	0x138 <ddr_id_read_proc+0x6c>
     338: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe
     33c: 91000294     	add	x20, x20, #0x0
		000000000000033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe
     340: 17ffff7e     	b	0x138 <ddr_id_read_proc+0x6c>
     344: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf
     348: 91000294     	add	x20, x20, #0x0
		0000000000000348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf
     34c: 17ffff7b     	b	0x138 <ddr_id_read_proc+0x6c>
     350: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b
     354: 91000294     	add	x20, x20, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b
     358: 17ffff78     	b	0x138 <ddr_id_read_proc+0x6c>
     35c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000035c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d2
     360: 91000294     	add	x20, x20, #0x0
		0000000000000360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d2
     364: 17ffff75     	b	0x138 <ddr_id_read_proc+0x6c>
