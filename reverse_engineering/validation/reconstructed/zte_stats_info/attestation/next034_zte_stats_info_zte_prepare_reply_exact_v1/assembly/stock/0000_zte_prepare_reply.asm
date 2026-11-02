
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b68 <zte_prepare_reply>:
     b68: d503233f     	paciasp
     b6c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     b70: f9000bf5     	str	x21, [sp, #0x10]
     b74: a9024ff4     	stp	x20, x19, [sp, #0x20]
     b78: 910003fd     	mov	x29, sp
     b7c: 11001c48     	add	w8, w2, #0x7
     b80: aa0103f3     	mov	x19, x1
     b84: aa0003f5     	mov	x21, x0
     b88: 121e2508     	and	w8, w8, #0xffc
     b8c: 52819801     	mov	w1, #0xcc0              // =3264
     b90: 2a1f03e2     	mov	w2, wzr
     b94: 11004d08     	add	w8, w8, #0x13
     b98: 12800003     	mov	w3, #-0x1               // =-1
     b9c: 121e2500     	and	w0, w8, #0xffc
     ba0: 94000000     	bl	0xba0 <zte_prepare_reply+0x38>
		0000000000000ba0:  R_AARCH64_CALL26	__alloc_skb
     ba4: b4000100     	cbz	x0, 0xbc4 <zte_prepare_reply+0x5c>
     ba8: aa0003f4     	mov	x20, x0
     bac: b4000115     	cbz	x21, 0xbcc <zte_prepare_reply+0x64>
     bb0: 294006a2     	ldp	w2, w1, [x21]
     bb4: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000bb4:  R_AARCH64_ADR_PREL_PG_HI21	.data..ro_after_init
     bb8: 91000063     	add	x3, x3, #0x0
		0000000000000bb8:  R_AARCH64_ADD_ABS_LO12_NC	.data..ro_after_init
     bbc: aa1403e0     	mov	x0, x20
     bc0: 1400001b     	b	0xc2c <zte_prepare_reply+0xc4>
     bc4: 12800160     	mov	w0, #-0xc               // =-12
     bc8: 14000024     	b	0xc58 <zte_prepare_reply+0xf0>
     bcc: d5384108     	mrs	x8, SP_EL0
     bd0: b9401109     	ldr	w9, [x8, #0x10]
     bd4: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000bd4:  R_AARCH64_ADR_PREL_PG_HI21	.data..percpu+0x70
     bd8: 9100014a     	add	x10, x10, #0x0
		0000000000000bd8:  R_AARCH64_ADD_ABS_LO12_NC	.data..percpu+0x70
     bdc: 11000529     	add	w9, w9, #0x1
     be0: b9001109     	str	w9, [x8, #0x10]
     be4: d538d089     	mrs	x9, TPIDR_EL1
     be8: 8b0a0129     	add	x9, x9, x10
     bec: 5280002a     	mov	w10, #0x1               // =1
     bf0: 885f7d35     	ldxr	w21, [x9]
     bf4: 0b0a02b5     	add	w21, w21, w10
     bf8: 880b7d35     	stxr	w11, w21, [x9]
     bfc: 35ffffab     	cbnz	w11, 0xbf0 <zte_prepare_reply+0x88>
     c00: f9400909     	ldr	x9, [x8, #0x10]
     c04: f1000529     	subs	x9, x9, #0x1
     c08: b9001109     	str	w9, [x8, #0x10]
     c0c: 54000300     	b.eq	0xc6c <zte_prepare_reply+0x104>
     c10: f9400908     	ldr	x8, [x8, #0x10]
     c14: b40002c8     	cbz	x8, 0xc6c <zte_prepare_reply+0x104>
     c18: 510006a2     	sub	w2, w21, #0x1
     c1c: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c1c:  R_AARCH64_ADR_PREL_PG_HI21	.data..ro_after_init
     c20: 91000063     	add	x3, x3, #0x0
		0000000000000c20:  R_AARCH64_ADD_ABS_LO12_NC	.data..ro_after_init
     c24: aa1403e0     	mov	x0, x20
     c28: 2a1f03e1     	mov	w1, wzr
     c2c: 2a1f03e4     	mov	w4, wzr
     c30: 52800045     	mov	w5, #0x2                // =2
     c34: 94000000     	bl	0xc34 <zte_prepare_reply+0xcc>
		0000000000000c34:  R_AARCH64_CALL26	genlmsg_put
     c38: b4000080     	cbz	x0, 0xc48 <zte_prepare_reply+0xe0>
     c3c: 2a1f03e0     	mov	w0, wzr
     c40: f9000274     	str	x20, [x19]
     c44: 14000005     	b	0xc58 <zte_prepare_reply+0xf0>
     c48: aa1403e1     	mov	x1, x20
     c4c: 52800042     	mov	w2, #0x2                // =2
     c50: 94000000     	bl	0xc50 <zte_prepare_reply+0xe8>
		0000000000000c50:  R_AARCH64_CALL26	sk_skb_reason_drop
     c54: 128002a0     	mov	w0, #-0x16              // =-22
     c58: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     c5c: f9400bf5     	ldr	x21, [sp, #0x10]
     c60: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     c64: d50323bf     	autiasp
     c68: d65f03c0     	ret
     c6c: 94000000     	bl	0xc6c <zte_prepare_reply+0x104>
		0000000000000c6c:  R_AARCH64_CALL26	preempt_schedule_notrace
     c70: 17ffffea     	b	0xc18 <zte_prepare_reply+0xb0>
