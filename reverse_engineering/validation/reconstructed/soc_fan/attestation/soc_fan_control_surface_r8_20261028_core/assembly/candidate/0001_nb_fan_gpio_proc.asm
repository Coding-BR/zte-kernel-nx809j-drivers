
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000040 <nb_fan_gpio_proc>:
      40: f9400408     	ldr	x8, [x0, #0x8]
      44: b5000068     	cbnz	x8, 0x50 <nb_fan_gpio_proc+0x10>
      48: 12800240     	mov	w0, #-0x13              // =-19
      4c: d65f03c0     	ret
      50: d503233f     	paciasp
      54: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      58: f9000bf5     	str	x21, [sp, #0x10]
      5c: a9024ff4     	stp	x20, x19, [sp, #0x20]
      60: 910003fd     	mov	x29, sp
      64: f9400008     	ldr	x8, [x0]
      68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dc
      6c: 91000021     	add	x1, x1, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dc
      70: aa0003f4     	mov	x20, x0
      74: 2a1f03e2     	mov	w2, wzr
      78: f9417513     	ldr	x19, [x8, #0x2e8]
      7c: aa1303e0     	mov	x0, x19
      80: 94000000     	bl	0x80 <nb_fan_gpio_proc+0x40>
		0000000000000080:  R_AARCH64_CALL26	of_get_named_gpio
      84: f9400688     	ldr	x8, [x20, #0x8]
      88: aa1403f5     	mov	x21, x20
      8c: b9001500     	str	w0, [x8, #0x14]
      90: f9400688     	ldr	x8, [x20, #0x8]
      94: b9401500     	ldr	w0, [x8, #0x14]
      98: 36f80180     	tbz	w0, #0x1f, 0xc8 <nb_fan_gpio_proc+0x88>
      9c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
      a0: 91000000     	add	x0, x0, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
      a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
      a8: 91000021     	add	x1, x1, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
      ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
      b0: 91000042     	add	x2, x2, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
      b4: 52806863     	mov	w3, #0x343              // =835
      b8: 94000000     	bl	0xb8 <nb_fan_gpio_proc+0x78>
		00000000000000b8:  R_AARCH64_CALL26	_printk
      bc: f94006a8     	ldr	x8, [x21, #0x8]
      c0: b9401500     	ldr	w0, [x8, #0x14]
      c4: 14000029     	b	0x168 <nb_fan_gpio_proc+0x128>
      c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c7
      cc: 91000021     	add	x1, x1, #0x0
		00000000000000cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c7
      d0: 94000000     	bl	0xd0 <nb_fan_gpio_proc+0x90>
		00000000000000d0:  R_AARCH64_CALL26	gpio_request
      d4: f94006a8     	ldr	x8, [x21, #0x8]
      d8: b9401504     	ldr	w4, [x8, #0x14]
      dc: 35000300     	cbnz	w0, 0x13c <nb_fan_gpio_proc+0xfc>
      e0: 2a0403e0     	mov	w0, w4
      e4: 94000000     	bl	0xe4 <nb_fan_gpio_proc+0xa4>
		00000000000000e4:  R_AARCH64_CALL26	gpio_to_desc
      e8: 94000000     	bl	0xe8 <nb_fan_gpio_proc+0xa8>
		00000000000000e8:  R_AARCH64_CALL26	gpiod_to_irq
      ec: f94006a8     	ldr	x8, [x21, #0x8]
      f0: 52800043     	mov	w3, #0x2                // =2
      f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x4
      f8: 91000021     	add	x1, x1, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x4
      fc: 90000004     	adrp	x4, 0x0 <.text>
		00000000000000fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125
     100: 91000084     	add	x4, x4, #0x0
		0000000000000100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125
     104: b9001d00     	str	w0, [x8, #0x1c]
     108: aa1f03e2     	mov	x2, xzr
     10c: 72a00403     	movk	w3, #0x20, lsl #16
     110: f94006a8     	ldr	x8, [x21, #0x8]
     114: aa1503e5     	mov	x5, x21
     118: b9401d00     	ldr	w0, [x8, #0x1c]
     11c: 94000000     	bl	0x11c <nb_fan_gpio_proc+0xdc>
		000000000000011c:  R_AARCH64_CALL26	request_threaded_irq
     120: 36f802e0     	tbz	w0, #0x1f, 0x17c <nb_fan_gpio_proc+0x13c>
     124: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     128: 91000108     	add	x8, x8, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     12c: 2a0003f3     	mov	w19, w0
     130: aa0803e0     	mov	x0, x8
     134: 94000000     	bl	0x134 <nb_fan_gpio_proc+0xf4>
		0000000000000134:  R_AARCH64_CALL26	_printk
     138: 1400000b     	b	0x164 <nb_fan_gpio_proc+0x124>
     13c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ba
     140: 91000108     	add	x8, x8, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ba
     144: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     148: 91000021     	add	x1, x1, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     14c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000014c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
     150: 91000042     	add	x2, x2, #0x0
		0000000000000150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
     154: 2a0003f3     	mov	w19, w0
     158: aa0803e0     	mov	x0, x8
     15c: 52806903     	mov	w3, #0x348              // =840
     160: 94000000     	bl	0x160 <nb_fan_gpio_proc+0x120>
		0000000000000160:  R_AARCH64_CALL26	_printk
     164: 2a1303e0     	mov	w0, w19
     168: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     16c: f9400bf5     	ldr	x21, [sp, #0x10]
     170: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     174: d50323bf     	autiasp
     178: d65f03c0     	ret
     17c: f94006a8     	ldr	x8, [x21, #0x8]
     180: b9401d00     	ldr	w0, [x8, #0x1c]
     184: 94000000     	bl	0x184 <nb_fan_gpio_proc+0x144>
		0000000000000184:  R_AARCH64_CALL26	disable_irq
     188: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37b
     18c: 91000021     	add	x1, x1, #0x0
		000000000000018c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37b
     190: aa1303e0     	mov	x0, x19
     194: 2a1f03e2     	mov	w2, wzr
     198: 94000000     	bl	0x198 <nb_fan_gpio_proc+0x158>
		0000000000000198:  R_AARCH64_CALL26	of_get_named_gpio
     19c: f94006a9     	ldr	x9, [x21, #0x8]
     1a0: b9001120     	str	w0, [x9, #0x10]
     1a4: f94006a9     	ldr	x9, [x21, #0x8]
     1a8: b9401120     	ldr	w0, [x9, #0x10]
     1ac: 36f80180     	tbz	w0, #0x1f, 0x1dc <nb_fan_gpio_proc+0x19c>
     1b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe
     1b4: 91000000     	add	x0, x0, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe
     1b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     1bc: 91000021     	add	x1, x1, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     1c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
     1c4: 91000042     	add	x2, x2, #0x0
		00000000000001c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
     1c8: 52806aa3     	mov	w3, #0x355              // =853
     1cc: 94000000     	bl	0x1cc <nb_fan_gpio_proc+0x18c>
		00000000000001cc:  R_AARCH64_CALL26	_printk
     1d0: f94006a8     	ldr	x8, [x21, #0x8]
     1d4: b9401100     	ldr	w0, [x8, #0x10]
     1d8: 17ffffe4     	b	0x168 <nb_fan_gpio_proc+0x128>
     1dc: 94000000     	bl	0x1dc <nb_fan_gpio_proc+0x19c>
		00000000000001dc:  R_AARCH64_CALL26	gpio_to_desc
     1e0: 94000000     	bl	0x1e0 <nb_fan_gpio_proc+0x1a0>
		00000000000001e0:  R_AARCH64_CALL26	gpiod_get_raw_value
     1e4: 2a0003e4     	mov	w4, w0
     1e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42c
     1ec: 91000000     	add	x0, x0, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42c
     1f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     1f4: 91000021     	add	x1, x1, #0x0
		00000000000001f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     1f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
     1fc: 91000042     	add	x2, x2, #0x0
		00000000000001fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
     200: 52806b03     	mov	w3, #0x358              // =856
     204: 94000000     	bl	0x204 <nb_fan_gpio_proc+0x1c4>
		0000000000000204:  R_AARCH64_CALL26	_printk
     208: 2a1f03e0     	mov	w0, wzr
     20c: 17ffffd7     	b	0x168 <nb_fan_gpio_proc+0x128>
