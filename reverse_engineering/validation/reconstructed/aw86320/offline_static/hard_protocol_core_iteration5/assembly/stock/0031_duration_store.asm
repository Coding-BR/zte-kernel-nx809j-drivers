
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000032c0 <duration_store>:
    32c0: d503233f     	paciasp
    32c4: d10143ff     	sub	sp, sp, #0x50
    32c8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    32cc: f9001bf5     	str	x21, [sp, #0x30]
    32d0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    32d4: 910083fd     	add	x29, sp, #0x20
    32d8: d5384108     	mrs	x8, SP_EL0
    32dc: aa0103f4     	mov	x20, x1
    32e0: 910023e0     	add	x0, sp, #0x8
    32e4: f9438908     	ldr	x8, [x8, #0x710]
    32e8: f100245f     	cmp	x2, #0x9
    32ec: f81f83a8     	stur	x8, [x29, #-0x8]
    32f0: 90000008     	adrp	x8, 0x3000 <ram_load+0x8d0>
		00000000000032f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    32f4: f9400115     	ldr	x21, [x8]
		00000000000032f4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
    32f8: 52800128     	mov	w8, #0x9                // =9
    32fc: b90007ff     	str	wzr, [sp, #0x4]
    3300: 9a883053     	csel	x19, x2, x8, lo
    3304: 2a1f03e2     	mov	w2, wzr
    3308: 790023ff     	strh	wzr, [sp, #0x10]
    330c: aa1303e1     	mov	x1, x19
    3310: f90007ff     	str	xzr, [sp, #0x8]
    3314: 94000000     	bl	0x3314 <duration_store+0x54>
		0000000000003314:  R_AARCH64_CALL26	__check_object_size
    3318: 910023e0     	add	x0, sp, #0x8
    331c: aa1403e1     	mov	x1, x20
    3320: aa1303e2     	mov	x2, x19
    3324: 97fffabe     	bl	0x1e1c <_inline_copy_from_user>
    3328: 350000c0     	cbnz	w0, 0x3340 <duration_store+0x80>
    332c: 910023e0     	add	x0, sp, #0x8
    3330: 910013e2     	add	x2, sp, #0x4
    3334: 2a1f03e1     	mov	w1, wzr
    3338: 94000000     	bl	0x3338 <duration_store+0x78>
		0000000000003338:  R_AARCH64_CALL26	kstrtouint
    333c: 340001c0     	cbz	w0, 0x3374 <duration_store+0xb4>
    3340: 928002b3     	mov	x19, #-0x16             // =-22
    3344: d5384108     	mrs	x8, SP_EL0
    3348: f9438908     	ldr	x8, [x8, #0x710]
    334c: f85f83a9     	ldur	x9, [x29, #-0x8]
    3350: eb09011f     	cmp	x8, x9
    3354: 54000381     	b.ne	0x33c4 <duration_store+0x104>
    3358: aa1303e0     	mov	x0, x19
    335c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    3360: f9401bf5     	ldr	x21, [sp, #0x30]
    3364: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    3368: 910143ff     	add	sp, sp, #0x50
    336c: d50323bf     	autiasp
    3370: d65f03c0     	ret
    3374: b94007e4     	ldr	w4, [sp, #0x4]
    3378: 52807fe8     	mov	w8, #0x3ff              // =1023
    337c: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		000000000000337c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d5
    3380: 91000000     	add	x0, x0, #0x0
		0000000000003380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d5
    3384: 90000001     	adrp	x1, 0x3000 <ram_load+0x8d0>
		0000000000003384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    3388: 91000021     	add	x1, x1, #0x0
		0000000000003388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    338c: 710ffc9f     	cmp	w4, #0x3ff
    3390: 90000003     	adrp	x3, 0x3000 <ram_load+0x8d0>
		0000000000003390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa10
    3394: 91000063     	add	x3, x3, #0x0
		0000000000003394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa10
    3398: 1a883085     	csel	w5, w4, w8, lo
    339c: 528070c2     	mov	w2, #0x386              // =902
    33a0: b9000ea5     	str	w5, [x21, #0xc]
    33a4: 94000000     	bl	0x33a4 <duration_store+0xe4>
		00000000000033a4:  R_AARCH64_CALL26	_printk
    33a8: b94012a8     	ldr	w8, [x21, #0x10]
    33ac: 7100051f     	cmp	w8, #0x1
    33b0: 54fffcab     	b.lt	0x3344 <duration_store+0x84>
    33b4: 294102a1     	ldp	w1, w0, [x21, #0x8]
    33b8: 79402aa2     	ldrh	w2, [x21, #0x14]
    33bc: 94000000     	bl	0x33bc <duration_store+0xfc>
		00000000000033bc:  R_AARCH64_CALL26	aw86320_play_atsin0
    33c0: 17ffffe1     	b	0x3344 <duration_store+0x84>
    33c4: 94000000     	bl	0x33c4 <duration_store+0x104>
		00000000000033c4:  R_AARCH64_CALL26	__stack_chk_fail
