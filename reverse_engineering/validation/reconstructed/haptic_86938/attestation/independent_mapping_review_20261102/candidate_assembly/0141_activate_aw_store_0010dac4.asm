
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000417c <activate_aw_store>:
    417c: d503233f     	paciasp
    4180: d100c3ff     	sub	sp, sp, #0x30
    4184: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4188: a9024ff4     	stp	x20, x19, [sp, #0x20]
    418c: 910043fd     	add	x29, sp, #0x10
    4190: d5384109     	mrs	x9, SP_EL0
    4194: aa0203e8     	mov	x8, x2
    4198: 910013e2     	add	x2, sp, #0x4
    419c: f9438929     	ldr	x9, [x9, #0x710]
    41a0: 2a1f03e1     	mov	w1, wzr
    41a4: aa0303f3     	mov	x19, x3
    41a8: f90007e9     	str	x9, [sp, #0x8]
    41ac: f9404c14     	ldr	x20, [x0, #0x98]
    41b0: aa0803e0     	mov	x0, x8
    41b4: b90007ff     	str	wzr, [sp, #0x4]
    41b8: 94000000     	bl	0x41b8 <activate_aw_store+0x3c>
		00000000000041b8:  R_AARCH64_CALL26	kstrtouint
    41bc: 36f801a0     	tbz	w0, #0x1f, 0x41f0 <activate_aw_store+0x74>
    41c0: 93407c13     	sxtw	x19, w0
    41c4: d5384108     	mrs	x8, SP_EL0
    41c8: f9438908     	ldr	x8, [x8, #0x710]
    41cc: f94007e9     	ldr	x9, [sp, #0x8]
    41d0: eb09011f     	cmp	x8, x9
    41d4: 54000501     	b.ne	0x4274 <activate_aw_store+0xf8>
    41d8: aa1303e0     	mov	x0, x19
    41dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    41e0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    41e4: 9100c3ff     	add	sp, sp, #0x30
    41e8: d50323bf     	autiasp
    41ec: d65f03c0     	ret
    41f0: b94007e4     	ldr	w4, [sp, #0x4]
    41f4: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		00000000000041f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a
    41f8: 91000000     	add	x0, x0, #0x0
		00000000000041f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a
    41fc: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		00000000000041fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4200: 91000021     	add	x1, x1, #0x0
		0000000000004200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4204: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
    4208: 91000063     	add	x3, x3, #0x0
		0000000000004208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
    420c: 528125a2     	mov	w2, #0x92d              // =2349
    4210: 94000000     	bl	0x4210 <activate_aw_store+0x94>
		0000000000004210:  R_AARCH64_CALL26	_printk
    4214: 3855e288     	ldurb	w8, [x20, #-0xa2]
    4218: 360001c8     	tbz	w8, #0x0, 0x4250 <activate_aw_store+0xd4>
    421c: 91092280     	add	x0, x20, #0x248
    4220: 94000000     	bl	0x4220 <activate_aw_store+0xa4>
		0000000000004220:  R_AARCH64_CALL26	mutex_lock
    4224: 910a2280     	add	x0, x20, #0x288
    4228: 94000000     	bl	0x4228 <activate_aw_store+0xac>
		0000000000004228:  R_AARCH64_CALL26	hrtimer_cancel
    422c: b94007e8     	ldr	w8, [sp, #0x4]
    4230: 91092280     	add	x0, x20, #0x248
    4234: b8198288     	stur	w8, [x20, #-0x68]
    4238: 94000000     	bl	0x4238 <activate_aw_store+0xbc>
		0000000000004238:  R_AARCH64_CALL26	mutex_unlock
    423c: f941d281     	ldr	x1, [x20, #0x3a0]
    4240: 910e0282     	add	x2, x20, #0x380
    4244: 52800400     	mov	w0, #0x20               // =32
    4248: 94000000     	bl	0x4248 <activate_aw_store+0xcc>
		0000000000004248:  R_AARCH64_CALL26	queue_work_on
    424c: 17ffffde     	b	0x41c4 <activate_aw_store+0x48>
    4250: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193b
    4254: 91000000     	add	x0, x0, #0x0
		0000000000004254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193b
    4258: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    425c: 91000021     	add	x1, x1, #0x0
		000000000000425c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4260: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x214
    4264: 91000063     	add	x3, x3, #0x0
		0000000000004264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x214
    4268: 528125e2     	mov	w2, #0x92f              // =2351
    426c: 94000000     	bl	0x426c <activate_aw_store+0xf0>
		000000000000426c:  R_AARCH64_CALL26	_printk
    4270: 17ffffd5     	b	0x41c4 <activate_aw_store+0x48>
    4274: 94000000     	bl	0x4274 <activate_aw_store+0xf8>
		0000000000004274:  R_AARCH64_CALL26	__stack_chk_fail
