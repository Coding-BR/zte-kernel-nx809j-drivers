
/input/zte_imem_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <ddr_id_read_proc>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: a90157f6     	stp	x22, x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: aa0003f3     	mov	x19, x0
      1c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d
      20: 91000042     	add	x2, x2, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d
      24: aa1f03e0     	mov	x0, xzr
      28: aa1f03e1     	mov	x1, xzr
      2c: 94000000     	bl	0x2c <ddr_id_read_proc+0x28>
		000000000000002c:  R_AARCH64_CALL26	of_find_compatible_node
      30: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	vendor_imem_info_addr
      34: b5000080     	cbnz	x0, 0x44 <ddr_id_read_proc+0x40>
      38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142
      3c: 91000000     	add	x0, x0, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142
      40: 14000007     	b	0x5c <ddr_id_read_proc+0x58>
      44: 2a1f03e1     	mov	w1, wzr
      48: 94000000     	bl	0x48 <ddr_id_read_proc+0x44>
		0000000000000048:  R_AARCH64_CALL26	of_iomap
      4c: f90002c0     	str	x0, [x22]
		000000000000004c:  R_AARCH64_LDST64_ABS_LO12_NC	vendor_imem_info_addr
      50: b5000600     	cbnz	x0, 0x110 <ddr_id_read_proc+0x10c>
      54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
      58: 91000000     	add	x0, x0, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
      5c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d
      60: 91000021     	add	x1, x1, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d
      64: 94000000     	bl	0x64 <ddr_id_read_proc+0x60>
		0000000000000064:  R_AARCH64_CALL26	_printk
      68: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x164
      6c: 91000294     	add	x20, x20, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x164
      70: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
      74: 91000042     	add	x2, x2, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
      78: aa1f03e0     	mov	x0, xzr
      7c: aa1f03e1     	mov	x1, xzr
      80: 94000000     	bl	0x80 <ddr_id_read_proc+0x7c>
		0000000000000080:  R_AARCH64_CALL26	of_find_compatible_node
      84: b5000080     	cbnz	x0, 0x94 <ddr_id_read_proc+0x90>
      88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142
      8c: 91000000     	add	x0, x0, #0x0
		000000000000008c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142
      90: 14000007     	b	0xac <ddr_id_read_proc+0xa8>
      94: 2a1f03e1     	mov	w1, wzr
      98: 94000000     	bl	0x98 <ddr_id_read_proc+0x94>
		0000000000000098:  R_AARCH64_CALL26	of_iomap
      9c: f90002c0     	str	x0, [x22]
		000000000000009c:  R_AARCH64_LDST64_ABS_LO12_NC	vendor_imem_info_addr
      a0: b5000620     	cbnz	x0, 0x164 <ddr_id_read_proc+0x160>
      a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
      a8: 91000000     	add	x0, x0, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
      ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
      b0: 91000021     	add	x1, x1, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
      b4: 94000000     	bl	0xb4 <ddr_id_read_proc+0xb0>
		00000000000000b4:  R_AARCH64_CALL26	_printk
      b8: 90000015     	adrp	x21, 0x0 <.text>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x164
      bc: 910002b5     	add	x21, x21, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x164
      c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d
      c4: 91000042     	add	x2, x2, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d
      c8: aa1f03e0     	mov	x0, xzr
      cc: aa1f03e1     	mov	x1, xzr
      d0: 94000000     	bl	0xd0 <ddr_id_read_proc+0xcc>
		00000000000000d0:  R_AARCH64_CALL26	of_find_compatible_node
      d4: b5000080     	cbnz	x0, 0xe4 <ddr_id_read_proc+0xe0>
      d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142
      dc: 91000000     	add	x0, x0, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142
      e0: 14000007     	b	0xfc <ddr_id_read_proc+0xf8>
      e4: 2a1f03e1     	mov	w1, wzr
      e8: 94000000     	bl	0xe8 <ddr_id_read_proc+0xe4>
		00000000000000e8:  R_AARCH64_CALL26	of_iomap
      ec: f90002c0     	str	x0, [x22]
		00000000000000ec:  R_AARCH64_LDST64_ABS_LO12_NC	vendor_imem_info_addr
      f0: b5000540     	cbnz	x0, 0x198 <ddr_id_read_proc+0x194>
      f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
      f8: 91000000     	add	x0, x0, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
      fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d
     100: 91000021     	add	x1, x1, #0x0
		0000000000000100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d
     104: 94000000     	bl	0x104 <ddr_id_read_proc+0x100>
		0000000000000104:  R_AARCH64_CALL26	_printk
     108: 2a1f03e3     	mov	w3, wzr
     10c: 1400002e     	b	0x1c4 <ddr_id_read_proc+0x1c0>
     110: b9400014     	ldr	w20, [x0]
     114: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
     118: 91000000     	add	x0, x0, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
     11c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d
     120: 91000021     	add	x1, x1, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d
     124: 2a1403e2     	mov	w2, w20
     128: 94000000     	bl	0x128 <ddr_id_read_proc+0x124>
		0000000000000128:  R_AARCH64_CALL26	_printk
     12c: 51000688     	sub	w8, w20, #0x1
     130: 7100351f     	cmp	w8, #0xd
     134: 54000608     	b.hi	0x1f4 <ddr_id_read_proc+0x1f0>
     138: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
     13c: 91000129     	add	x9, x9, #0x0
		000000000000013c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
     140: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43
     144: 91000294     	add	x20, x20, #0x0
		0000000000000144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43
     148: 1000000a     	adr	x10, 0x148 <ddr_id_read_proc+0x144>
     14c: b8a8792b     	ldrsw	x11, [x9, x8, lsl #2]
     150: 8b0b014a     	add	x10, x10, x11
     154: d61f0140     	br	x10
     158: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15
     15c: 91000294     	add	x20, x20, #0x0
		000000000000015c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15
     160: 17ffffc4     	b	0x70 <ddr_id_read_proc+0x6c>
     164: b9400015     	ldr	w21, [x0]
     168: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
     16c: 91000000     	add	x0, x0, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
     170: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     174: 91000021     	add	x1, x1, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     178: 2a1503e2     	mov	w2, w21
     17c: 94000000     	bl	0x17c <ddr_id_read_proc+0x178>
		000000000000017c:  R_AARCH64_CALL26	_printk
     180: 71002abf     	cmp	w21, #0xa
     184: 54fff9a2     	b.hs	0xb8 <ddr_id_read_proc+0xb4>
     188: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xf8
     18c: 91000108     	add	x8, x8, #0x0
		000000000000018c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xf8
     190: f8755915     	ldr	x21, [x8, w21, uxtw #3]
     194: 17ffffcb     	b	0xc0 <ddr_id_read_proc+0xbc>
     198: b9400016     	ldr	w22, [x0]
     19c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
     1a0: 91000000     	add	x0, x0, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
     1a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d
     1a8: 91000021     	add	x1, x1, #0x0
		00000000000001a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d
     1ac: 2a1603e2     	mov	w2, w22
     1b0: 94000000     	bl	0x1b0 <ddr_id_read_proc+0x1ac>
		00000000000001b0:  R_AARCH64_CALL26	_printk
     1b4: 110ffec8     	add	w8, w22, #0x3ff
     1b8: 710002df     	cmp	w22, #0x0
     1bc: 1a96b108     	csel	w8, w8, w22, lt
     1c0: 130a7d03     	asr	w3, w8, #10
     1c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c
     1c8: 91000021     	add	x1, x1, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c
     1cc: aa1303e0     	mov	x0, x19
     1d0: aa1403e2     	mov	x2, x20
     1d4: aa1503e4     	mov	x4, x21
     1d8: 94000000     	bl	0x1d8 <ddr_id_read_proc+0x1d4>
		00000000000001d8:  R_AARCH64_CALL26	seq_printf
     1dc: 2a1f03e0     	mov	w0, wzr
     1e0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     1e4: a94157f6     	ldp	x22, x21, [sp, #0x10]
     1e8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     1ec: d50323bf     	autiasp
     1f0: d65f03c0     	ret
     1f4: 7103fa9f     	cmp	w20, #0xfe
     1f8: 540004e0     	b.eq	0x294 <ddr_id_read_proc+0x290>
     1fc: 7103fe9f     	cmp	w20, #0xff
     200: 54fff341     	b.ne	0x68 <ddr_id_read_proc+0x64>
     204: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     208: 91000294     	add	x20, x20, #0x0
		0000000000000208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     20c: 17ffff99     	b	0x70 <ddr_id_read_proc+0x6c>
     210: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc
     214: 91000294     	add	x20, x20, #0x0
		0000000000000214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc
     218: 17ffff96     	b	0x70 <ddr_id_read_proc+0x6c>
     21c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000021c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     220: 91000294     	add	x20, x20, #0x0
		0000000000000220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     224: 17ffff93     	b	0x70 <ddr_id_read_proc+0x6c>
     228: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7
     22c: 91000294     	add	x20, x20, #0x0
		000000000000022c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7
     230: 17ffff90     	b	0x70 <ddr_id_read_proc+0x6c>
     234: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7
     238: 91000294     	add	x20, x20, #0x0
		0000000000000238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7
     23c: 17ffff8d     	b	0x70 <ddr_id_read_proc+0x6c>
     240: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf3
     244: 91000294     	add	x20, x20, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf3
     248: 17ffff8a     	b	0x70 <ddr_id_read_proc+0x6c>
     24c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3
     250: 91000294     	add	x20, x20, #0x0
		0000000000000250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3
     254: 17ffff87     	b	0x70 <ddr_id_read_proc+0x6c>
     258: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19f
     25c: 91000294     	add	x20, x20, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19f
     260: 17ffff84     	b	0x70 <ddr_id_read_proc+0x6c>
     264: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba
     268: 91000294     	add	x20, x20, #0x0
		0000000000000268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba
     26c: 17ffff81     	b	0x70 <ddr_id_read_proc+0x6c>
     270: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe
     274: 91000294     	add	x20, x20, #0x0
		0000000000000274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe
     278: 17ffff7e     	b	0x70 <ddr_id_read_proc+0x6c>
     27c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000027c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf
     280: 91000294     	add	x20, x20, #0x0
		0000000000000280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf
     284: 17ffff7b     	b	0x70 <ddr_id_read_proc+0x6c>
     288: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b
     28c: 91000294     	add	x20, x20, #0x0
		000000000000028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b
     290: 17ffff78     	b	0x70 <ddr_id_read_proc+0x6c>
     294: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d2
     298: 91000294     	add	x20, x20, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d2
     29c: 17ffff75     	b	0x70 <ddr_id_read_proc+0x6c>
