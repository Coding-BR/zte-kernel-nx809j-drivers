
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000064 <nubia_gpio_ctrl>:
      64: d503233f     	paciasp
      68: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      6c: f9000bf5     	str	x21, [sp, #0x10]
      70: a9024ff4     	stp	x20, x19, [sp, #0x20]
      74: 910003fd     	mov	x29, sp
      78: aa0003f3     	mov	x19, x0
      7c: 91004000     	add	x0, x0, #0x10
      80: 52800301     	mov	w1, #0x18               // =24
      84: 5281b802     	mov	w2, #0xdc0              // =3520
      88: 94000000     	bl	0x88 <nubia_gpio_ctrl+0x24>
		0000000000000088:  R_AARCH64_CALL26	devm_kmalloc
      8c: b4000460     	cbz	x0, 0x118 <nubia_gpio_ctrl+0xb4>
      90: aa0003f4     	mov	x20, x0
      94: 91004260     	add	x0, x19, #0x10
      98: 94000000     	bl	0x98 <nubia_gpio_ctrl+0x34>
		0000000000000098:  R_AARCH64_CALL26	devm_pinctrl_get
      9c: f9000280     	str	x0, [x20]
      a0: b40004c0     	cbz	x0, 0x138 <nubia_gpio_ctrl+0xd4>
      a4: b13ffc1f     	cmn	x0, #0xfff
      a8: 54000482     	b.hs	0x138 <nubia_gpio_ctrl+0xd4>
      ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x549
      b0: 91000021     	add	x1, x1, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x549
      b4: 94000000     	bl	0xb4 <nubia_gpio_ctrl+0x50>
		00000000000000b4:  R_AARCH64_CALL26	pinctrl_lookup_state
      b8: aa1403f5     	mov	x21, x20
      bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x359
      c0: 91000021     	add	x1, x1, #0x0
		00000000000000c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x359
      c4: f8008ea0     	str	x0, [x21, #0x8]!
      c8: b40002c0     	cbz	x0, 0x120 <nubia_gpio_ctrl+0xbc>
      cc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
      d0: 54000288     	b.hi	0x120 <nubia_gpio_ctrl+0xbc>
      d4: f9400280     	ldr	x0, [x20]
      d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81
      dc: 91000021     	add	x1, x1, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81
      e0: 94000000     	bl	0xe0 <nubia_gpio_ctrl+0x7c>
		00000000000000e0:  R_AARCH64_CALL26	pinctrl_lookup_state
      e4: aa1403f5     	mov	x21, x20
      e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93
      ec: 91000021     	add	x1, x1, #0x0
		00000000000000ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93
      f0: f8010ea0     	str	x0, [x21, #0x10]!
      f4: b4000160     	cbz	x0, 0x120 <nubia_gpio_ctrl+0xbc>
      f8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
      fc: 54000128     	b.hi	0x120 <nubia_gpio_ctrl+0xbc>
     100: a9400680     	ldp	x0, x1, [x20]
     104: 94000000     	bl	0x104 <nubia_gpio_ctrl+0xa0>
		0000000000000104:  R_AARCH64_CALL26	pinctrl_select_state
     108: 35000340     	cbnz	w0, 0x170 <nubia_gpio_ctrl+0x10c>
     10c: 2a1f03f5     	mov	w21, wzr
     110: f9005674     	str	x20, [x19, #0xa8]
     114: 14000011     	b	0x158 <nubia_gpio_ctrl+0xf4>
     118: 12800175     	mov	w21, #-0xc              // =-12
     11c: 1400000f     	b	0x158 <nubia_gpio_ctrl+0xf4>
     120: 91004260     	add	x0, x19, #0x10
     124: 94000000     	bl	0x124 <nubia_gpio_ctrl+0xc0>
		0000000000000124:  R_AARCH64_CALL26	_dev_err
     128: f9400280     	ldr	x0, [x20]
     12c: f94002b5     	ldr	x21, [x21]
     130: 94000000     	bl	0x130 <nubia_gpio_ctrl+0xcc>
		0000000000000130:  R_AARCH64_CALL26	devm_pinctrl_put
     134: 14000006     	b	0x14c <nubia_gpio_ctrl+0xe8>
     138: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     13c: 91000021     	add	x1, x1, #0x0
		000000000000013c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     140: 91004260     	add	x0, x19, #0x10
     144: 94000000     	bl	0x144 <nubia_gpio_ctrl+0xe0>
		0000000000000144:  R_AARCH64_CALL26	_dev_err
     148: f9400295     	ldr	x21, [x20]
     14c: 91004260     	add	x0, x19, #0x10
     150: aa1403e1     	mov	x1, x20
     154: 94000000     	bl	0x154 <nubia_gpio_ctrl+0xf0>
		0000000000000154:  R_AARCH64_CALL26	devm_kfree
     158: 2a1503e0     	mov	w0, w21
     15c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     160: f9400bf5     	ldr	x21, [sp, #0x10]
     164: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     168: d50323bf     	autiasp
     16c: d65f03c0     	ret
     170: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
     174: 91000021     	add	x1, x1, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
     178: 91004260     	add	x0, x19, #0x10
     17c: 94000000     	bl	0x17c <nubia_gpio_ctrl+0x118>
		000000000000017c:  R_AARCH64_CALL26	_dev_err
     180: 17ffffe3     	b	0x10c <nubia_gpio_ctrl+0xa8>
