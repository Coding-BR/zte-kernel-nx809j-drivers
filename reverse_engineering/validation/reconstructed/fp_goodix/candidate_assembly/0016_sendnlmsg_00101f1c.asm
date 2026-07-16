
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016f0 <sendnlmsg>:
    16f0: aa0003e8     	mov	x8, x0
    16f4: 12800240     	mov	w0, #-0x13              // =-19
    16f8: b40005a8     	cbz	x8, 0x17ac <sendnlmsg+0xbc>
    16fc: d503233f     	paciasp
    1700: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1704: a90157f6     	stp	x22, x21, [sp, #0x10]
    1708: a9024ff4     	stp	x20, x19, [sp, #0x20]
    170c: 910003fd     	mov	x29, sp
    1710: 90000015     	adrp	x21, 0x1000 <gf_probe+0x2d8>
		0000000000001710:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1714: f94002a9     	ldr	x9, [x21]
		0000000000001714:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1718: b4000429     	cbz	x9, 0x179c <sendnlmsg+0xac>
    171c: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2d8>
		000000000000171c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
    1720: b9400289     	ldr	w9, [x20]
		0000000000001720:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1724: 340003c9     	cbz	w9, 0x179c <sendnlmsg+0xac>
    1728: 52800600     	mov	w0, #0x30               // =48
    172c: 52810401     	mov	w1, #0x820              // =2080
    1730: 2a1f03e2     	mov	w2, wzr
    1734: 12800003     	mov	w3, #-0x1               // =-1
    1738: aa0803f6     	mov	x22, x8
    173c: 94000000     	bl	0x173c <sendnlmsg+0x4c>
		000000000000173c:  R_AARCH64_CALL26	__alloc_skb
    1740: b40002c0     	cbz	x0, 0x1798 <sendnlmsg+0xa8>
    1744: b9407408     	ldr	w8, [x0, #0x74]
    1748: aa0003f3     	mov	x19, x0
    174c: 350001a8     	cbnz	w8, 0x1780 <sendnlmsg+0x90>
    1750: 295a2269     	ldp	w9, w8, [x19, #0xd0]
    1754: 4b090108     	sub	w8, w8, w9
    1758: 7100c11f     	cmp	w8, #0x30
    175c: 5400012b     	b.lt	0x1780 <sendnlmsg+0x90>
    1760: aa1303e0     	mov	x0, x19
    1764: 2a1f03e1     	mov	w1, wzr
    1768: 2a1f03e2     	mov	w2, wzr
    176c: 2a1f03e3     	mov	w3, wzr
    1770: 52800404     	mov	w4, #0x20               // =32
    1774: 2a1f03e5     	mov	w5, wzr
    1778: 94000000     	bl	0x1778 <sendnlmsg+0x88>
		0000000000001778:  R_AARCH64_CALL26	__nlmsg_put
    177c: b50001a0     	cbnz	x0, 0x17b0 <sendnlmsg+0xc0>
    1780: aa1f03e0     	mov	x0, xzr
    1784: aa1303e1     	mov	x1, x19
    1788: 52800042     	mov	w2, #0x2                // =2
    178c: 94000000     	bl	0x178c <sendnlmsg+0x9c>
		000000000000178c:  R_AARCH64_CALL26	sk_skb_reason_drop
    1790: 12800b20     	mov	w0, #-0x5a              // =-90
    1794: 14000002     	b	0x179c <sendnlmsg+0xac>
    1798: 12800160     	mov	w0, #-0xc               // =-12
    179c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    17a0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    17a4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    17a8: d50323bf     	autiasp
    17ac: d65f03c0     	ret
    17b0: f803427f     	stur	xzr, [x19, #0x34]
    17b4: 394002c1     	ldrb	w1, [x22]
    17b8: 39004001     	strb	w1, [x0, #0x10]
    17bc: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000017bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    17c0: 91000000     	add	x0, x0, #0x0
		00000000000017c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    17c4: 94000000     	bl	0x17c4 <sendnlmsg+0xd4>
		00000000000017c4:  R_AARCH64_CALL26	_printk
    17c8: f94002a0     	ldr	x0, [x21]
		00000000000017c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    17cc: b9400282     	ldr	w2, [x20]
		00000000000017cc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    17d0: aa1303e1     	mov	x1, x19
    17d4: 52800803     	mov	w3, #0x40               // =64
    17d8: 94000000     	bl	0x17d8 <sendnlmsg+0xe8>
		00000000000017d8:  R_AARCH64_CALL26	netlink_unicast
    17dc: b9400281     	ldr	w1, [x20]
		00000000000017dc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    17e0: 2a0003f3     	mov	w19, w0
    17e4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000017e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1077
    17e8: 91000000     	add	x0, x0, #0x0
		00000000000017e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1077
    17ec: 2a1303e2     	mov	w2, w19
    17f0: 94000000     	bl	0x17f0 <sendnlmsg+0x100>
		00000000000017f0:  R_AARCH64_CALL26	_printk
    17f4: 0a937e60     	and	w0, w19, w19, asr #31
    17f8: 17ffffe9     	b	0x179c <sendnlmsg+0xac>
