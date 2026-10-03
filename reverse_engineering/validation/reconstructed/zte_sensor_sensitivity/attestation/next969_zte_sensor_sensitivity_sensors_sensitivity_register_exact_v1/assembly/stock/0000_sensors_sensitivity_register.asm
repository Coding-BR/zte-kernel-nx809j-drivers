
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <sensors_sensitivity_register>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 90000015     	adrp	x21, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
      20: b94002a8     	ldr	w8, [x21]
		0000000000000020:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
      24: 7100091f     	cmp	w8, #0x2
      28: 54000b2a     	b.ge	0x18c <sensors_sensitivity_register+0x188>
      2c: d503201f     	nop
      30: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
      34: 5281b801     	mov	w1, #0xdc0              // =3520
      38: 52800c02     	mov	w2, #0x60               // =96
      3c: f9400100     	ldr	x0, [x8]
		000000000000003c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
      40: 94000000     	bl	0x40 <sensors_sensitivity_register+0x3c>
		0000000000000040:  R_AARCH64_CALL26	__kmalloc_cache_noprof
      44: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      48: f90002c0     	str	x0, [x22]
		0000000000000048:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
      4c: b4000b20     	cbz	x0, 0x1b0 <sensors_sensitivity_register+0x1ac>
      50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d7
      54: 91000021     	add	x1, x1, #0x0
		0000000000000054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d7
      58: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000058:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      5c: 91000042     	add	x2, x2, #0x0
		000000000000005c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
      60: 91004000     	add	x0, x0, #0x10
      64: 94000000     	bl	0x64 <sensors_sensitivity_register+0x60>
		0000000000000064:  R_AARCH64_CALL26	__mutex_init
      68: f94002c8     	ldr	x8, [x22]
		0000000000000068:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
      6c: d2800c89     	mov	x9, #0x64               // =100
      70: 52800c8a     	mov	w10, #0x64              // =100
      74: f2c00c89     	movk	x9, #0x64, lsl #32
      78: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57b
      7c: 91000000     	add	x0, x0, #0x0
		000000000000007c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57b
      80: 3901011f     	strb	wzr, [x8, #0x40]
      84: f8044109     	stur	x9, [x8, #0x44]
      88: b9004d0a     	str	w10, [x8, #0x4c]
      8c: 3901411f     	strb	wzr, [x8, #0x50]
      90: f8054109     	stur	x9, [x8, #0x54]
      94: b9005d0a     	str	w10, [x8, #0x5c]
      98: 94000000     	bl	0x98 <sensors_sensitivity_register+0x94>
		0000000000000098:  R_AARCH64_CALL26	class_create
      9c: 90000017     	adrp	x23, 0x0 <.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
      a0: 90000013     	adrp	x19, 0x0 <.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
      a4: 91000273     	add	x19, x19, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
      a8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58f
      ac: 91000294     	add	x20, x20, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58f
      b0: f90002e0     	str	x0, [x23]
		00000000000000b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
      b4: aa1303e0     	mov	x0, x19
      b8: 2a1f03e1     	mov	w1, wzr
      bc: 52800022     	mov	w2, #0x1                // =1
      c0: aa1403e3     	mov	x3, x20
      c4: 94000000     	bl	0xc4 <sensors_sensitivity_register+0xc0>
		00000000000000c4:  R_AARCH64_CALL26	alloc_chrdev_region
      c8: f94002e0     	ldr	x0, [x23]
		00000000000000c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
      cc: b9400262     	ldr	w2, [x19]
      d0: aa1f03e1     	mov	x1, xzr
      d4: aa1f03e3     	mov	x3, xzr
      d8: aa1403e4     	mov	x4, x20
      dc: 94000000     	bl	0xdc <sensors_sensitivity_register+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	device_create
      e0: f94002c8     	ldr	x8, [x22]
		00000000000000e0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
      e4: b13ffc1f     	cmn	x0, #0xfff
      e8: f9000100     	str	x0, [x8]
      ec: 54000762     	b.hs	0x1d8 <sensors_sensitivity_register+0x1d4>
      f0: 90000013     	adrp	x19, 0x0 <.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1c
      f4: 91000273     	add	x19, x19, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1c
      f8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000000f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x676
      fc: 91000294     	add	x20, x20, #0x0
		00000000000000fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x676
     100: f9004c08     	str	x8, [x0, #0x98]
     104: aa1303e0     	mov	x0, x19
     108: 2a1f03e1     	mov	w1, wzr
     10c: 52800022     	mov	w2, #0x1                // =1
     110: aa1403e3     	mov	x3, x20
     114: 94000000     	bl	0x114 <sensors_sensitivity_register+0x110>
		0000000000000114:  R_AARCH64_CALL26	alloc_chrdev_region
     118: f94002e0     	ldr	x0, [x23]
		0000000000000118:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     11c: b9400262     	ldr	w2, [x19]
     120: aa1f03e1     	mov	x1, xzr
     124: aa1f03e3     	mov	x3, xzr
     128: aa1403e4     	mov	x4, x20
     12c: 94000000     	bl	0x12c <sensors_sensitivity_register+0x128>
		000000000000012c:  R_AARCH64_CALL26	device_create
     130: f94002c8     	ldr	x8, [x22]
		0000000000000130:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     134: b13ffc1f     	cmn	x0, #0xfff
     138: f9000500     	str	x0, [x8, #0x8]
     13c: 54000622     	b.hs	0x200 <sensors_sensitivity_register+0x1fc>
     140: f9004c08     	str	x8, [x0, #0x98]
     144: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8
     148: 91000273     	add	x19, x19, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8
     14c: f9400100     	ldr	x0, [x8]
     150: aa1303e1     	mov	x1, x19
     154: 94000090     	bl	0x394 <sensor_create_sysfs_interfaces>
     158: 37f80680     	tbnz	w0, #0x1f, 0x228 <sensors_sensitivity_register+0x224>
     15c: f94002c8     	ldr	x8, [x22]
		000000000000015c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     160: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
     164: 91000294     	add	x20, x20, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x88
     168: aa1403e1     	mov	x1, x20
     16c: f9400500     	ldr	x0, [x8, #0x8]
     170: 94000089     	bl	0x394 <sensor_create_sysfs_interfaces>
     174: 37f806e0     	tbnz	w0, #0x1f, 0x250 <sensors_sensitivity_register+0x24c>
     178: b94002a8     	ldr	w8, [x21]
		0000000000000178:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     17c: 7100091f     	cmp	w8, #0x2
     180: 54000e0a     	b.ge	0x340 <sensors_sensitivity_register+0x33c>
     184: 2a1f03e0     	mov	w0, wzr
     188: 14000068     	b	0x328 <sensors_sensitivity_register+0x324>
     18c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x360
     190: 91000000     	add	x0, x0, #0x0
		0000000000000190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x360
     194: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     198: 91000021     	add	x1, x1, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     19c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     1a0: 91000042     	add	x2, x2, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     1a4: 52802ae3     	mov	w3, #0x157              // =343
     1a8: 94000000     	bl	0x1a8 <sensors_sensitivity_register+0x1a4>
		00000000000001a8:  R_AARCH64_CALL26	_printk
     1ac: 17ffffa0     	b	0x2c <sensors_sensitivity_register+0x28>
     1b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bf
     1b4: 91000000     	add	x0, x0, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bf
     1b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     1bc: 91000021     	add	x1, x1, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     1c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     1c4: 91000042     	add	x2, x2, #0x0
		00000000000001c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     1c8: 52802b63     	mov	w3, #0x15b              // =347
     1cc: 94000000     	bl	0x1cc <sensors_sensitivity_register+0x1c8>
		00000000000001cc:  R_AARCH64_CALL26	_printk
     1d0: 12800160     	mov	w0, #-0xc               // =-12
     1d4: 14000055     	b	0x328 <sensors_sensitivity_register+0x324>
     1d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea
     1dc: 91000000     	add	x0, x0, #0x0
		00000000000001dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea
     1e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     1e4: 91000021     	add	x1, x1, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     1e8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     1ec: 91000042     	add	x2, x2, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     1f0: 52802e03     	mov	w3, #0x170              // =368
     1f4: 94000000     	bl	0x1f4 <sensors_sensitivity_register+0x1f0>
		00000000000001f4:  R_AARCH64_CALL26	_printk
     1f8: 2a1f03f8     	mov	w24, wzr
     1fc: 14000042     	b	0x304 <sensors_sensitivity_register+0x300>
     200: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea
     204: 91000000     	add	x0, x0, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea
     208: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     20c: 91000021     	add	x1, x1, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     210: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     214: 91000042     	add	x2, x2, #0x0
		0000000000000214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     218: 52802f23     	mov	w3, #0x179              // =377
     21c: 94000000     	bl	0x21c <sensors_sensitivity_register+0x218>
		000000000000021c:  R_AARCH64_CALL26	_printk
     220: 2a1f03f8     	mov	w24, wzr
     224: 14000030     	b	0x2e4 <sensors_sensitivity_register+0x2e0>
     228: 2a0003f8     	mov	w24, w0
     22c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fd
     230: 91000000     	add	x0, x0, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fd
     234: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     238: 91000021     	add	x1, x1, #0x0
		0000000000000238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     23c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     240: 91000042     	add	x2, x2, #0x0
		0000000000000240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     244: 52803003     	mov	w3, #0x180              // =384
     248: 94000000     	bl	0x248 <sensors_sensitivity_register+0x244>
		0000000000000248:  R_AARCH64_CALL26	_printk
     24c: 14000018     	b	0x2ac <sensors_sensitivity_register+0x2a8>
     250: 2a0003f8     	mov	w24, w0
     254: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fd
     258: 91000000     	add	x0, x0, #0x0
		0000000000000258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fd
     25c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     260: 91000021     	add	x1, x1, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     264: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     268: 91000042     	add	x2, x2, #0x0
		0000000000000268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     26c: 528030a3     	mov	w3, #0x185              // =389
     270: 94000000     	bl	0x270 <sensors_sensitivity_register+0x26c>
		0000000000000270:  R_AARCH64_CALL26	_printk
     274: f94002c8     	ldr	x8, [x22]
		0000000000000274:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     278: aa1403e1     	mov	x1, x20
     27c: f9400515     	ldr	x21, [x8, #0x8]
     280: aa1503e0     	mov	x0, x21
     284: 94000000     	bl	0x284 <sensors_sensitivity_register+0x280>
		0000000000000284:  R_AARCH64_CALL26	device_remove_file
     288: 91008281     	add	x1, x20, #0x20
     28c: aa1503e0     	mov	x0, x21
     290: 94000000     	bl	0x290 <sensors_sensitivity_register+0x28c>
		0000000000000290:  R_AARCH64_CALL26	device_remove_file
     294: 91010281     	add	x1, x20, #0x40
     298: aa1503e0     	mov	x0, x21
     29c: 94000000     	bl	0x29c <sensors_sensitivity_register+0x298>
		000000000000029c:  R_AARCH64_CALL26	device_remove_file
     2a0: 91018281     	add	x1, x20, #0x60
     2a4: aa1503e0     	mov	x0, x21
     2a8: 94000000     	bl	0x2a8 <sensors_sensitivity_register+0x2a4>
		00000000000002a8:  R_AARCH64_CALL26	device_remove_file
     2ac: f94002c8     	ldr	x8, [x22]
		00000000000002ac:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     2b0: aa1303e1     	mov	x1, x19
     2b4: f9400114     	ldr	x20, [x8]
     2b8: aa1403e0     	mov	x0, x20
     2bc: 94000000     	bl	0x2bc <sensors_sensitivity_register+0x2b8>
		00000000000002bc:  R_AARCH64_CALL26	device_remove_file
     2c0: 91008261     	add	x1, x19, #0x20
     2c4: aa1403e0     	mov	x0, x20
     2c8: 94000000     	bl	0x2c8 <sensors_sensitivity_register+0x2c4>
		00000000000002c8:  R_AARCH64_CALL26	device_remove_file
     2cc: 91010261     	add	x1, x19, #0x40
     2d0: aa1403e0     	mov	x0, x20
     2d4: 94000000     	bl	0x2d4 <sensors_sensitivity_register+0x2d0>
		00000000000002d4:  R_AARCH64_CALL26	device_remove_file
     2d8: 91018261     	add	x1, x19, #0x60
     2dc: aa1403e0     	mov	x0, x20
     2e0: 94000000     	bl	0x2e0 <sensors_sensitivity_register+0x2dc>
		00000000000002e0:  R_AARCH64_CALL26	device_remove_file
     2e4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1c
     2e8: f94002c8     	ldr	x8, [x22]
		00000000000002e8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     2ec: f94002e0     	ldr	x0, [x23]
		00000000000002ec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     2f0: b9400121     	ldr	w1, [x9]
		00000000000002f0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1c
     2f4: f900051f     	str	xzr, [x8, #0x8]
     2f8: 94000000     	bl	0x2f8 <sensors_sensitivity_register+0x2f4>
		00000000000002f8:  R_AARCH64_CALL26	device_destroy
     2fc: f94002e0     	ldr	x0, [x23]
		00000000000002fc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     300: 94000000     	bl	0x300 <sensors_sensitivity_register+0x2fc>
		0000000000000300:  R_AARCH64_CALL26	class_destroy
     304: f94002c8     	ldr	x8, [x22]
		0000000000000304:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     308: f900011f     	str	xzr, [x8]
     30c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     310: f94002e0     	ldr	x0, [x23]
		0000000000000310:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     314: b9400101     	ldr	w1, [x8]
		0000000000000314:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     318: 94000000     	bl	0x318 <sensors_sensitivity_register+0x314>
		0000000000000318:  R_AARCH64_CALL26	device_destroy
     31c: f94002e0     	ldr	x0, [x23]
		000000000000031c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     320: 94000000     	bl	0x320 <sensors_sensitivity_register+0x31c>
		0000000000000320:  R_AARCH64_CALL26	class_destroy
     324: 2a1803e0     	mov	w0, w24
     328: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     32c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     330: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     334: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     338: d50323bf     	autiasp
     33c: d65f03c0     	ret
     340: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b
     344: 91000000     	add	x0, x0, #0x0
		0000000000000344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b
     348: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     34c: 91000021     	add	x1, x1, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     350: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     354: 91000042     	add	x2, x2, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     358: 52803123     	mov	w3, #0x189              // =393
     35c: 94000000     	bl	0x35c <sensors_sensitivity_register+0x358>
		000000000000035c:  R_AARCH64_CALL26	_printk
     360: 17ffff89     	b	0x184 <sensors_sensitivity_register+0x180>
     364: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000364:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
     368: d5384113     	mrs	x19, SP_EL0
     36c: f9402a74     	ldr	x20, [x19, #0x50]
     370: f9400100     	ldr	x0, [x8]
		0000000000000370:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
     374: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000374:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     378: 91000108     	add	x8, x8, #0x0
		0000000000000378:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     37c: 5281b801     	mov	w1, #0xdc0              // =3520
     380: 52800c02     	mov	w2, #0x60               // =96
     384: f9002a68     	str	x8, [x19, #0x50]
     388: 94000000     	bl	0x388 <sensors_sensitivity_register+0x384>
		0000000000000388:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     38c: f9002a74     	str	x20, [x19, #0x50]
     390: 17ffff2d     	b	0x44 <sensors_sensitivity_register+0x40>
