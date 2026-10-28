
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000098 <show_simlock_status>:
      98: d503233f     	paciasp
      9c: d10283ff     	sub	sp, sp, #0xa0
      a0: a9087bfd     	stp	x29, x30, [sp, #0x80]
      a4: a9094ff4     	stp	x20, x19, [sp, #0x90]
      a8: 910203fd     	add	x29, sp, #0x80
      ac: d5384108     	mrs	x8, SP_EL0
      b0: 52900609     	mov	w9, #0x8030             // =32816
      b4: 528100e0     	mov	w0, #0x807              // =2055
      b8: f9438908     	ldr	x8, [x8, #0x710]
      bc: 72a000a9     	movk	w9, #0x5, lsl #16
      c0: aa0203f3     	mov	x19, x2
      c4: 910023e1     	add	x1, sp, #0x8
      c8: 72a04000     	movk	w0, #0x200, lsl #16
      cc: 52800022     	mov	w2, #0x1                // =1
      d0: f81f83a8     	stur	x8, [x29, #-0x8]
      d4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
      d8: 39400108     	ldrb	w8, [x8]
		00000000000000d8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
      dc: a906ffff     	stp	xzr, xzr, [sp, #0x68]
      e0: a905ffff     	stp	xzr, xzr, [sp, #0x58]
      e4: 7100011f     	cmp	w8, #0x0
      e8: 52800608     	mov	w8, #0x30               // =48
      ec: a904ffff     	stp	xzr, xzr, [sp, #0x48]
      f0: 9a881128     	csel	x8, x9, x8, ne
      f4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
      f8: a900a3ff     	stp	xzr, x8, [sp, #0x8]
      fc: 52800048     	mov	w8, #0x2                // =2
     100: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     104: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     108: b9000be8     	str	w8, [sp, #0x8]
     10c: 94000000     	bl	0x10c <show_simlock_status+0x74>
		000000000000010c:  R_AARCH64_CALL26	qcom_scm_qseecom_call
     110: 350000a0     	cbnz	w0, 0x124 <show_simlock_status+0x8c>
     114: f94037e8     	ldr	x8, [sp, #0x68]
     118: b94063e9     	ldr	w9, [sp, #0x60]
     11c: aa088134     	orr	x20, x9, x8, lsl #32
     120: 14000007     	b	0x13c <show_simlock_status+0xa4>
     124: 2a0003e2     	mov	w2, w0
     128: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed
     12c: 91000000     	add	x0, x0, #0x0
		000000000000012c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed
     130: 528000c1     	mov	w1, #0x6                // =6
     134: 94000000     	bl	0x134 <show_simlock_status+0x9c>
		0000000000000134:  R_AARCH64_CALL26	_printk
     138: aa1f03f4     	mov	x20, xzr
     13c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175
     140: 91000000     	add	x0, x0, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175
     144: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
     148: 91000021     	add	x1, x1, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
     14c: aa1403e2     	mov	x2, x20
     150: 94000000     	bl	0x150 <show_simlock_status+0xb8>
		0000000000000150:  R_AARCH64_CALL26	_printk
     154: 2a3403e8     	mvn	w8, w20
     158: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d
     15c: 91000042     	add	x2, x2, #0x0
		000000000000015c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d
     160: f262051f     	tst	x8, #0xc0000000
     164: aa1303e0     	mov	x0, x19
     168: 52820001     	mov	w1, #0x1000             // =4096
     16c: 1a9f17e3     	cset	w3, eq
     170: 94000000     	bl	0x170 <show_simlock_status+0xd8>
		0000000000000170:  R_AARCH64_CALL26	snprintf
     174: d5384108     	mrs	x8, SP_EL0
     178: f9438908     	ldr	x8, [x8, #0x710]
     17c: f85f83a9     	ldur	x9, [x29, #-0x8]
     180: eb09011f     	cmp	x8, x9
     184: 540000e1     	b.ne	0x1a0 <show_simlock_status+0x108>
     188: 93407c00     	sxtw	x0, w0
     18c: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     190: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     194: 910283ff     	add	sp, sp, #0xa0
     198: d50323bf     	autiasp
     19c: d65f03c0     	ret
     1a0: 94000000     	bl	0x1a0 <show_simlock_status+0x108>
		00000000000001a0:  R_AARCH64_CALL26	__stack_chk_fail
