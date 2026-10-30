
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000424c <vmax_store>:
    424c: d503233f     	paciasp
    4250: d10103ff     	sub	sp, sp, #0x40
    4254: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4258: f90013f5     	str	x21, [sp, #0x20]
    425c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4260: 910043fd     	add	x29, sp, #0x10
    4264: d5384109     	mrs	x9, SP_EL0
    4268: aa0203e8     	mov	x8, x2
    426c: 910013e2     	add	x2, sp, #0x4
    4270: f9438929     	ldr	x9, [x9, #0x710]
    4274: 2a1f03e1     	mov	w1, wzr
    4278: aa0303f3     	mov	x19, x3
    427c: f90007e9     	str	x9, [sp, #0x8]
    4280: f9404c15     	ldr	x21, [x0, #0x98]
    4284: aa0803e0     	mov	x0, x8
    4288: b90007ff     	str	wzr, [sp, #0x4]
    428c: 94000000     	bl	0x428c <vmax_store+0x40>
		000000000000428c:  R_AARCH64_CALL26	kstrtouint
    4290: 36f801c0     	tbz	w0, #0x1f, 0x42c8 <vmax_store+0x7c>
    4294: 93407c13     	sxtw	x19, w0
    4298: d5384108     	mrs	x8, SP_EL0
    429c: f9438908     	ldr	x8, [x8, #0x710]
    42a0: f94007e9     	ldr	x9, [sp, #0x8]
    42a4: eb09011f     	cmp	x8, x9
    42a8: 54000461     	b.ne	0x4334 <vmax_store+0xe8>
    42ac: aa1303e0     	mov	x0, x19
    42b0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    42b4: f94013f5     	ldr	x21, [sp, #0x20]
    42b8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    42bc: 910103ff     	add	sp, sp, #0x40
    42c0: d50323bf     	autiasp
    42c4: d65f03c0     	ret
    42c8: b94007e4     	ldr	w4, [sp, #0x4]
    42cc: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		00000000000042cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    42d0: 91000000     	add	x0, x0, #0x0
		00000000000042d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    42d4: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		00000000000042d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    42d8: 91000021     	add	x1, x1, #0x0
		00000000000042d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    42dc: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		00000000000042dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cd
    42e0: 91000063     	add	x3, x3, #0x0
		00000000000042e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cd
    42e4: 52813242     	mov	w2, #0x992              // =2450
    42e8: d102a2b4     	sub	x20, x21, #0xa8
    42ec: 94000000     	bl	0x42ec <vmax_store+0xa0>
		00000000000042ec:  R_AARCH64_CALL26	_printk
    42f0: 910922a0     	add	x0, x21, #0x248
    42f4: 94000000     	bl	0x42f4 <vmax_store+0xa8>
		00000000000042f4:  R_AARCH64_CALL26	mutex_lock
    42f8: b94007e1     	ldr	w1, [sp, #0x4]
    42fc: f94292a8     	ldr	x8, [x21, #0x520]
    4300: aa1403e0     	mov	x0, x20
    4304: b81882a1     	stur	w1, [x21, #-0x78]
    4308: f9405108     	ldr	x8, [x8, #0xa0]
    430c: b85fc110     	ldur	w16, [x8, #-0x4]
    4310: 729bedd1     	movk	w17, #0xdf6e
    4314: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    4318: 6b11021f     	cmp	w16, w17
    431c: 54000040     	b.eq	0x4324 <vmax_store+0xd8>
    4320: d4304500     	brk	#0x8228
    4324: d63f0100     	blr	x8
    4328: 910922a0     	add	x0, x21, #0x248
    432c: 94000000     	bl	0x432c <vmax_store+0xe0>
		000000000000432c:  R_AARCH64_CALL26	mutex_unlock
    4330: 17ffffda     	b	0x4298 <vmax_store+0x4c>
    4334: 94000000     	bl	0x4334 <vmax_store+0xe8>
		0000000000004334:  R_AARCH64_CALL26	__stack_chk_fail
