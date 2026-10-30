
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_reboot_ext_probe>:
       4: d503233f     	paciasp
       8: d10143ff     	sub	sp, sp, #0x50
       c: a9027bfd     	stp	x29, x30, [sp, #0x20]
      10: a90357f6     	stp	x22, x21, [sp, #0x30]
      14: a9044ff4     	stp	x20, x19, [sp, #0x40]
      18: 910083fd     	add	x29, sp, #0x20
      1c: d5384108     	mrs	x8, SP_EL0
      20: 91004015     	add	x21, x0, #0x10
      24: aa0003f3     	mov	x19, x0
      28: f9438908     	ldr	x8, [x8, #0x710]
      2c: aa1503e0     	mov	x0, x21
      30: 52801401     	mov	w1, #0xa0               // =160
      34: 5281b802     	mov	w2, #0xdc0              // =3520
      38: f81f83a8     	stur	x8, [x29, #-0x8]
      3c: f9000bff     	str	xzr, [sp, #0x10]
      40: 94000000     	bl	0x40 <zte_reboot_ext_probe+0x3c>
		0000000000000040:  R_AARCH64_CALL26	devm_kmalloc
      44: b50001a0     	cbnz	x0, 0x78 <zte_reboot_ext_probe+0x74>
      48: 12800160     	mov	w0, #-0xc               // =-12
      4c: d5384108     	mrs	x8, SP_EL0
      50: f9438908     	ldr	x8, [x8, #0x710]
      54: f85f83a9     	ldur	x9, [x29, #-0x8]
      58: eb09011f     	cmp	x8, x9
      5c: 54001be1     	b.ne	0x3d8 <zte_reboot_ext_probe+0x3d4>
      60: a9444ff4     	ldp	x20, x19, [sp, #0x40]
      64: a94357f6     	ldp	x22, x21, [sp, #0x30]
      68: a9427bfd     	ldp	x29, x30, [sp, #0x20]
      6c: 910143ff     	add	sp, sp, #0x50
      70: d50323bf     	autiasp
      74: d65f03c0     	ret
      78: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	kernel_kobj
      7c: aa0003f4     	mov	x20, x0
      80: aa0003f6     	mov	x22, x0
      84: f9400102     	ldr	x2, [x8]
		0000000000000084:  R_AARCH64_LDST64_ABS_LO12_NC	kernel_kobj
      88: f8008695     	str	x21, [x20], #0x8
      8c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x18
      90: 91000021     	add	x1, x1, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x18
      94: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      98: 91000063     	add	x3, x3, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      9c: aa1403e0     	mov	x0, x20
      a0: 94000000     	bl	0xa0 <zte_reboot_ext_probe+0x9c>
		00000000000000a0:  R_AARCH64_CALL26	kobject_init_and_add
      a4: 35000260     	cbnz	w0, 0xf0 <zte_reboot_ext_probe+0xec>
      a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
      ac: 91000021     	add	x1, x1, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
      b0: aa1403e0     	mov	x0, x20
      b4: 94000000     	bl	0xb4 <zte_reboot_ext_probe+0xb0>
		00000000000000b4:  R_AARCH64_CALL26	sysfs_create_group
      b8: 35000320     	cbnz	w0, 0x11c <zte_reboot_ext_probe+0x118>
      bc: f94002c0     	ldr	x0, [x22]
      c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a5
      c4: 91000021     	add	x1, x1, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a5
      c8: 94000000     	bl	0xc8 <zte_reboot_ext_probe+0xc4>
		00000000000000c8:  R_AARCH64_CALL26	nvmem_cell_get
      cc: b13ffc1f     	cmn	x0, #0xfff
      d0: f90042c0     	str	x0, [x22, #0x80]
      d4: 540003a3     	b.lo	0x148 <zte_reboot_ext_probe+0x144>
      d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b0
      dc: 91000108     	add	x8, x8, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b0
      e0: aa0003e1     	mov	x1, x0
      e4: aa0803e0     	mov	x0, x8
      e8: 94000000     	bl	0xe8 <zte_reboot_ext_probe+0xe4>
		00000000000000e8:  R_AARCH64_CALL26	_printk
      ec: 14000030     	b	0x1ac <zte_reboot_ext_probe+0x1a8>
      f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120
      f4: 91000108     	add	x8, x8, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120
      f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a
      fc: 91000021     	add	x1, x1, #0x0
		00000000000000fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a
     100: 2a0003f3     	mov	w19, w0
     104: aa0803e0     	mov	x0, x8
     108: 94000000     	bl	0x108 <zte_reboot_ext_probe+0x104>
		0000000000000108:  R_AARCH64_CALL26	_printk
     10c: aa1403e0     	mov	x0, x20
     110: 94000000     	bl	0x110 <zte_reboot_ext_probe+0x10c>
		0000000000000110:  R_AARCH64_CALL26	kobject_put
     114: 2a1303e0     	mov	w0, w19
     118: 17ffffcd     	b	0x4c <zte_reboot_ext_probe+0x48>
     11c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x690
     120: 91000108     	add	x8, x8, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x690
     124: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a
     128: 91000021     	add	x1, x1, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a
     12c: 2a0003f3     	mov	w19, w0
     130: aa0803e0     	mov	x0, x8
     134: 94000000     	bl	0x134 <zte_reboot_ext_probe+0x130>
		0000000000000134:  R_AARCH64_CALL26	_printk
     138: aa1403e0     	mov	x0, x20
     13c: 94000000     	bl	0x13c <zte_reboot_ext_probe+0x138>
		000000000000013c:  R_AARCH64_CALL26	kobject_del
     140: 2a1303e0     	mov	w0, w19
     144: 17ffffc2     	b	0x4c <zte_reboot_ext_probe+0x48>
     148: 910043e1     	add	x1, sp, #0x10
     14c: 94000000     	bl	0x14c <zte_reboot_ext_probe+0x148>
		000000000000014c:  R_AARCH64_CALL26	nvmem_cell_read
     150: aa0003f4     	mov	x20, x0
     154: b13ffc1f     	cmn	x0, #0xfff
     158: 540000c3     	b.lo	0x170 <zte_reboot_ext_probe+0x16c>
     15c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000015c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62e
     160: 91000000     	add	x0, x0, #0x0
		0000000000000160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62e
     164: 2a1403e1     	mov	w1, w20
     168: 94000000     	bl	0x168 <zte_reboot_ext_probe+0x164>
		0000000000000168:  R_AARCH64_CALL26	_printk
     16c: 14000010     	b	0x1ac <zte_reboot_ext_probe+0x1a8>
     170: f9400be8     	ldr	x8, [sp, #0x10]
     174: b50000c8     	cbnz	x8, 0x18c <zte_reboot_ext_probe+0x188>
     178: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad
     17c: 91000000     	add	x0, x0, #0x0
		000000000000017c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad
     180: aa1f03e1     	mov	x1, xzr
     184: 94000000     	bl	0x184 <zte_reboot_ext_probe+0x180>
		0000000000000184:  R_AARCH64_CALL26	_printk
     188: 14000007     	b	0x1a4 <zte_reboot_ext_probe+0x1a0>
     18c: 39400281     	ldrb	w1, [x20]
     190: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000190:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf+0x2
     194: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x465
     198: 91000000     	add	x0, x0, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x465
     19c: 39000101     	strb	w1, [x8]
		000000000000019c:  R_AARCH64_LDST8_ABS_LO12_NC	read_nvmem_buf+0x2
     1a0: 94000000     	bl	0x1a0 <zte_reboot_ext_probe+0x19c>
		00000000000001a0:  R_AARCH64_CALL26	_printk
     1a4: aa1403e0     	mov	x0, x20
     1a8: 94000000     	bl	0x1a8 <zte_reboot_ext_probe+0x1a4>
		00000000000001a8:  R_AARCH64_CALL26	kfree
     1ac: f94002c0     	ldr	x0, [x22]
     1b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x659
     1b4: 91000021     	add	x1, x1, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x659
     1b8: 94000000     	bl	0x1b8 <zte_reboot_ext_probe+0x1b4>
		00000000000001b8:  R_AARCH64_CALL26	nvmem_cell_get
     1bc: b13ffc1f     	cmn	x0, #0xfff
     1c0: f90046c0     	str	x0, [x22, #0x88]
     1c4: 540000e3     	b.lo	0x1e0 <zte_reboot_ext_probe+0x1dc>
     1c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x667
     1cc: 91000108     	add	x8, x8, #0x0
		00000000000001cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x667
     1d0: aa0003e1     	mov	x1, x0
     1d4: aa0803e0     	mov	x0, x8
     1d8: 94000000     	bl	0x1d8 <zte_reboot_ext_probe+0x1d4>
		00000000000001d8:  R_AARCH64_CALL26	_printk
     1dc: 1400001a     	b	0x244 <zte_reboot_ext_probe+0x240>
     1e0: 910043e1     	add	x1, sp, #0x10
     1e4: 94000000     	bl	0x1e4 <zte_reboot_ext_probe+0x1e0>
		00000000000001e4:  R_AARCH64_CALL26	nvmem_cell_read
     1e8: aa0003f4     	mov	x20, x0
     1ec: b13ffc1f     	cmn	x0, #0xfff
     1f0: 540000c3     	b.lo	0x208 <zte_reboot_ext_probe+0x204>
     1f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e6
     1f8: 91000000     	add	x0, x0, #0x0
		00000000000001f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e6
     1fc: 2a1403e1     	mov	w1, w20
     200: 94000000     	bl	0x200 <zte_reboot_ext_probe+0x1fc>
		0000000000000200:  R_AARCH64_CALL26	_printk
     204: 14000010     	b	0x244 <zte_reboot_ext_probe+0x240>
     208: f9400be8     	ldr	x8, [sp, #0x10]
     20c: b50000c8     	cbnz	x8, 0x224 <zte_reboot_ext_probe+0x220>
     210: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb
     214: 91000000     	add	x0, x0, #0x0
		0000000000000214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb
     218: aa1f03e1     	mov	x1, xzr
     21c: 94000000     	bl	0x21c <zte_reboot_ext_probe+0x218>
		000000000000021c:  R_AARCH64_CALL26	_printk
     220: 14000007     	b	0x23c <zte_reboot_ext_probe+0x238>
     224: 39400281     	ldrb	w1, [x20]
     228: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf+0x1
     22c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3da
     230: 91000000     	add	x0, x0, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3da
     234: 39000101     	strb	w1, [x8]
		0000000000000234:  R_AARCH64_LDST8_ABS_LO12_NC	read_nvmem_buf+0x1
     238: 94000000     	bl	0x238 <zte_reboot_ext_probe+0x234>
		0000000000000238:  R_AARCH64_CALL26	_printk
     23c: aa1403e0     	mov	x0, x20
     240: 94000000     	bl	0x240 <zte_reboot_ext_probe+0x23c>
		0000000000000240:  R_AARCH64_CALL26	kfree
     244: f94002c0     	ldr	x0, [x22]
     248: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x710
     24c: 91000021     	add	x1, x1, #0x0
		000000000000024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x710
     250: 94000000     	bl	0x250 <zte_reboot_ext_probe+0x24c>
		0000000000000250:  R_AARCH64_CALL26	nvmem_cell_get
     254: b13ffc1f     	cmn	x0, #0xfff
     258: f9004ac0     	str	x0, [x22, #0x90]
     25c: 540000e3     	b.lo	0x278 <zte_reboot_ext_probe+0x274>
     260: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x269
     264: 91000108     	add	x8, x8, #0x0
		0000000000000264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x269
     268: aa0003e1     	mov	x1, x0
     26c: aa0803e0     	mov	x0, x8
     270: 94000000     	bl	0x270 <zte_reboot_ext_probe+0x26c>
		0000000000000270:  R_AARCH64_CALL26	_printk
     274: 1400001a     	b	0x2dc <zte_reboot_ext_probe+0x2d8>
     278: 910043e1     	add	x1, sp, #0x10
     27c: 94000000     	bl	0x27c <zte_reboot_ext_probe+0x278>
		000000000000027c:  R_AARCH64_CALL26	nvmem_cell_read
     280: aa0003f4     	mov	x20, x0
     284: b13ffc1f     	cmn	x0, #0xfff
     288: 540000c3     	b.lo	0x2a0 <zte_reboot_ext_probe+0x29c>
     28c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000028c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x325
     290: 91000000     	add	x0, x0, #0x0
		0000000000000290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x325
     294: 2a1403e1     	mov	w1, w20
     298: 94000000     	bl	0x298 <zte_reboot_ext_probe+0x294>
		0000000000000298:  R_AARCH64_CALL26	_printk
     29c: 14000010     	b	0x2dc <zte_reboot_ext_probe+0x2d8>
     2a0: f9400be8     	ldr	x8, [sp, #0x10]
     2a4: b50000c8     	cbnz	x8, 0x2bc <zte_reboot_ext_probe+0x2b8>
     2a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f
     2ac: 91000000     	add	x0, x0, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f
     2b0: aa1f03e1     	mov	x1, xzr
     2b4: 94000000     	bl	0x2b4 <zte_reboot_ext_probe+0x2b0>
		00000000000002b4:  R_AARCH64_CALL26	_printk
     2b8: 14000007     	b	0x2d4 <zte_reboot_ext_probe+0x2d0>
     2bc: 39400281     	ldrb	w1, [x20]
     2c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf+0x3
     2c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56a
     2c8: 91000000     	add	x0, x0, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56a
     2cc: 39000101     	strb	w1, [x8]
		00000000000002cc:  R_AARCH64_LDST8_ABS_LO12_NC	read_nvmem_buf+0x3
     2d0: 94000000     	bl	0x2d0 <zte_reboot_ext_probe+0x2cc>
		00000000000002d0:  R_AARCH64_CALL26	_printk
     2d4: aa1403e0     	mov	x0, x20
     2d8: 94000000     	bl	0x2d8 <zte_reboot_ext_probe+0x2d4>
		00000000000002d8:  R_AARCH64_CALL26	kfree
     2dc: f94002c0     	ldr	x0, [x22]
     2e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x405
     2e4: 91000021     	add	x1, x1, #0x0
		00000000000002e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x405
     2e8: 94000000     	bl	0x2e8 <zte_reboot_ext_probe+0x2e4>
		00000000000002e8:  R_AARCH64_CALL26	nvmem_cell_get
     2ec: b13ffc1f     	cmn	x0, #0xfff
     2f0: f9004ec0     	str	x0, [x22, #0x98]
     2f4: 540000e3     	b.lo	0x310 <zte_reboot_ext_probe+0x30c>
     2f8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x145
     2fc: 91000108     	add	x8, x8, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x145
     300: aa0003e1     	mov	x1, x0
     304: aa0803e0     	mov	x0, x8
     308: 94000000     	bl	0x308 <zte_reboot_ext_probe+0x304>
		0000000000000308:  R_AARCH64_CALL26	_printk
     30c: 14000023     	b	0x398 <zte_reboot_ext_probe+0x394>
     310: 910043e1     	add	x1, sp, #0x10
     314: 94000000     	bl	0x314 <zte_reboot_ext_probe+0x310>
		0000000000000314:  R_AARCH64_CALL26	nvmem_cell_read
     318: aa0003f4     	mov	x20, x0
     31c: b13ffc1f     	cmn	x0, #0xfff
     320: 540000c3     	b.lo	0x338 <zte_reboot_ext_probe+0x334>
     324: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f
     328: 91000000     	add	x0, x0, #0x0
		0000000000000328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f
     32c: 2a1403e1     	mov	w1, w20
     330: 94000000     	bl	0x330 <zte_reboot_ext_probe+0x32c>
		0000000000000330:  R_AARCH64_CALL26	_printk
     334: 14000019     	b	0x398 <zte_reboot_ext_probe+0x394>
     338: f9400be1     	ldr	x1, [sp, #0x10]
     33c: b50000a1     	cbnz	x1, 0x350 <zte_reboot_ext_probe+0x34c>
     340: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85
     344: 91000000     	add	x0, x0, #0x0
		0000000000000344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85
     348: 94000000     	bl	0x348 <zte_reboot_ext_probe+0x344>
		0000000000000348:  R_AARCH64_CALL26	_printk
     34c: 14000011     	b	0x390 <zte_reboot_ext_probe+0x38c>
     350: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	read_nvmem_buf+0x4
     354: 91000108     	add	x8, x8, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	read_nvmem_buf+0x4
     358: 39400282     	ldrb	w2, [x20]
     35c: 39400503     	ldrb	w3, [x8, #0x1]
     360: 39400904     	ldrb	w4, [x8, #0x2]
     364: 39400d05     	ldrb	w5, [x8, #0x3]
     368: 39401106     	ldrb	w6, [x8, #0x4]
     36c: 39401507     	ldrb	w7, [x8, #0x5]
     370: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     374: 91000000     	add	x0, x0, #0x0
		0000000000000374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     378: 39401909     	ldrb	w9, [x8, #0x6]
     37c: 39401d0a     	ldrb	w10, [x8, #0x7]
     380: 39000102     	strb	w2, [x8]
     384: b9000bea     	str	w10, [sp, #0x8]
     388: b90003e9     	str	w9, [sp]
     38c: 94000000     	bl	0x38c <zte_reboot_ext_probe+0x388>
		000000000000038c:  R_AARCH64_CALL26	_printk
     390: aa1403e0     	mov	x0, x20
     394: 94000000     	bl	0x394 <zte_reboot_ext_probe+0x390>
		0000000000000394:  R_AARCH64_CALL26	kfree
     398: aa1603e0     	mov	x0, x22
     39c: 94000000     	bl	0x39c <zte_reboot_ext_probe+0x398>
		000000000000039c:  R_AARCH64_CALL26	.text+0x994
     3a0: aa1303e0     	mov	x0, x19
     3a4: 94000000     	bl	0x3a4 <zte_reboot_ext_probe+0x3a0>
		00000000000003a4:  R_AARCH64_CALL26	.text+0xb04
     3a8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xb64
     3ac: 91000108     	add	x8, x8, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xb64
     3b0: aa1603e1     	mov	x1, x22
     3b4: 12b00009     	mov	w9, #0x7fffffff         // =2147483647
     3b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003b8:  R_AARCH64_ADR_PREL_PG_HI21	panic_notifier_list
     3bc: 91000000     	add	x0, x0, #0x0
		00000000000003bc:  R_AARCH64_ADD_ABS_LO12_NC	panic_notifier_list
     3c0: f8068c28     	str	x8, [x1, #0x68]!
     3c4: b9007ac9     	str	w9, [x22, #0x78]
     3c8: 94000000     	bl	0x3c8 <zte_reboot_ext_probe+0x3c4>
		00000000000003c8:  R_AARCH64_CALL26	atomic_notifier_chain_register
     3cc: 2a1f03e0     	mov	w0, wzr
     3d0: f9005676     	str	x22, [x19, #0xa8]
     3d4: 17ffff1e     	b	0x4c <zte_reboot_ext_probe+0x48>
     3d8: 94000000     	bl	0x3d8 <zte_reboot_ext_probe+0x3d4>
		00000000000003d8:  R_AARCH64_CALL26	__stack_chk_fail
