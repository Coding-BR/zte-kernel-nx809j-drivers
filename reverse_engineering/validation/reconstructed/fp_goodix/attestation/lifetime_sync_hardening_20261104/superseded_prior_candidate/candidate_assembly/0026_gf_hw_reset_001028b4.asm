
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001618 <gf_hw_reset>:
    1618: d503233f     	paciasp
    161c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1620: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1624: 910003fd     	mov	x29, sp
    1628: b50000a0     	cbnz	x0, 0x163c <gf_hw_reset+0x24>
    162c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		000000000000162c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec8
    1630: 91000000     	add	x0, x0, #0x0
		0000000000001630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec8
    1634: 12800253     	mov	w19, #-0x13             // =-19
    1638: 14000020     	b	0x16b8 <gf_hw_reset+0xa0>
    163c: b9404008     	ldr	w8, [x0, #0x40]
    1640: 37f80368     	tbnz	w8, #0x1f, 0x16ac <gf_hw_reset+0x94>
    1644: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x40>
		0000000000001644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93d
    1648: 91000108     	add	x8, x8, #0x0
		0000000000001648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93d
    164c: aa0003f4     	mov	x20, x0
    1650: aa0803e0     	mov	x0, x8
    1654: 2a0103f3     	mov	w19, w1
    1658: 94000000     	bl	0x1658 <gf_hw_reset+0x40>
		0000000000001658:  R_AARCH64_CALL26	_printk
    165c: b9404280     	ldr	w0, [x20, #0x40]
    1660: 94000000     	bl	0x1660 <gf_hw_reset+0x48>
		0000000000001660:  R_AARCH64_CALL26	gpio_to_desc
    1664: 2a1f03e1     	mov	w1, wzr
    1668: 94000000     	bl	0x1668 <gf_hw_reset+0x50>
		0000000000001668:  R_AARCH64_CALL26	gpiod_set_raw_value
    166c: 5284e200     	mov	w0, #0x2710             // =10000
    1670: 5284ee81     	mov	w1, #0x2774             // =10100
    1674: 52800042     	mov	w2, #0x2                // =2
    1678: 94000000     	bl	0x1678 <gf_hw_reset+0x60>
		0000000000001678:  R_AARCH64_CALL26	usleep_range_state
    167c: b9404280     	ldr	w0, [x20, #0x40]
    1680: 94000000     	bl	0x1680 <gf_hw_reset+0x68>
		0000000000001680:  R_AARCH64_CALL26	gpio_to_desc
    1684: 52800021     	mov	w1, #0x1                // =1
    1688: 94000000     	bl	0x1688 <gf_hw_reset+0x70>
		0000000000001688:  R_AARCH64_CALL26	gpiod_set_raw_value
    168c: 34000193     	cbz	w19, 0x16bc <gf_hw_reset+0xa4>
    1690: 2a1303f3     	mov	w19, w19
    1694: 52912b00     	mov	w0, #0x8958             // =35160
    1698: d1000673     	sub	x19, x19, #0x1
    169c: 72a00820     	movk	w0, #0x41, lsl #16
    16a0: 94000000     	bl	0x16a0 <gf_hw_reset+0x88>
		00000000000016a0:  R_AARCH64_CALL26	__const_udelay
    16a4: b5ffff93     	cbnz	x19, 0x1694 <gf_hw_reset+0x7c>
    16a8: 14000005     	b	0x16bc <gf_hw_reset+0xa4>
    16ac: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000016ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc73
    16b0: 91000000     	add	x0, x0, #0x0
		00000000000016b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc73
    16b4: 2a1f03f3     	mov	w19, wzr
    16b8: 94000000     	bl	0x16b8 <gf_hw_reset+0xa0>
		00000000000016b8:  R_AARCH64_CALL26	_printk
    16bc: 2a1303e0     	mov	w0, w19
    16c0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    16c4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    16c8: d50323bf     	autiasp
    16cc: d65f03c0     	ret
