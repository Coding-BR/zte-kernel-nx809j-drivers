
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009cc <gf_hw_reset>:
     9cc: d503233f     	paciasp
     9d0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     9d4: f9000bf3     	str	x19, [sp, #0x10]
     9d8: 910003fd     	mov	x29, sp
     9dc: b5000080     	cbnz	x0, 0x9ec <gf_hw_reset+0x20>
     9e0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000009e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7c
     9e4: 91000000     	add	x0, x0, #0x0
		00000000000009e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7c
     9e8: 1400001c     	b	0xa58 <gf_hw_reset+0x8c>
     9ec: b9404008     	ldr	w8, [x0, #0x40]
     9f0: 37f80308     	tbnz	w8, #0x1f, 0xa50 <gf_hw_reset+0x84>
     9f4: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c
     9f8: 91000108     	add	x8, x8, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c
     9fc: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e1
     a00: 91000021     	add	x1, x1, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e1
     a04: aa0003f3     	mov	x19, x0
     a08: aa0803e0     	mov	x0, x8
     a0c: 94000000     	bl	0xa0c <gf_hw_reset+0x40>
		0000000000000a0c:  R_AARCH64_CALL26	_printk
     a10: b9404260     	ldr	w0, [x19, #0x40]
     a14: 94000000     	bl	0xa14 <gf_hw_reset+0x48>
		0000000000000a14:  R_AARCH64_CALL26	gpio_to_desc
     a18: 2a1f03e1     	mov	w1, wzr
     a1c: 94000000     	bl	0xa1c <gf_hw_reset+0x50>
		0000000000000a1c:  R_AARCH64_CALL26	gpiod_set_raw_value
     a20: 5284e200     	mov	w0, #0x2710             // =10000
     a24: 5284ee81     	mov	w1, #0x2774             // =10100
     a28: 52800042     	mov	w2, #0x2                // =2
     a2c: 94000000     	bl	0xa2c <gf_hw_reset+0x60>
		0000000000000a2c:  R_AARCH64_CALL26	usleep_range_state
     a30: b9404260     	ldr	w0, [x19, #0x40]
     a34: 94000000     	bl	0xa34 <gf_hw_reset+0x68>
		0000000000000a34:  R_AARCH64_CALL26	gpio_to_desc
     a38: 52800021     	mov	w1, #0x1                // =1
     a3c: 94000000     	bl	0xa3c <gf_hw_reset+0x70>
		0000000000000a3c:  R_AARCH64_CALL26	gpiod_set_raw_value
     a40: 5295d700     	mov	w0, #0xaeb8             // =44728
     a44: 72a028e0     	movk	w0, #0x147, lsl #16
     a48: 94000000     	bl	0xa48 <gf_hw_reset+0x7c>
		0000000000000a48:  R_AARCH64_CALL26	__const_udelay
     a4c: 14000006     	b	0xa64 <gf_hw_reset+0x98>
     a50: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d6
     a54: 91000000     	add	x0, x0, #0x0
		0000000000000a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d6
     a58: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e1
     a5c: 91000021     	add	x1, x1, #0x0
		0000000000000a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e1
     a60: 94000000     	bl	0xa60 <gf_hw_reset+0x94>
		0000000000000a60:  R_AARCH64_CALL26	_printk
     a64: f9400bf3     	ldr	x19, [sp, #0x10]
     a68: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a6c: d50323bf     	autiasp
     a70: d65f03c0     	ret
