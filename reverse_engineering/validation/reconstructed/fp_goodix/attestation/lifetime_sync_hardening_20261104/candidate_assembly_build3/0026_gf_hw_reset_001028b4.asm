
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001614 <gf_hw_reset>:
    1614: d503233f     	paciasp
    1618: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    161c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1620: 910003fd     	mov	x29, sp
    1624: b50000a0     	cbnz	x0, 0x1638 <gf_hw_reset+0x24>
    1628: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec8
    162c: 91000000     	add	x0, x0, #0x0
		000000000000162c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec8
    1630: 12800253     	mov	w19, #-0x13             // =-19
    1634: 14000020     	b	0x16b4 <gf_hw_reset+0xa0>
    1638: b9404008     	ldr	w8, [x0, #0x40]
    163c: 37f80368     	tbnz	w8, #0x1f, 0x16a8 <gf_hw_reset+0x94>
    1640: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x44>
		0000000000001640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93d
    1644: 91000108     	add	x8, x8, #0x0
		0000000000001644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93d
    1648: aa0003f4     	mov	x20, x0
    164c: aa0803e0     	mov	x0, x8
    1650: 2a0103f3     	mov	w19, w1
    1654: 94000000     	bl	0x1654 <gf_hw_reset+0x40>
		0000000000001654:  R_AARCH64_CALL26	_printk
    1658: b9404280     	ldr	w0, [x20, #0x40]
    165c: 94000000     	bl	0x165c <gf_hw_reset+0x48>
		000000000000165c:  R_AARCH64_CALL26	gpio_to_desc
    1660: 2a1f03e1     	mov	w1, wzr
    1664: 94000000     	bl	0x1664 <gf_hw_reset+0x50>
		0000000000001664:  R_AARCH64_CALL26	gpiod_set_raw_value
    1668: 5284e200     	mov	w0, #0x2710             // =10000
    166c: 5284ee81     	mov	w1, #0x2774             // =10100
    1670: 52800042     	mov	w2, #0x2                // =2
    1674: 94000000     	bl	0x1674 <gf_hw_reset+0x60>
		0000000000001674:  R_AARCH64_CALL26	usleep_range_state
    1678: b9404280     	ldr	w0, [x20, #0x40]
    167c: 94000000     	bl	0x167c <gf_hw_reset+0x68>
		000000000000167c:  R_AARCH64_CALL26	gpio_to_desc
    1680: 52800021     	mov	w1, #0x1                // =1
    1684: 94000000     	bl	0x1684 <gf_hw_reset+0x70>
		0000000000001684:  R_AARCH64_CALL26	gpiod_set_raw_value
    1688: 34000193     	cbz	w19, 0x16b8 <gf_hw_reset+0xa4>
    168c: 2a1303f3     	mov	w19, w19
    1690: 52912b00     	mov	w0, #0x8958             // =35160
    1694: d1000673     	sub	x19, x19, #0x1
    1698: 72a00820     	movk	w0, #0x41, lsl #16
    169c: 94000000     	bl	0x169c <gf_hw_reset+0x88>
		000000000000169c:  R_AARCH64_CALL26	__const_udelay
    16a0: b5ffff93     	cbnz	x19, 0x1690 <gf_hw_reset+0x7c>
    16a4: 14000005     	b	0x16b8 <gf_hw_reset+0xa4>
    16a8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000016a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc73
    16ac: 91000000     	add	x0, x0, #0x0
		00000000000016ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc73
    16b0: 2a1f03f3     	mov	w19, wzr
    16b4: 94000000     	bl	0x16b4 <gf_hw_reset+0xa0>
		00000000000016b4:  R_AARCH64_CALL26	_printk
    16b8: 2a1303e0     	mov	w0, w19
    16bc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    16c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    16c4: d50323bf     	autiasp
    16c8: d65f03c0     	ret
