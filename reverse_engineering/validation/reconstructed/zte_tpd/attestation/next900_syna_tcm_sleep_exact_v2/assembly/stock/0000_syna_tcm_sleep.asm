
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d074 <syna_tcm_sleep>:
   1d074: d503233f     	paciasp
   1d078: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1d07c: f9000bf5     	str	x21, [sp, #0x10]
   1d080: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1d084: 910003fd     	mov	x29, sp
   1d088: b40003e0     	cbz	x0, 0x1d104 <syna_tcm_sleep+0x90>
   1d08c: 2a0203f3     	mov	w19, w2
   1d090: 350000a2     	cbnz	w2, 0x1d0a4 <syna_tcm_sleep+0x30>
   1d094: f9402408     	ldr	x8, [x0, #0x48]
   1d098: 39405108     	ldrb	w8, [x8, #0x14]
   1d09c: 36000568     	tbz	w8, #0x0, 0x1d148 <syna_tcm_sleep+0xd4>
   1d0a0: 2a1f03f3     	mov	w19, wzr
   1d0a4: 7200003f     	tst	w1, #0x1
   1d0a8: 52800588     	mov	w8, #0x2c               // =44
   1d0ac: f941cc09     	ldr	x9, [x0, #0x398]
   1d0b0: 1a881514     	cinc	w20, w8, eq
   1d0b4: aa1f03e2     	mov	x2, xzr
   1d0b8: 2a1f03e3     	mov	w3, wzr
   1d0bc: 2a1403e1     	mov	w1, w20
   1d0c0: aa1f03e4     	mov	x4, xzr
   1d0c4: 2a1303e5     	mov	w5, w19
   1d0c8: b85fc130     	ldur	w16, [x9, #-0x4]
   1d0cc: 728751d1     	movk	w17, #0x3a8e
   1d0d0: 72a48411     	movk	w17, #0x2420, lsl #16
   1d0d4: 6b11021f     	cmp	w16, w17
   1d0d8: 54000040     	b.eq	0x1d0e0 <syna_tcm_sleep+0x6c>
   1d0dc: d4304520     	brk	#0x8229
   1d0e0: d63f0120     	blr	x9
   1d0e4: 2a1f03e8     	mov	w8, wzr
   1d0e8: 37f801c0     	tbnz	w0, #0x1f, 0x1d120 <syna_tcm_sleep+0xac>
   1d0ec: 2a0803e0     	mov	w0, w8
   1d0f0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1d0f4: f9400bf5     	ldr	x21, [sp, #0x10]
   1d0f8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1d0fc: d50323bf     	autiasp
   1d100: d65f03c0     	ret
   1d104: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d108: 91000000     	add	x0, x0, #0x0
		000000000001d108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d10c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d10c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9c
   1d110: 91000021     	add	x1, x1, #0x0
		000000000001d110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9c
   1d114: 94000000     	bl	0x1d114 <syna_tcm_sleep+0xa0>
		000000000001d114:  R_AARCH64_CALL26	_printk
   1d118: 12801e08     	mov	w8, #-0xf1              // =-241
   1d11c: 17fffff4     	b	0x1d0ec <syna_tcm_sleep+0x78>
   1d120: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb060
   1d124: 91000108     	add	x8, x8, #0x0
		000000000001d124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb060
   1d128: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9c
   1d12c: 91000021     	add	x1, x1, #0x0
		000000000001d12c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9c
   1d130: 12001e82     	and	w2, w20, #0xff
   1d134: 2a0003f3     	mov	w19, w0
   1d138: aa0803e0     	mov	x0, x8
   1d13c: 94000000     	bl	0x1d13c <syna_tcm_sleep+0xc8>
		000000000001d13c:  R_AARCH64_CALL26	_printk
   1d140: 2a1303e8     	mov	w8, w19
   1d144: 17ffffea     	b	0x1d0ec <syna_tcm_sleep+0x78>
   1d148: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1d14c: 91000108     	add	x8, x8, #0x0
		000000000001d14c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1d150: 90000009     	adrp	x9, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9c
   1d154: 91000129     	add	x9, x9, #0x0
		000000000001d154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9c
   1d158: b9420c13     	ldr	w19, [x0, #0x20c]
   1d15c: aa0003f4     	mov	x20, x0
   1d160: aa0803e0     	mov	x0, x8
   1d164: 2a0103f5     	mov	w21, w1
   1d168: aa0903e1     	mov	x1, x9
   1d16c: 94000000     	bl	0x1d16c <syna_tcm_sleep+0xf8>
		000000000001d16c:  R_AARCH64_CALL26	_printk
   1d170: 2a1503e1     	mov	w1, w21
   1d174: aa1403e0     	mov	x0, x20
   1d178: 17ffffcb     	b	0x1d0a4 <syna_tcm_sleep+0x30>
