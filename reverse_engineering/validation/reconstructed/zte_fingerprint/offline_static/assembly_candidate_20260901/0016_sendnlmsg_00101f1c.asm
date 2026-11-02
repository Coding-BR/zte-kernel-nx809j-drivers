
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015f0 <sendnlmsg>:
    15f0: b4000540     	cbz	x0, 0x1698 <sendnlmsg+0xa8>
    15f4: d503233f     	paciasp
    15f8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    15fc: a90157f6     	stp	x22, x21, [sp, #0x10]
    1600: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1604: 910003fd     	mov	x29, sp
    1608: 90000015     	adrp	x21, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001608:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
    160c: f94002a8     	ldr	x8, [x21]
		000000000000160c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e0
    1610: b40003c8     	cbz	x8, 0x1688 <sendnlmsg+0x98>
    1614: 90000016     	adrp	x22, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001614:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1618: b94002c8     	ldr	w8, [x22]
		0000000000001618:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1e8
    161c: 34000368     	cbz	w8, 0x1688 <sendnlmsg+0x98>
    1620: aa0003f3     	mov	x19, x0
    1624: 52800600     	mov	w0, #0x30               // =48
    1628: 52810401     	mov	w1, #0x820              // =2080
    162c: 2a1f03e2     	mov	w2, wzr
    1630: 12800003     	mov	w3, #-0x1               // =-1
    1634: 94000000     	bl	0x1634 <sendnlmsg+0x44>
		0000000000001634:  R_AARCH64_CALL26	__alloc_skb
    1638: b4000280     	cbz	x0, 0x1688 <sendnlmsg+0x98>
    163c: b9407408     	ldr	w8, [x0, #0x74]
    1640: aa0003f4     	mov	x20, x0
    1644: 350001a8     	cbnz	w8, 0x1678 <sendnlmsg+0x88>
    1648: 295a2289     	ldp	w9, w8, [x20, #0xd0]
    164c: 4b090108     	sub	w8, w8, w9
    1650: 7100c11f     	cmp	w8, #0x30
    1654: 5400012b     	b.lt	0x1678 <sendnlmsg+0x88>
    1658: aa1403e0     	mov	x0, x20
    165c: 2a1f03e1     	mov	w1, wzr
    1660: 2a1f03e2     	mov	w2, wzr
    1664: 2a1f03e3     	mov	w3, wzr
    1668: 52800404     	mov	w4, #0x20               // =32
    166c: 2a1f03e5     	mov	w5, wzr
    1670: 94000000     	bl	0x1670 <sendnlmsg+0x80>
		0000000000001670:  R_AARCH64_CALL26	__nlmsg_put
    1674: b5000140     	cbnz	x0, 0x169c <sendnlmsg+0xac>
    1678: aa1f03e0     	mov	x0, xzr
    167c: aa1403e1     	mov	x1, x20
    1680: 52800042     	mov	w2, #0x2                // =2
    1684: 94000000     	bl	0x1684 <sendnlmsg+0x94>
		0000000000001684:  R_AARCH64_CALL26	sk_skb_reason_drop
    1688: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    168c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1690: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1694: d50323bf     	autiasp
    1698: d65f03c0     	ret
    169c: 39400262     	ldrb	w2, [x19]
    16a0: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000016a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d7
    16a4: 91000021     	add	x1, x1, #0x0
		00000000000016a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d7
    16a8: 39004002     	strb	w2, [x0, #0x10]
    16ac: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000016ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473
    16b0: 91000000     	add	x0, x0, #0x0
		00000000000016b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473
    16b4: 94000000     	bl	0x16b4 <sendnlmsg+0xc4>
		00000000000016b4:  R_AARCH64_CALL26	_printk
    16b8: f94002a0     	ldr	x0, [x21]
		00000000000016b8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e0
    16bc: b94002c2     	ldr	w2, [x22]
		00000000000016bc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1e8
    16c0: aa1403e1     	mov	x1, x20
    16c4: 52800803     	mov	w3, #0x40               // =64
    16c8: 94000000     	bl	0x16c8 <sendnlmsg+0xd8>
		00000000000016c8:  R_AARCH64_CALL26	netlink_unicast
    16cc: 36fffde0     	tbz	w0, #0x1f, 0x1688 <sendnlmsg+0x98>
    16d0: 2a0003e2     	mov	w2, w0
    16d4: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		00000000000016d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2da
    16d8: 91000000     	add	x0, x0, #0x0
		00000000000016d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2da
    16dc: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		00000000000016dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d7
    16e0: 91000021     	add	x1, x1, #0x0
		00000000000016e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d7
    16e4: 94000000     	bl	0x16e4 <sendnlmsg+0xf4>
		00000000000016e4:  R_AARCH64_CALL26	_printk
    16e8: 17ffffe8     	b	0x1688 <sendnlmsg+0x98>
