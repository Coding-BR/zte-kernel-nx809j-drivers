
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <zte_goodix_pinctrl_select>:
       0: b4000060     	cbz	x0, 0xc <zte_goodix_pinctrl_select+0xc>
       4: f9404008     	ldr	x8, [x0, #0x80]
       8: b5000068     	cbnz	x8, 0x14 <zte_goodix_pinctrl_select+0x14>
       c: 128002a0     	mov	w0, #-0x16              // =-22
      10: d65f03c0     	ret
      14: d503233f     	paciasp
      18: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      1c: f9000bf5     	str	x21, [sp, #0x10]
      20: a9024ff4     	stp	x20, x19, [sp, #0x20]
      24: 910003fd     	mov	x29, sp
      28: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      2c: 91000108     	add	x8, x8, #0x0
		000000000000002c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      30: 90000009     	adrp	x9, 0x0 <zte_goodix_pinctrl_select>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x357
      34: 91000129     	add	x9, x9, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x357
      38: 9000000a     	adrp	x10, 0x0 <zte_goodix_pinctrl_select>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa2
      3c: 9100014a     	add	x10, x10, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa2
      40: 9000000b     	adrp	x11, 0x0 <zte_goodix_pinctrl_select>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf94
      44: 9100016b     	add	x11, x11, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf94
      48: 72000022     	ands	w2, w1, #0x1
      4c: 5280120c     	mov	w12, #0x90              // =144
      50: 5280110d     	mov	w13, #0x88              // =136
      54: aa0003f4     	mov	x20, x0
      58: aa0803e0     	mov	x0, x8
      5c: aa0903e1     	mov	x1, x9
      60: 9a8a1173     	csel	x19, x11, x10, ne
      64: 9a8c11b5     	csel	x21, x13, x12, ne
      68: 94000000     	bl	0x68 <zte_goodix_pinctrl_select+0x68>
		0000000000000068:  R_AARCH64_CALL26	_printk
      6c: f8756a81     	ldr	x1, [x20, x21]
      70: aa1403e8     	mov	x8, x20
      74: b4000121     	cbz	x1, 0x98 <zte_goodix_pinctrl_select+0x98>
      78: f9404100     	ldr	x0, [x8, #0x80]
      7c: 94000000     	bl	0x7c <zte_goodix_pinctrl_select+0x7c>
		000000000000007c:  R_AARCH64_CALL26	pinctrl_select_state
      80: 35000140     	cbnz	w0, 0xa8 <zte_goodix_pinctrl_select+0xa8>
      84: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      88: f9400bf5     	ldr	x21, [sp, #0x10]
      8c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      90: d50323bf     	autiasp
      94: d65f03c0     	ret
      98: 128002b5     	mov	w21, #-0x16             // =-22
      9c: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc22
      a0: 91000021     	add	x1, x1, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc22
      a4: 14000005     	b	0xb8 <zte_goodix_pinctrl_select+0xb8>
      a8: 2a0003f5     	mov	w21, w0
      ac: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c
      b0: 91000021     	add	x1, x1, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c
      b4: aa1403e8     	mov	x8, x20
      b8: f9400d08     	ldr	x8, [x8, #0x18]
      bc: aa1303e2     	mov	x2, x19
      c0: 91004100     	add	x0, x8, #0x10
      c4: 94000000     	bl	0xc4 <zte_goodix_pinctrl_select+0xc4>
		00000000000000c4:  R_AARCH64_CALL26	_dev_err
      c8: 2a1503e0     	mov	w0, w21
      cc: 17ffffee     	b	0x84 <zte_goodix_pinctrl_select+0x84>
