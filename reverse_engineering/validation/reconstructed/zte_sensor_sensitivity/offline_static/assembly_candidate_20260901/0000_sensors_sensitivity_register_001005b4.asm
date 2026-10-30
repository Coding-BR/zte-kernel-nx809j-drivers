
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <sensors_sensitivity_register>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 90000016     	adrp	x22, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
      20: b94002c8     	ldr	w8, [x22]
		0000000000000020:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
      24: 7100091f     	cmp	w8, #0x2
      28: 54000aca     	b.ge	0x180 <sensors_sensitivity_register+0x17c>
      2c: d503201f     	nop
      30: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
      34: 5281b801     	mov	w1, #0xdc0              // =3520
      38: 52800c02     	mov	w2, #0x60               // =96
      3c: f9400100     	ldr	x0, [x8]
		000000000000003c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
      40: 94000000     	bl	0x40 <sensors_sensitivity_register+0x3c>
		0000000000000040:  R_AARCH64_CALL26	__kmalloc_cache_noprof
      44: aa0003f3     	mov	x19, x0
      48: b40017d3     	cbz	x19, 0x340 <sensors_sensitivity_register+0x33c>
      4c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae
      50: 91000021     	add	x1, x1, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae
      54: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      58: 91000042     	add	x2, x2, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	.bss
      5c: 91004260     	add	x0, x19, #0x10
      60: 94000000     	bl	0x60 <sensors_sensitivity_register+0x5c>
		0000000000000060:  R_AARCH64_CALL26	__mutex_init
      64: d2800c88     	mov	x8, #0x64               // =100
      68: 52800c89     	mov	w9, #0x64               // =100
      6c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45f
      70: 91000000     	add	x0, x0, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45f
      74: f2c00c88     	movk	x8, #0x64, lsl #32
      78: 3901027f     	strb	wzr, [x19, #0x40]
      7c: f8044268     	stur	x8, [x19, #0x44]
      80: f8054268     	stur	x8, [x19, #0x54]
      84: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000084:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      88: b9004e69     	str	w9, [x19, #0x4c]
      8c: 3901427f     	strb	wzr, [x19, #0x50]
      90: b9005e69     	str	w9, [x19, #0x5c]
      94: f9000113     	str	x19, [x8]
		0000000000000094:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
      98: 94000000     	bl	0x98 <sensors_sensitivity_register+0x94>
		0000000000000098:  R_AARCH64_CALL26	class_create
      9c: 90000017     	adrp	x23, 0x0 <.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
      a0: 90000014     	adrp	x20, 0x0 <.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
      a4: 91000294     	add	x20, x20, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
      a8: 90000015     	adrp	x21, 0x0 <.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473
      ac: 910002b5     	add	x21, x21, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473
      b0: f90002e0     	str	x0, [x23]
		00000000000000b0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
      b4: aa1403e0     	mov	x0, x20
      b8: 2a1f03e1     	mov	w1, wzr
      bc: 52800022     	mov	w2, #0x1                // =1
      c0: aa1503e3     	mov	x3, x21
      c4: 94000000     	bl	0xc4 <sensors_sensitivity_register+0xc0>
		00000000000000c4:  R_AARCH64_CALL26	alloc_chrdev_region
      c8: f94002e0     	ldr	x0, [x23]
		00000000000000c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
      cc: b9400282     	ldr	w2, [x20]
      d0: aa1f03e1     	mov	x1, xzr
      d4: aa1f03e3     	mov	x3, xzr
      d8: aa1503e4     	mov	x4, x21
      dc: 94000000     	bl	0xdc <sensors_sensitivity_register+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	device_create
      e0: b13ffc1f     	cmn	x0, #0xfff
      e4: f9000260     	str	x0, [x19]
      e8: 540005e2     	b.hs	0x1a4 <sensors_sensitivity_register+0x1a0>
      ec: 90000014     	adrp	x20, 0x0 <.text>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1c
      f0: 91000294     	add	x20, x20, #0x0
		00000000000000f0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1c
      f4: 90000015     	adrp	x21, 0x0 <.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ba
      f8: 910002b5     	add	x21, x21, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ba
      fc: f9004c13     	str	x19, [x0, #0x98]
     100: aa1403e0     	mov	x0, x20
     104: 2a1f03e1     	mov	w1, wzr
     108: 52800022     	mov	w2, #0x1                // =1
     10c: aa1503e3     	mov	x3, x21
     110: 94000000     	bl	0x110 <sensors_sensitivity_register+0x10c>
		0000000000000110:  R_AARCH64_CALL26	alloc_chrdev_region
     114: f94002e0     	ldr	x0, [x23]
		0000000000000114:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     118: b9400282     	ldr	w2, [x20]
     11c: aa1f03e1     	mov	x1, xzr
     120: aa1f03e3     	mov	x3, xzr
     124: aa1503e4     	mov	x4, x21
     128: 94000000     	bl	0x128 <sensors_sensitivity_register+0x124>
		0000000000000128:  R_AARCH64_CALL26	device_create
     12c: b13ffc1f     	cmn	x0, #0xfff
     130: f9000660     	str	x0, [x19, #0x8]
     134: 540004c2     	b.hs	0x1cc <sensors_sensitivity_register+0x1c8>
     138: f9004c13     	str	x19, [x0, #0x98]
     13c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8
     140: 91000294     	add	x20, x20, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8
     144: f9400260     	ldr	x0, [x19]
     148: aa1403e1     	mov	x1, x20
     14c: 9400008c     	bl	0x37c <sensor_create_sysfs_interfaces>
     150: 35000520     	cbnz	w0, 0x1f4 <sensors_sensitivity_register+0x1f0>
     154: f9400660     	ldr	x0, [x19, #0x8]
     158: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
     15c: 910002b5     	add	x21, x21, #0x0
		000000000000015c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x88
     160: aa1503e1     	mov	x1, x21
     164: 94000086     	bl	0x37c <sensor_create_sysfs_interfaces>
     168: 350005a0     	cbnz	w0, 0x21c <sensors_sensitivity_register+0x218>
     16c: b94002c8     	ldr	w8, [x22]
		000000000000016c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     170: 7100091f     	cmp	w8, #0x2
     174: 54000baa     	b.ge	0x2e8 <sensors_sensitivity_register+0x2e4>
     178: 2a1f03e0     	mov	w0, wzr
     17c: 1400007a     	b	0x364 <sensors_sensitivity_register+0x360>
     180: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     184: 91000000     	add	x0, x0, #0x0
		0000000000000184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     188: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     18c: 91000021     	add	x1, x1, #0x0
		000000000000018c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     190: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     194: 91000042     	add	x2, x2, #0x0
		0000000000000194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     198: 52802ae3     	mov	w3, #0x157              // =343
     19c: 94000000     	bl	0x19c <sensors_sensitivity_register+0x198>
		000000000000019c:  R_AARCH64_CALL26	_printk
     1a0: 17ffffa3     	b	0x2c <sensors_sensitivity_register+0x28>
     1a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x397
     1a8: 91000000     	add	x0, x0, #0x0
		00000000000001a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x397
     1ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     1b0: 91000021     	add	x1, x1, #0x0
		00000000000001b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     1b4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     1b8: 91000042     	add	x2, x2, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     1bc: 52802e03     	mov	w3, #0x170              // =368
     1c0: 94000000     	bl	0x1c0 <sensors_sensitivity_register+0x1bc>
		00000000000001c0:  R_AARCH64_CALL26	_printk
     1c4: 2a1f03f8     	mov	w24, wzr
     1c8: 1400003f     	b	0x2c4 <sensors_sensitivity_register+0x2c0>
     1cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fb
     1d0: 91000000     	add	x0, x0, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fb
     1d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     1d8: 91000021     	add	x1, x1, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     1dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     1e0: 91000042     	add	x2, x2, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     1e4: 52802f23     	mov	w3, #0x179              // =377
     1e8: 94000000     	bl	0x1e8 <sensors_sensitivity_register+0x1e4>
		00000000000001e8:  R_AARCH64_CALL26	_printk
     1ec: 2a1f03f8     	mov	w24, wzr
     1f0: 1400002e     	b	0x2a8 <sensors_sensitivity_register+0x2a4>
     1f4: 2a0003f8     	mov	w24, w0
     1f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4
     1fc: 91000000     	add	x0, x0, #0x0
		00000000000001fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4
     200: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     204: 91000021     	add	x1, x1, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     208: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     20c: 91000042     	add	x2, x2, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     210: 52803003     	mov	w3, #0x180              // =384
     214: 94000000     	bl	0x214 <sensors_sensitivity_register+0x210>
		0000000000000214:  R_AARCH64_CALL26	_printk
     218: 14000017     	b	0x274 <sensors_sensitivity_register+0x270>
     21c: 2a0003f8     	mov	w24, w0
     220: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25c
     224: 91000000     	add	x0, x0, #0x0
		0000000000000224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25c
     228: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     22c: 91000021     	add	x1, x1, #0x0
		000000000000022c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     230: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     234: 91000042     	add	x2, x2, #0x0
		0000000000000234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     238: 528030a3     	mov	w3, #0x185              // =389
     23c: 94000000     	bl	0x23c <sensors_sensitivity_register+0x238>
		000000000000023c:  R_AARCH64_CALL26	_printk
     240: f9400676     	ldr	x22, [x19, #0x8]
     244: aa1503e1     	mov	x1, x21
     248: aa1603e0     	mov	x0, x22
     24c: 94000000     	bl	0x24c <sensors_sensitivity_register+0x248>
		000000000000024c:  R_AARCH64_CALL26	device_remove_file
     250: 910082a1     	add	x1, x21, #0x20
     254: aa1603e0     	mov	x0, x22
     258: 94000000     	bl	0x258 <sensors_sensitivity_register+0x254>
		0000000000000258:  R_AARCH64_CALL26	device_remove_file
     25c: 910102a1     	add	x1, x21, #0x40
     260: aa1603e0     	mov	x0, x22
     264: 94000000     	bl	0x264 <sensors_sensitivity_register+0x260>
		0000000000000264:  R_AARCH64_CALL26	device_remove_file
     268: 910182a1     	add	x1, x21, #0x60
     26c: aa1603e0     	mov	x0, x22
     270: 94000000     	bl	0x270 <sensors_sensitivity_register+0x26c>
		0000000000000270:  R_AARCH64_CALL26	device_remove_file
     274: f9400275     	ldr	x21, [x19]
     278: aa1403e1     	mov	x1, x20
     27c: aa1503e0     	mov	x0, x21
     280: 94000000     	bl	0x280 <sensors_sensitivity_register+0x27c>
		0000000000000280:  R_AARCH64_CALL26	device_remove_file
     284: 91008281     	add	x1, x20, #0x20
     288: aa1503e0     	mov	x0, x21
     28c: 94000000     	bl	0x28c <sensors_sensitivity_register+0x288>
		000000000000028c:  R_AARCH64_CALL26	device_remove_file
     290: 91010281     	add	x1, x20, #0x40
     294: aa1503e0     	mov	x0, x21
     298: 94000000     	bl	0x298 <sensors_sensitivity_register+0x294>
		0000000000000298:  R_AARCH64_CALL26	device_remove_file
     29c: 91018281     	add	x1, x20, #0x60
     2a0: aa1503e0     	mov	x0, x21
     2a4: 94000000     	bl	0x2a4 <sensors_sensitivity_register+0x2a0>
		00000000000002a4:  R_AARCH64_CALL26	device_remove_file
     2a8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1c
     2ac: f94002e0     	ldr	x0, [x23]
		00000000000002ac:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     2b0: f900067f     	str	xzr, [x19, #0x8]
     2b4: b9400101     	ldr	w1, [x8]
		00000000000002b4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1c
     2b8: 94000000     	bl	0x2b8 <sensors_sensitivity_register+0x2b4>
		00000000000002b8:  R_AARCH64_CALL26	device_destroy
     2bc: f94002e0     	ldr	x0, [x23]
		00000000000002bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     2c0: 94000000     	bl	0x2c0 <sensors_sensitivity_register+0x2bc>
		00000000000002c0:  R_AARCH64_CALL26	class_destroy
     2c4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     2c8: f94002e0     	ldr	x0, [x23]
		00000000000002c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     2cc: f900027f     	str	xzr, [x19]
     2d0: b9400101     	ldr	w1, [x8]
		00000000000002d0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     2d4: 94000000     	bl	0x2d4 <sensors_sensitivity_register+0x2d0>
		00000000000002d4:  R_AARCH64_CALL26	device_destroy
     2d8: f94002e0     	ldr	x0, [x23]
		00000000000002d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     2dc: 94000000     	bl	0x2dc <sensors_sensitivity_register+0x2d8>
		00000000000002dc:  R_AARCH64_CALL26	class_destroy
     2e0: 2a1803e0     	mov	w0, w24
     2e4: 14000020     	b	0x364 <sensors_sensitivity_register+0x360>
     2e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd
     2ec: 91000000     	add	x0, x0, #0x0
		00000000000002ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd
     2f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     2f4: 91000021     	add	x1, x1, #0x0
		00000000000002f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     2f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     2fc: 91000042     	add	x2, x2, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     300: 52803123     	mov	w3, #0x189              // =393
     304: 94000000     	bl	0x304 <sensors_sensitivity_register+0x300>
		0000000000000304:  R_AARCH64_CALL26	_printk
     308: 17ffff9c     	b	0x178 <sensors_sensitivity_register+0x174>
     30c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
     310: d5384114     	mrs	x20, SP_EL0
     314: f9402a95     	ldr	x21, [x20, #0x50]
     318: f9400100     	ldr	x0, [x8]
		0000000000000318:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
     31c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     320: 91000108     	add	x8, x8, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     324: 5281b801     	mov	w1, #0xdc0              // =3520
     328: 52800c02     	mov	w2, #0x60               // =96
     32c: f9002a88     	str	x8, [x20, #0x50]
     330: 94000000     	bl	0x330 <sensors_sensitivity_register+0x32c>
		0000000000000330:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     334: aa0003f3     	mov	x19, x0
     338: f9002a95     	str	x21, [x20, #0x50]
     33c: b5ffe893     	cbnz	x19, 0x4c <sensors_sensitivity_register+0x48>
     340: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x369
     344: 91000000     	add	x0, x0, #0x0
		0000000000000344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x369
     348: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     34c: 91000021     	add	x1, x1, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     350: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa
     354: 91000042     	add	x2, x2, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa
     358: 52802b63     	mov	w3, #0x15b              // =347
     35c: 94000000     	bl	0x35c <sensors_sensitivity_register+0x358>
		000000000000035c:  R_AARCH64_CALL26	_printk
     360: 12800160     	mov	w0, #-0xc               // =-12
     364: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     368: a94257f6     	ldp	x22, x21, [sp, #0x20]
     36c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     370: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     374: d50323bf     	autiasp
     378: d65f03c0     	ret
