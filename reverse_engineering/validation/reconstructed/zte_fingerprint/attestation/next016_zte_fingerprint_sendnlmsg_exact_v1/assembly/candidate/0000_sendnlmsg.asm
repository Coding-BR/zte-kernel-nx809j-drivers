
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000028 <sendnlmsg>:
      28: aa0003e8     	mov	x8, x0
      2c: 12800240     	mov	w0, #-0x13              // =-19
      30: b40005a8     	cbz	x8, 0xe4 <sendnlmsg+0xbc>
      34: d503233f     	paciasp
      38: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      3c: a90157f6     	stp	x22, x21, [sp, #0x10]
      40: a9024ff4     	stp	x20, x19, [sp, #0x20]
      44: 910003fd     	mov	x29, sp
      48: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      4c: f94002a9     	ldr	x9, [x21]
		000000000000004c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
      50: b4000429     	cbz	x9, 0xd4 <sendnlmsg+0xac>
      54: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
      58: b9400289     	ldr	w9, [x20]
		0000000000000058:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30
      5c: 340003c9     	cbz	w9, 0xd4 <sendnlmsg+0xac>
      60: 52800600     	mov	w0, #0x30               // =48
      64: 52810401     	mov	w1, #0x820              // =2080
      68: 2a1f03e2     	mov	w2, wzr
      6c: 12800003     	mov	w3, #-0x1               // =-1
      70: aa0803f6     	mov	x22, x8
      74: 94000000     	bl	0x74 <sendnlmsg+0x4c>
		0000000000000074:  R_AARCH64_CALL26	__alloc_skb
      78: b40002c0     	cbz	x0, 0xd0 <sendnlmsg+0xa8>
      7c: b9407408     	ldr	w8, [x0, #0x74]
      80: aa0003f3     	mov	x19, x0
      84: 350001a8     	cbnz	w8, 0xb8 <sendnlmsg+0x90>
      88: 295a2269     	ldp	w9, w8, [x19, #0xd0]
      8c: 4b090108     	sub	w8, w8, w9
      90: 7100c11f     	cmp	w8, #0x30
      94: 5400012b     	b.lt	0xb8 <sendnlmsg+0x90>
      98: aa1303e0     	mov	x0, x19
      9c: 2a1f03e1     	mov	w1, wzr
      a0: 2a1f03e2     	mov	w2, wzr
      a4: 2a1f03e3     	mov	w3, wzr
      a8: 52800404     	mov	w4, #0x20               // =32
      ac: 2a1f03e5     	mov	w5, wzr
      b0: 94000000     	bl	0xb0 <sendnlmsg+0x88>
		00000000000000b0:  R_AARCH64_CALL26	__nlmsg_put
      b4: b50001a0     	cbnz	x0, 0xe8 <sendnlmsg+0xc0>
      b8: aa1f03e0     	mov	x0, xzr
      bc: aa1303e1     	mov	x1, x19
      c0: 52800042     	mov	w2, #0x2                // =2
      c4: 94000000     	bl	0xc4 <sendnlmsg+0x9c>
		00000000000000c4:  R_AARCH64_CALL26	sk_skb_reason_drop
      c8: 12800b20     	mov	w0, #-0x5a              // =-90
      cc: 14000002     	b	0xd4 <sendnlmsg+0xac>
      d0: 12800160     	mov	w0, #-0xc               // =-12
      d4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      d8: a94157f6     	ldp	x22, x21, [sp, #0x10]
      dc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      e0: d50323bf     	autiasp
      e4: d65f03c0     	ret
      e8: f803427f     	stur	xzr, [x19, #0x34]
      ec: 394002c1     	ldrb	w1, [x22]
      f0: 39004001     	strb	w1, [x0, #0x10]
      f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfb4
      f8: 91000000     	add	x0, x0, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfb4
      fc: 94000000     	bl	0xfc <sendnlmsg+0xd4>
		00000000000000fc:  R_AARCH64_CALL26	_printk
     100: f94002a0     	ldr	x0, [x21]
		0000000000000100:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     104: b9400282     	ldr	w2, [x20]
		0000000000000104:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30
     108: aa1303e1     	mov	x1, x19
     10c: 52800803     	mov	w3, #0x40               // =64
     110: 94000000     	bl	0x110 <sendnlmsg+0xe8>
		0000000000000110:  R_AARCH64_CALL26	netlink_unicast
     114: b9400281     	ldr	w1, [x20]
		0000000000000114:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30
     118: 2a0003f3     	mov	w19, w0
     11c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfda
     120: 91000000     	add	x0, x0, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfda
     124: 2a1303e2     	mov	w2, w19
     128: 94000000     	bl	0x128 <sendnlmsg+0x100>
		0000000000000128:  R_AARCH64_CALL26	_printk
     12c: 0a937e60     	and	w0, w19, w19, asr #31
     130: 17ffffe9     	b	0xd4 <sendnlmsg+0xac>
