
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000088 <zte_prepare_reply>:
      88: d503233f     	paciasp
      8c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      90: f9000bf5     	str	x21, [sp, #0x10]
      94: a9024ff4     	stp	x20, x19, [sp, #0x20]
      98: 910003fd     	mov	x29, sp
      9c: 11001c48     	add	w8, w2, #0x7
      a0: aa0103f3     	mov	x19, x1
      a4: aa0003f5     	mov	x21, x0
      a8: 121e2508     	and	w8, w8, #0xffc
      ac: 52819801     	mov	w1, #0xcc0              // =3264
      b0: 2a1f03e2     	mov	w2, wzr
      b4: 11004d08     	add	w8, w8, #0x13
      b8: 12800003     	mov	w3, #-0x1               // =-1
      bc: 121e2500     	and	w0, w8, #0xffc
      c0: 94000000     	bl	0xc0 <zte_prepare_reply+0x38>
		00000000000000c0:  R_AARCH64_CALL26	__alloc_skb
      c4: b4000100     	cbz	x0, 0xe4 <zte_prepare_reply+0x5c>
      c8: aa0003f4     	mov	x20, x0
      cc: b4000115     	cbz	x21, 0xec <zte_prepare_reply+0x64>
      d0: 294006a2     	ldp	w2, w1, [x21]
      d4: 90000003     	adrp	x3, 0x0 <.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.data..ro_after_init
      d8: 91000063     	add	x3, x3, #0x0
		00000000000000d8:  R_AARCH64_ADD_ABS_LO12_NC	.data..ro_after_init
      dc: aa1403e0     	mov	x0, x20
      e0: 1400001b     	b	0x14c <zte_prepare_reply+0xc4>
      e4: 12800160     	mov	w0, #-0xc               // =-12
      e8: 14000024     	b	0x178 <zte_prepare_reply+0xf0>
      ec: d5384108     	mrs	x8, SP_EL0
      f0: b9401109     	ldr	w9, [x8, #0x10]
      f4: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.data..percpu
      f8: 9100014a     	add	x10, x10, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	.data..percpu
      fc: 11000529     	add	w9, w9, #0x1
     100: b9001109     	str	w9, [x8, #0x10]
     104: d538d089     	mrs	x9, TPIDR_EL1
     108: 8b0a0129     	add	x9, x9, x10
     10c: 5280002a     	mov	w10, #0x1               // =1
     110: 885f7d35     	ldxr	w21, [x9]
     114: 0b0a02b5     	add	w21, w21, w10
     118: 880b7d35     	stxr	w11, w21, [x9]
     11c: 35ffffab     	cbnz	w11, 0x110 <zte_prepare_reply+0x88>
     120: f9400909     	ldr	x9, [x8, #0x10]
     124: f1000529     	subs	x9, x9, #0x1
     128: b9001109     	str	w9, [x8, #0x10]
     12c: 54000300     	b.eq	0x18c <zte_prepare_reply+0x104>
     130: f9400908     	ldr	x8, [x8, #0x10]
     134: b40002c8     	cbz	x8, 0x18c <zte_prepare_reply+0x104>
     138: 510006a2     	sub	w2, w21, #0x1
     13c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.data..ro_after_init
     140: 91000063     	add	x3, x3, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	.data..ro_after_init
     144: aa1403e0     	mov	x0, x20
     148: 2a1f03e1     	mov	w1, wzr
     14c: 2a1f03e4     	mov	w4, wzr
     150: 52800045     	mov	w5, #0x2                // =2
     154: 94000000     	bl	0x154 <zte_prepare_reply+0xcc>
		0000000000000154:  R_AARCH64_CALL26	genlmsg_put
     158: b4000080     	cbz	x0, 0x168 <zte_prepare_reply+0xe0>
     15c: 2a1f03e0     	mov	w0, wzr
     160: f9000274     	str	x20, [x19]
     164: 14000005     	b	0x178 <zte_prepare_reply+0xf0>
     168: aa1403e1     	mov	x1, x20
     16c: 52800042     	mov	w2, #0x2                // =2
     170: 94000000     	bl	0x170 <zte_prepare_reply+0xe8>
		0000000000000170:  R_AARCH64_CALL26	sk_skb_reason_drop
     174: 128002a0     	mov	w0, #-0x16              // =-22
     178: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     17c: f9400bf5     	ldr	x21, [sp, #0x10]
     180: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     184: d50323bf     	autiasp
     188: d65f03c0     	ret
     18c: 94000000     	bl	0x18c <zte_prepare_reply+0x104>
		000000000000018c:  R_AARCH64_CALL26	preempt_schedule_notrace
     190: 17ffffea     	b	0x138 <zte_prepare_reply+0xb0>
