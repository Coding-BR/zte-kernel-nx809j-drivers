
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000834 <charger_policy_demo_sts_set>:
     834: d503233f     	paciasp
     838: d100c3ff     	sub	sp, sp, #0x30
     83c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     840: f90013f3     	str	x19, [sp, #0x20]
     844: 910043fd     	add	x29, sp, #0x10
     848: d5384108     	mrs	x8, SP_EL0
     84c: f9438908     	ldr	x8, [x8, #0x710]
     850: f90007e8     	str	x8, [sp, #0x8]
     854: b90007ff     	str	wzr, [sp, #0x4]
     858: b5000101     	cbnz	x1, 0x878 <charger_policy_demo_sts_set+0x44>
     85c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     860: 91000000     	add	x0, x0, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     864: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     868: 91000021     	add	x1, x1, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     86c: 94000000     	bl	0x86c <charger_policy_demo_sts_set+0x38>
		000000000000086c:  R_AARCH64_CALL26	_printk
     870: 128002a0     	mov	w0, #-0x16              // =-22
     874: 14000014     	b	0x8c4 <charger_policy_demo_sts_set+0x90>
     878: aa0103f3     	mov	x19, x1
     87c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000087c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x138f
     880: 91000021     	add	x1, x1, #0x0
		0000000000000880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x138f
     884: 910013e2     	add	x2, sp, #0x4
     888: 94000000     	bl	0x888 <charger_policy_demo_sts_set+0x54>
		0000000000000888:  R_AARCH64_CALL26	sscanf
     88c: b94007e8     	ldr	w8, [sp, #0x4]
     890: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1062
     894: 91000000     	add	x0, x0, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1062
     898: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     89c: 91000021     	add	x1, x1, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     8a0: 7100011f     	cmp	w8, #0x0
     8a4: 1a9f07e2     	cset	w2, ne
     8a8: b90007e2     	str	w2, [sp, #0x4]
     8ac: 94000000     	bl	0x8ac <charger_policy_demo_sts_set+0x78>
		00000000000008ac:  R_AARCH64_CALL26	_printk
     8b0: 39486668     	ldrb	w8, [x19, #0x219]
     8b4: b94007e9     	ldr	w9, [sp, #0x4]
     8b8: 6b08013f     	cmp	w9, w8
     8bc: 54000181     	b.ne	0x8ec <charger_policy_demo_sts_set+0xb8>
     8c0: 2a1f03e0     	mov	w0, wzr
     8c4: d5384108     	mrs	x8, SP_EL0
     8c8: f9438908     	ldr	x8, [x8, #0x710]
     8cc: f94007e9     	ldr	x9, [sp, #0x8]
     8d0: eb09011f     	cmp	x8, x9
     8d4: 54000381     	b.ne	0x944 <charger_policy_demo_sts_set+0x110>
     8d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     8dc: f94013f3     	ldr	x19, [sp, #0x20]
     8e0: 9100c3ff     	add	sp, sp, #0x30
     8e4: d50323bf     	autiasp
     8e8: d65f03c0     	ret
     8ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d2
     8f0: 91000000     	add	x0, x0, #0x0
		00000000000008f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d2
     8f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     8f8: 91000021     	add	x1, x1, #0x0
		00000000000008f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     8fc: 94000000     	bl	0x8fc <charger_policy_demo_sts_set+0xc8>
		00000000000008fc:  R_AARCH64_CALL26	_printk
     900: b94007e8     	ldr	w8, [sp, #0x4]
     904: 7100011f     	cmp	w8, #0x0
     908: 1a9f07e9     	cset	w9, ne
     90c: 39086669     	strb	w9, [x19, #0x219]
     910: 350000e8     	cbnz	w8, 0x92c <charger_policy_demo_sts_set+0xf8>
     914: f940f260     	ldr	x0, [x19, #0x1e0]
     918: 94000000     	bl	0x918 <charger_policy_demo_sts_set+0xe4>
		0000000000000918:  R_AARCH64_CALL26	__pm_stay_awake
     91c: aa1303e0     	mov	x0, x19
     920: 9400000a     	bl	0x948 <charger_policy_status_disable>
     924: f940f260     	ldr	x0, [x19, #0x1e0]
     928: 94000000     	bl	0x928 <charger_policy_demo_sts_set+0xf4>
		0000000000000928:  R_AARCH64_CALL26	__pm_relax
     92c: f9405261     	ldr	x1, [x19, #0xa0]
     930: 9102a262     	add	x2, x19, #0xa8
     934: 52800400     	mov	w0, #0x20               // =32
     938: 52800323     	mov	w3, #0x19               // =25
     93c: 94000000     	bl	0x93c <charger_policy_demo_sts_set+0x108>
		000000000000093c:  R_AARCH64_CALL26	queue_delayed_work_on
     940: 17ffffe0     	b	0x8c0 <charger_policy_demo_sts_set+0x8c>
     944: 94000000     	bl	0x944 <charger_policy_demo_sts_set+0x110>
		0000000000000944:  R_AARCH64_CALL26	__stack_chk_fail
