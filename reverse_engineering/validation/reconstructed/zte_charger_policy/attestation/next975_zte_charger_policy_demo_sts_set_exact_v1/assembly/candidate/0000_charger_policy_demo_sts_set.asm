
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007d8 <charger_policy_demo_sts_set>:
     7d8: d503233f     	paciasp
     7dc: d100c3ff     	sub	sp, sp, #0x30
     7e0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     7e4: f90013f3     	str	x19, [sp, #0x20]
     7e8: 910043fd     	add	x29, sp, #0x10
     7ec: d5384108     	mrs	x8, SP_EL0
     7f0: f9438908     	ldr	x8, [x8, #0x710]
     7f4: f90007e8     	str	x8, [sp, #0x8]
     7f8: b90007ff     	str	wzr, [sp, #0x4]
     7fc: b5000101     	cbnz	x1, 0x81c <charger_policy_demo_sts_set+0x44>
     800: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4b
     804: 91000000     	add	x0, x0, #0x0
		0000000000000804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4b
     808: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     80c: 91000021     	add	x1, x1, #0x0
		000000000000080c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     810: 94000000     	bl	0x810 <charger_policy_demo_sts_set+0x38>
		0000000000000810:  R_AARCH64_CALL26	_printk
     814: 128002a0     	mov	w0, #-0x16              // =-22
     818: 14000014     	b	0x868 <charger_policy_demo_sts_set+0x90>
     81c: aa0103f3     	mov	x19, x1
     820: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1753
     824: 91000021     	add	x1, x1, #0x0
		0000000000000824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1753
     828: 910013e2     	add	x2, sp, #0x4
     82c: 94000000     	bl	0x82c <charger_policy_demo_sts_set+0x54>
		000000000000082c:  R_AARCH64_CALL26	sscanf
     830: b94007e8     	ldr	w8, [sp, #0x4]
     834: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1307
     838: 91000000     	add	x0, x0, #0x0
		0000000000000838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1307
     83c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000083c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     840: 91000021     	add	x1, x1, #0x0
		0000000000000840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     844: 7100011f     	cmp	w8, #0x0
     848: 1a9f07e2     	cset	w2, ne
     84c: b90007e2     	str	w2, [sp, #0x4]
     850: 94000000     	bl	0x850 <charger_policy_demo_sts_set+0x78>
		0000000000000850:  R_AARCH64_CALL26	_printk
     854: 39486668     	ldrb	w8, [x19, #0x219]
     858: b94007e9     	ldr	w9, [sp, #0x4]
     85c: 6b08013f     	cmp	w9, w8
     860: 54000181     	b.ne	0x890 <charger_policy_demo_sts_set+0xb8>
     864: 2a1f03e0     	mov	w0, wzr
     868: d5384108     	mrs	x8, SP_EL0
     86c: f9438908     	ldr	x8, [x8, #0x710]
     870: f94007e9     	ldr	x9, [sp, #0x8]
     874: eb09011f     	cmp	x8, x9
     878: 54000381     	b.ne	0x8e8 <charger_policy_demo_sts_set+0x110>
     87c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     880: f94013f3     	ldr	x19, [sp, #0x20]
     884: 9100c3ff     	add	sp, sp, #0x30
     888: d50323bf     	autiasp
     88c: d65f03c0     	ret
     890: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1544
     894: 91000000     	add	x0, x0, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1544
     898: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     89c: 91000021     	add	x1, x1, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     8a0: 94000000     	bl	0x8a0 <charger_policy_demo_sts_set+0xc8>
		00000000000008a0:  R_AARCH64_CALL26	_printk
     8a4: b94007e8     	ldr	w8, [sp, #0x4]
     8a8: 7100011f     	cmp	w8, #0x0
     8ac: 1a9f07e9     	cset	w9, ne
     8b0: 39086669     	strb	w9, [x19, #0x219]
     8b4: 350000e8     	cbnz	w8, 0x8d0 <charger_policy_demo_sts_set+0xf8>
     8b8: f940f260     	ldr	x0, [x19, #0x1e0]
     8bc: 94000000     	bl	0x8bc <charger_policy_demo_sts_set+0xe4>
		00000000000008bc:  R_AARCH64_CALL26	__pm_stay_awake
     8c0: aa1303e0     	mov	x0, x19
     8c4: 9400000a     	bl	0x8ec <charger_policy_status_disable>
     8c8: f940f260     	ldr	x0, [x19, #0x1e0]
     8cc: 94000000     	bl	0x8cc <charger_policy_demo_sts_set+0xf4>
		00000000000008cc:  R_AARCH64_CALL26	__pm_relax
     8d0: f9405261     	ldr	x1, [x19, #0xa0]
     8d4: 9102a262     	add	x2, x19, #0xa8
     8d8: 52800400     	mov	w0, #0x20               // =32
     8dc: 52800323     	mov	w3, #0x19               // =25
     8e0: 94000000     	bl	0x8e0 <charger_policy_demo_sts_set+0x108>
		00000000000008e0:  R_AARCH64_CALL26	queue_delayed_work_on
     8e4: 17ffffe0     	b	0x864 <charger_policy_demo_sts_set+0x8c>
     8e8: 94000000     	bl	0x8e8 <charger_policy_demo_sts_set+0x110>
		00000000000008e8:  R_AARCH64_CALL26	__stack_chk_fail
