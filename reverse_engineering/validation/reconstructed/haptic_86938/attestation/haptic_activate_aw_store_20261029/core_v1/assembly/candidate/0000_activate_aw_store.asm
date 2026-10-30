
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000414c <activate_aw_store>:
    414c: d503233f     	paciasp
    4150: d100c3ff     	sub	sp, sp, #0x30
    4154: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4158: a9024ff4     	stp	x20, x19, [sp, #0x20]
    415c: 910043fd     	add	x29, sp, #0x10
    4160: d5384109     	mrs	x9, SP_EL0
    4164: aa0203e8     	mov	x8, x2
    4168: 910013e2     	add	x2, sp, #0x4
    416c: f9438929     	ldr	x9, [x9, #0x710]
    4170: 2a1f03e1     	mov	w1, wzr
    4174: aa0303f3     	mov	x19, x3
    4178: f90007e9     	str	x9, [sp, #0x8]
    417c: f9404c14     	ldr	x20, [x0, #0x98]
    4180: aa0803e0     	mov	x0, x8
    4184: b90007ff     	str	wzr, [sp, #0x4]
    4188: 94000000     	bl	0x4188 <activate_aw_store+0x3c>
		0000000000004188:  R_AARCH64_CALL26	kstrtouint
    418c: 36f801a0     	tbz	w0, #0x1f, 0x41c0 <activate_aw_store+0x74>
    4190: 93407c13     	sxtw	x19, w0
    4194: d5384108     	mrs	x8, SP_EL0
    4198: f9438908     	ldr	x8, [x8, #0x710]
    419c: f94007e9     	ldr	x9, [sp, #0x8]
    41a0: eb09011f     	cmp	x8, x9
    41a4: 54000501     	b.ne	0x4244 <activate_aw_store+0xf8>
    41a8: aa1303e0     	mov	x0, x19
    41ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    41b0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    41b4: 9100c3ff     	add	sp, sp, #0x30
    41b8: d50323bf     	autiasp
    41bc: d65f03c0     	ret
    41c0: b94007e4     	ldr	w4, [sp, #0x4]
    41c4: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		00000000000041c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    41c8: 91000000     	add	x0, x0, #0x0
		00000000000041c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    41cc: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		00000000000041cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    41d0: 91000021     	add	x1, x1, #0x0
		00000000000041d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    41d4: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		00000000000041d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f
    41d8: 91000063     	add	x3, x3, #0x0
		00000000000041d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f
    41dc: 528125a2     	mov	w2, #0x92d              // =2349
    41e0: 94000000     	bl	0x41e0 <activate_aw_store+0x94>
		00000000000041e0:  R_AARCH64_CALL26	_printk
    41e4: 3855e288     	ldurb	w8, [x20, #-0xa2]
    41e8: 360001c8     	tbz	w8, #0x0, 0x4220 <activate_aw_store+0xd4>
    41ec: 91092280     	add	x0, x20, #0x248
    41f0: 94000000     	bl	0x41f0 <activate_aw_store+0xa4>
		00000000000041f0:  R_AARCH64_CALL26	mutex_lock
    41f4: 910a2280     	add	x0, x20, #0x288
    41f8: 94000000     	bl	0x41f8 <activate_aw_store+0xac>
		00000000000041f8:  R_AARCH64_CALL26	hrtimer_cancel
    41fc: b94007e8     	ldr	w8, [sp, #0x4]
    4200: 91092280     	add	x0, x20, #0x248
    4204: b8198288     	stur	w8, [x20, #-0x68]
    4208: 94000000     	bl	0x4208 <activate_aw_store+0xbc>
		0000000000004208:  R_AARCH64_CALL26	mutex_unlock
    420c: f941d281     	ldr	x1, [x20, #0x3a0]
    4210: 910e0282     	add	x2, x20, #0x380
    4214: 52800400     	mov	w0, #0x20               // =32
    4218: 94000000     	bl	0x4218 <activate_aw_store+0xcc>
		0000000000004218:  R_AARCH64_CALL26	queue_work_on
    421c: 17ffffde     	b	0x4194 <activate_aw_store+0x48>
    4220: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc60
    4224: 91000000     	add	x0, x0, #0x0
		0000000000004224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc60
    4228: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    422c: 91000021     	add	x1, x1, #0x0
		000000000000422c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4230: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f
    4234: 91000063     	add	x3, x3, #0x0
		0000000000004234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f
    4238: 528125e2     	mov	w2, #0x92f              // =2351
    423c: 94000000     	bl	0x423c <activate_aw_store+0xf0>
		000000000000423c:  R_AARCH64_CALL26	_printk
    4240: 17ffffd5     	b	0x4194 <activate_aw_store+0x48>
    4244: 94000000     	bl	0x4244 <activate_aw_store+0xf8>
		0000000000004244:  R_AARCH64_CALL26	__stack_chk_fail
