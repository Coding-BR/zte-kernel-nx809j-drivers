
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000084 <fan_hrtimer_hander>:
      84: d503233f     	paciasp
      88: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      8c: f9000bf3     	str	x19, [sp, #0x10]
      90: 910003fd     	mov	x29, sp
      94: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	chip
      98: f9400268     	ldr	x8, [x19]
		0000000000000098:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      9c: f9400508     	ldr	x8, [x8, #0x8]
      a0: 39400909     	ldrb	w9, [x8, #0x2]
      a4: 7100093f     	cmp	w9, #0x2
      a8: 540004e0     	b.eq	0x144 <fan_hrtimer_hander+0xc0>
      ac: 7100053f     	cmp	w9, #0x1
      b0: 540000c0     	b.eq	0xc8 <fan_hrtimer_hander+0x44>
      b4: 2a1f03e0     	mov	w0, wzr
      b8: f9400bf3     	ldr	x19, [sp, #0x10]
      bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      c0: d50323bf     	autiasp
      c4: d65f03c0     	ret
      c8: b900051f     	str	wzr, [x8, #0x4]
      cc: 52800049     	mov	w9, #0x2                // =2
      d0: 528ca001     	mov	w1, #0x6500             // =25856
      d4: f9400268     	ldr	x8, [x19]
		00000000000000d4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      d8: 72a3b9a1     	movk	w1, #0x1dcd, lsl #16
      dc: aa1f03e2     	mov	x2, xzr
      e0: 52800023     	mov	w3, #0x1                // =1
      e4: f9400508     	ldr	x8, [x8, #0x8]
      e8: 39000909     	strb	w9, [x8, #0x2]
      ec: f9400268     	ldr	x8, [x19]
		00000000000000ec:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      f0: f9400508     	ldr	x8, [x8, #0x8]
      f4: 9100a100     	add	x0, x8, #0x28
      f8: 94000000     	bl	0xf8 <fan_hrtimer_hander+0x74>
		00000000000000f8:  R_AARCH64_CALL26	hrtimer_start_range_ns
      fc: f9400268     	ldr	x8, [x19]
		00000000000000fc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     100: f9400508     	ldr	x8, [x8, #0x8]
     104: b9401d00     	ldr	w0, [x8, #0x1c]
     108: 94000000     	bl	0x108 <fan_hrtimer_hander+0x84>
		0000000000000108:  R_AARCH64_CALL26	enable_irq
     10c: f9400268     	ldr	x8, [x19]
		000000000000010c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     110: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     114: 91000000     	add	x0, x0, #0x0
		0000000000000114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     118: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71
     11c: 91000021     	add	x1, x1, #0x0
		000000000000011c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71
     120: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88
     124: 91000042     	add	x2, x2, #0x0
		0000000000000124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88
     128: f9400508     	ldr	x8, [x8, #0x8]
     12c: 52801043     	mov	w3, #0x82               // =130
     130: 39400104     	ldrb	w4, [x8]
     134: b9400505     	ldr	w5, [x8, #0x4]
     138: 94000000     	bl	0x138 <fan_hrtimer_hander+0xb4>
		0000000000000138:  R_AARCH64_CALL26	_printk
     13c: 52800020     	mov	w0, #0x1                // =1
     140: 17ffffde     	b	0xb8 <fan_hrtimer_hander+0x34>
     144: 52800069     	mov	w9, #0x3                // =3
     148: 39000909     	strb	w9, [x8, #0x2]
     14c: f9400268     	ldr	x8, [x19]
		000000000000014c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     150: f9400509     	ldr	x9, [x8, #0x8]
     154: b940052a     	ldr	w10, [x9, #0x4]
     158: b900092a     	str	w10, [x9, #0x8]
     15c: f9400508     	ldr	x8, [x8, #0x8]
     160: b9401d00     	ldr	w0, [x8, #0x1c]
     164: 94000000     	bl	0x164 <fan_hrtimer_hander+0xe0>
		0000000000000164:  R_AARCH64_CALL26	disable_irq_nosync
     168: f9400268     	ldr	x8, [x19]
		0000000000000168:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     16c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000016c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b
     170: 91000000     	add	x0, x0, #0x0
		0000000000000170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b
     174: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71
     178: 91000021     	add	x1, x1, #0x0
		0000000000000178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71
     17c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88
     180: 91000042     	add	x2, x2, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88
     184: f9400508     	ldr	x8, [x8, #0x8]
     188: 52801123     	mov	w3, #0x89               // =137
     18c: 39400104     	ldrb	w4, [x8]
     190: b9400505     	ldr	w5, [x8, #0x4]
     194: 94000000     	bl	0x194 <fan_hrtimer_hander+0x110>
		0000000000000194:  R_AARCH64_CALL26	_printk
     198: 17ffffc7     	b	0xb4 <fan_hrtimer_hander+0x30>
