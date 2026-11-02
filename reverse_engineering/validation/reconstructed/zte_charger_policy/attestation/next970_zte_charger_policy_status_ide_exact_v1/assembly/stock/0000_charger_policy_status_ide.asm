
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <charger_policy_status_ide>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: a90157f6     	stp	x22, x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 39487408     	ldrb	w8, [x0, #0x21d]
      1c: aa0003f3     	mov	x19, x0
      20: 7100051f     	cmp	w8, #0x1
      24: 540002e0     	b.eq	0x80 <charger_policy_status_ide+0x7c>
      28: 52800020     	mov	w0, #0x1                // =1
      2c: 52800036     	mov	w22, #0x1               // =1
      30: 94000000     	bl	0x30 <charger_policy_status_ide+0x2c>
		0000000000000030:  R_AARCH64_CALL26	ktime_get_with_offset
      34: 94000000     	bl	0x34 <charger_policy_status_ide+0x30>
		0000000000000034:  R_AARCH64_CALL26	ns_to_timespec64
      38: 39486668     	ldrb	w8, [x19, #0x219]
      3c: 7100051f     	cmp	w8, #0x1
      40: 54000300     	b.eq	0xa0 <charger_policy_status_ide+0x9c>
      44: f9410663     	ldr	x3, [x19, #0x208]
      48: b4000563     	cbz	x3, 0xf4 <charger_policy_status_ide+0xf0>
      4c: 39487668     	ldrb	w8, [x19, #0x21d]
      50: 7100051f     	cmp	w8, #0x1
      54: 54000680     	b.eq	0x124 <charger_policy_status_ide+0x120>
      58: b941f668     	ldr	w8, [x19, #0x1f4]
      5c: cb030009     	sub	x9, x0, x3
      60: eb08013f     	cmp	x9, x8
      64: 540007aa     	b.ge	0x158 <charger_policy_status_ide+0x154>
      68: 2a1f03e0     	mov	w0, wzr
      6c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      70: a94157f6     	ldp	x22, x21, [sp, #0x10]
      74: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      78: d50323bf     	autiasp
      7c: d65f03c0     	ret
      80: 39486662     	ldrb	w2, [x19, #0x219]
      84: 39486a63     	ldrb	w3, [x19, #0x21a]
      88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e4c
      8c: 91000000     	add	x0, x0, #0x0
		000000000000008c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e4c
      90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2058
      94: 91000021     	add	x1, x1, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2058
      98: 94000000     	bl	0x98 <charger_policy_status_ide+0x94>
		0000000000000098:  R_AARCH64_CALL26	_printk
      9c: 17ffffe3     	b	0x28 <charger_policy_status_ide+0x24>
      a0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d0
      a4: 91000108     	add	x8, x8, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d0
      a8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000000a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2058
      ac: 91000294     	add	x20, x20, #0x0
		00000000000000ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2058
      b0: aa0003f5     	mov	x21, x0
      b4: aa0803e0     	mov	x0, x8
      b8: aa1403e1     	mov	x1, x20
      bc: 94000000     	bl	0xbc <charger_policy_status_ide+0xb8>
		00000000000000bc:  R_AARCH64_CALL26	_printk
      c0: aa1303e0     	mov	x0, x19
      c4: 52800021     	mov	w1, #0x1                // =1
      c8: 94000479     	bl	0x12ac <charger_policy_disable_cas>
      cc: b941ee68     	ldr	w8, [x19, #0x1ec]
      d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf2d
      d4: 91000000     	add	x0, x0, #0x0
		00000000000000d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf2d
      d8: aa1403e1     	mov	x1, x20
      dc: aa1503e2     	mov	x2, x21
      e0: b901ee76     	str	w22, [x19, #0x1ec]
      e4: b901f268     	str	w8, [x19, #0x1f0]
      e8: f9010675     	str	x21, [x19, #0x208]
      ec: 94000000     	bl	0xec <charger_policy_status_ide+0xe8>
		00000000000000ec:  R_AARCH64_CALL26	_printk
      f0: 17ffffde     	b	0x68 <charger_policy_status_ide+0x64>
      f4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d2
      f8: 91000108     	add	x8, x8, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d2
      fc: aa0003f4     	mov	x20, x0
     100: f9010660     	str	x0, [x19, #0x208]
     104: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2058
     108: 91000021     	add	x1, x1, #0x0
		0000000000000108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2058
     10c: aa0803e0     	mov	x0, x8
     110: aa1403e2     	mov	x2, x20
     114: 94000000     	bl	0x114 <charger_policy_status_ide+0x110>
		0000000000000114:  R_AARCH64_CALL26	_printk
     118: f9410663     	ldr	x3, [x19, #0x208]
     11c: aa1403e0     	mov	x0, x20
     120: 17ffffcb     	b	0x4c <charger_policy_status_ide+0x48>
     124: b941f665     	ldr	w5, [x19, #0x1f4]
     128: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fd
     12c: 91000108     	add	x8, x8, #0x0
		000000000000012c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fd
     130: aa0003f4     	mov	x20, x0
     134: cb030004     	sub	x4, x0, x3
     138: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2058
     13c: 91000021     	add	x1, x1, #0x0
		000000000000013c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2058
     140: aa0803e0     	mov	x0, x8
     144: aa1403e2     	mov	x2, x20
     148: 94000000     	bl	0x148 <charger_policy_status_ide+0x144>
		0000000000000148:  R_AARCH64_CALL26	_printk
     14c: f9410663     	ldr	x3, [x19, #0x208]
     150: aa1403e0     	mov	x0, x20
     154: 17ffffc1     	b	0x58 <charger_policy_status_ide+0x54>
     158: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc04
     15c: 91000000     	add	x0, x0, #0x0
		000000000000015c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc04
     160: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2058
     164: 91000021     	add	x1, x1, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2058
     168: 94000000     	bl	0x168 <charger_policy_status_ide+0x164>
		0000000000000168:  R_AARCH64_CALL26	_printk
     16c: aa1303e0     	mov	x0, x19
     170: 52800021     	mov	w1, #0x1                // =1
     174: 52800034     	mov	w20, #0x1               // =1
     178: 9400044d     	bl	0x12ac <charger_policy_disable_cas>
     17c: b941ee68     	ldr	w8, [x19, #0x1ec]
     180: 39086e74     	strb	w20, [x19, #0x21b]
     184: b901ee74     	str	w20, [x19, #0x1ec]
     188: b901f268     	str	w8, [x19, #0x1f0]
     18c: 17ffffb7     	b	0x68 <charger_policy_status_ide+0x64>
