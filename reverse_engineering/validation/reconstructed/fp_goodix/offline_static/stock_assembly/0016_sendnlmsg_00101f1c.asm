
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016fc <sendnlmsg>:
    16fc: aa0003e8     	mov	x8, x0
    1700: 12800240     	mov	w0, #-0x13              // =-19
    1704: b40005a8     	cbz	x8, 0x17b8 <sendnlmsg+0xbc>
    1708: d503233f     	paciasp
    170c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1710: a90157f6     	stp	x22, x21, [sp, #0x10]
    1714: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1718: 910003fd     	mov	x29, sp
    171c: 90000015     	adrp	x21, 0x1000 <gf_probe+0x2cc>
		000000000000171c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1720: f94002a9     	ldr	x9, [x21]
		0000000000001720:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1724: b4000429     	cbz	x9, 0x17a8 <sendnlmsg+0xac>
    1728: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2cc>
		0000000000001728:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
    172c: b9400289     	ldr	w9, [x20]
		000000000000172c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1730: 340003c9     	cbz	w9, 0x17a8 <sendnlmsg+0xac>
    1734: 52800600     	mov	w0, #0x30               // =48
    1738: 52810401     	mov	w1, #0x820              // =2080
    173c: 2a1f03e2     	mov	w2, wzr
    1740: 12800003     	mov	w3, #-0x1               // =-1
    1744: aa0803f6     	mov	x22, x8
    1748: 94000000     	bl	0x1748 <sendnlmsg+0x4c>
		0000000000001748:  R_AARCH64_CALL26	__alloc_skb
    174c: b40002c0     	cbz	x0, 0x17a4 <sendnlmsg+0xa8>
    1750: b9407408     	ldr	w8, [x0, #0x74]
    1754: aa0003f3     	mov	x19, x0
    1758: 350001a8     	cbnz	w8, 0x178c <sendnlmsg+0x90>
    175c: 295a2269     	ldp	w9, w8, [x19, #0xd0]
    1760: 4b090108     	sub	w8, w8, w9
    1764: 7100c11f     	cmp	w8, #0x30
    1768: 5400012b     	b.lt	0x178c <sendnlmsg+0x90>
    176c: aa1303e0     	mov	x0, x19
    1770: 2a1f03e1     	mov	w1, wzr
    1774: 2a1f03e2     	mov	w2, wzr
    1778: 2a1f03e3     	mov	w3, wzr
    177c: 52800404     	mov	w4, #0x20               // =32
    1780: 2a1f03e5     	mov	w5, wzr
    1784: 94000000     	bl	0x1784 <sendnlmsg+0x88>
		0000000000001784:  R_AARCH64_CALL26	__nlmsg_put
    1788: b50001a0     	cbnz	x0, 0x17bc <sendnlmsg+0xc0>
    178c: aa1f03e0     	mov	x0, xzr
    1790: aa1303e1     	mov	x1, x19
    1794: 52800042     	mov	w2, #0x2                // =2
    1798: 94000000     	bl	0x1798 <sendnlmsg+0x9c>
		0000000000001798:  R_AARCH64_CALL26	sk_skb_reason_drop
    179c: 12800b20     	mov	w0, #-0x5a              // =-90
    17a0: 14000002     	b	0x17a8 <sendnlmsg+0xac>
    17a4: 12800160     	mov	w0, #-0xc               // =-12
    17a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    17ac: a94157f6     	ldp	x22, x21, [sp, #0x10]
    17b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    17b4: d50323bf     	autiasp
    17b8: d65f03c0     	ret
    17bc: f803427f     	stur	xzr, [x19, #0x34]
    17c0: 394002c1     	ldrb	w1, [x22]
    17c4: 39004001     	strb	w1, [x0, #0x10]
    17c8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000017c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    17cc: 91000000     	add	x0, x0, #0x0
		00000000000017cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    17d0: 94000000     	bl	0x17d0 <sendnlmsg+0xd4>
		00000000000017d0:  R_AARCH64_CALL26	_printk
    17d4: f94002a0     	ldr	x0, [x21]
		00000000000017d4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    17d8: b9400282     	ldr	w2, [x20]
		00000000000017d8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    17dc: aa1303e1     	mov	x1, x19
    17e0: 52800803     	mov	w3, #0x40               // =64
    17e4: 94000000     	bl	0x17e4 <sendnlmsg+0xe8>
		00000000000017e4:  R_AARCH64_CALL26	netlink_unicast
    17e8: b9400281     	ldr	w1, [x20]
		00000000000017e8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    17ec: 2a0003f3     	mov	w19, w0
    17f0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000017f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1077
    17f4: 91000000     	add	x0, x0, #0x0
		00000000000017f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1077
    17f8: 2a1303e2     	mov	w2, w19
    17fc: 94000000     	bl	0x17fc <sendnlmsg+0x100>
		00000000000017fc:  R_AARCH64_CALL26	_printk
    1800: 0a937e60     	and	w0, w19, w19, asr #31
    1804: 17ffffe9     	b	0x17a8 <sendnlmsg+0xac>
