
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000028 <sendnlmsg>:
      28: d503233f     	paciasp
      2c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      30: a90157f6     	stp	x22, x21, [sp, #0x10]
      34: a9024ff4     	stp	x20, x19, [sp, #0x20]
      38: 910003fd     	mov	x29, sp
      3c: b40004e0     	cbz	x0, 0xd8 <sendnlmsg+0xb0>
      40: aa0003f6     	mov	x22, x0
      44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
      48: 91000000     	add	x0, x0, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
      4c: 94000000     	bl	0x4c <sendnlmsg+0x24>
		000000000000004c:  R_AARCH64_CALL26	mutex_lock
      50: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
      54: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      58: 12800254     	mov	w20, #-0x13             // =-19
      5c: b9400113     	ldr	w19, [x8]
		000000000000005c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x60
      60: f94002a8     	ldr	x8, [x21]
		0000000000000060:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
      64: b4000408     	cbz	x8, 0xe4 <sendnlmsg+0xbc>
      68: 340003f3     	cbz	w19, 0xe4 <sendnlmsg+0xbc>
      6c: 52800600     	mov	w0, #0x30               // =48
      70: 52810401     	mov	w1, #0x820              // =2080
      74: 2a1f03e2     	mov	w2, wzr
      78: 12800003     	mov	w3, #-0x1               // =-1
      7c: 94000000     	bl	0x7c <sendnlmsg+0x54>
		000000000000007c:  R_AARCH64_CALL26	__alloc_skb
      80: b4000300     	cbz	x0, 0xe0 <sendnlmsg+0xb8>
      84: b9407408     	ldr	w8, [x0, #0x74]
      88: aa0003f4     	mov	x20, x0
      8c: 350001a8     	cbnz	w8, 0xc0 <sendnlmsg+0x98>
      90: 295a2289     	ldp	w9, w8, [x20, #0xd0]
      94: 4b090108     	sub	w8, w8, w9
      98: 7100c11f     	cmp	w8, #0x30
      9c: 5400012b     	b.lt	0xc0 <sendnlmsg+0x98>
      a0: aa1403e0     	mov	x0, x20
      a4: 2a1f03e1     	mov	w1, wzr
      a8: 2a1f03e2     	mov	w2, wzr
      ac: 2a1f03e3     	mov	w3, wzr
      b0: 52800404     	mov	w4, #0x20               // =32
      b4: 2a1f03e5     	mov	w5, wzr
      b8: 94000000     	bl	0xb8 <sendnlmsg+0x90>
		00000000000000b8:  R_AARCH64_CALL26	__nlmsg_put
      bc: b5000260     	cbnz	x0, 0x108 <sendnlmsg+0xe0>
      c0: aa1f03e0     	mov	x0, xzr
      c4: aa1403e1     	mov	x1, x20
      c8: 52800042     	mov	w2, #0x2                // =2
      cc: 94000000     	bl	0xcc <sendnlmsg+0xa4>
		00000000000000cc:  R_AARCH64_CALL26	sk_skb_reason_drop
      d0: 12800b34     	mov	w20, #-0x5a             // =-90
      d4: 14000004     	b	0xe4 <sendnlmsg+0xbc>
      d8: 12800254     	mov	w20, #-0x13             // =-19
      dc: 14000005     	b	0xf0 <sendnlmsg+0xc8>
      e0: 12800174     	mov	w20, #-0xc              // =-12
      e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
      e8: 91000000     	add	x0, x0, #0x0
		00000000000000e8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
      ec: 94000000     	bl	0xec <sendnlmsg+0xc4>
		00000000000000ec:  R_AARCH64_CALL26	mutex_unlock
      f0: 2a1403e0     	mov	w0, w20
      f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      f8: a94157f6     	ldp	x22, x21, [sp, #0x10]
      fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     100: d50323bf     	autiasp
     104: d65f03c0     	ret
     108: f803429f     	stur	xzr, [x20, #0x34]
     10c: 394002c1     	ldrb	w1, [x22]
     110: 39004001     	strb	w1, [x0, #0x10]
     114: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13cc
     118: 91000000     	add	x0, x0, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13cc
     11c: 94000000     	bl	0x11c <sendnlmsg+0xf4>
		000000000000011c:  R_AARCH64_CALL26	_printk
     120: f94002a0     	ldr	x0, [x21]
		0000000000000120:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     124: aa1403e1     	mov	x1, x20
     128: 2a1303e2     	mov	w2, w19
     12c: 52800803     	mov	w3, #0x40               // =64
     130: 94000000     	bl	0x130 <sendnlmsg+0x108>
		0000000000000130:  R_AARCH64_CALL26	netlink_unicast
     134: 2a0003f4     	mov	w20, w0
     138: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f2
     13c: 91000000     	add	x0, x0, #0x0
		000000000000013c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f2
     140: 2a1303e1     	mov	w1, w19
     144: 2a1403e2     	mov	w2, w20
     148: 94000000     	bl	0x148 <sendnlmsg+0x120>
		0000000000000148:  R_AARCH64_CALL26	_printk
     14c: 0a947e94     	and	w20, w20, w20, asr #31
     150: 17ffffe5     	b	0xe4 <sendnlmsg+0xbc>
