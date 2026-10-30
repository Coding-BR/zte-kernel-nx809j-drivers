
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002288 <freq_store>:
    2288: d503233f     	paciasp
    228c: d10143ff     	sub	sp, sp, #0x50
    2290: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2294: f9001bf5     	str	x21, [sp, #0x30]
    2298: a9044ff4     	stp	x20, x19, [sp, #0x40]
    229c: 910083fd     	add	x29, sp, #0x20
    22a0: d5384108     	mrs	x8, SP_EL0
    22a4: aa0103f4     	mov	x20, x1
    22a8: 910023e0     	add	x0, sp, #0x8
    22ac: f9438908     	ldr	x8, [x8, #0x710]
    22b0: f100245f     	cmp	x2, #0x9
    22b4: f81f83a8     	stur	x8, [x29, #-0x8]
    22b8: 90000008     	adrp	x8, 0x2000 <speed_store+0x8>
		00000000000022b8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
    22bc: f9400115     	ldr	x21, [x8]
		00000000000022bc:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
    22c0: 52800128     	mov	w8, #0x9                // =9
    22c4: b90007ff     	str	wzr, [sp, #0x4]
    22c8: 9a883053     	csel	x19, x2, x8, lo
    22cc: 2a1f03e2     	mov	w2, wzr
    22d0: 790023ff     	strh	wzr, [sp, #0x10]
    22d4: aa1303e1     	mov	x1, x19
    22d8: f90007ff     	str	xzr, [sp, #0x8]
    22dc: 94000000     	bl	0x22dc <freq_store+0x54>
		00000000000022dc:  R_AARCH64_CALL26	__check_object_size
    22e0: 910023e0     	add	x0, sp, #0x8
    22e4: aa1403e1     	mov	x1, x20
    22e8: aa1303e2     	mov	x2, x19
    22ec: 97fffecc     	bl	0x1e1c <_inline_copy_from_user>
		00000000000022ec:  R_AARCH64_CALL26	_inline_copy_from_user
    22f0: 350000c0     	cbnz	w0, 0x2308 <freq_store+0x80>
    22f4: 910023e0     	add	x0, sp, #0x8
    22f8: 910013e2     	add	x2, sp, #0x4
    22fc: 2a1f03e1     	mov	w1, wzr
    2300: 94000000     	bl	0x2300 <freq_store+0x78>
		0000000000002300:  R_AARCH64_CALL26	kstrtouint
    2304: 340001c0     	cbz	w0, 0x233c <freq_store+0xb4>
    2308: 928002b3     	mov	x19, #-0x16             // =-22
    230c: d5384108     	mrs	x8, SP_EL0
    2310: f9438908     	ldr	x8, [x8, #0x710]
    2314: f85f83a9     	ldur	x9, [x29, #-0x8]
    2318: eb09011f     	cmp	x8, x9
    231c: 54000381     	b.ne	0x238c <freq_store+0x104>
    2320: aa1303e0     	mov	x0, x19
    2324: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    2328: f9401bf5     	ldr	x21, [sp, #0x30]
    232c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2330: 910143ff     	add	sp, sp, #0x50
    2334: d50323bf     	autiasp
    2338: d65f03c0     	ret
    233c: b94007e8     	ldr	w8, [sp, #0x4]
    2340: 52803e89     	mov	w9, #0x1f4              // =500
    2344: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002344:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xd65
    2348: 91000000     	add	x0, x0, #0x0
		0000000000002348:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xd65
    234c: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		000000000000234c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    2350: 91000021     	add	x1, x1, #0x0
		0000000000002350:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    2354: 7107d11f     	cmp	w8, #0x1f4
    2358: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002358:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x1b4
    235c: 91000063     	add	x3, x3, #0x0
		000000000000235c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x1b4
    2360: 1a893104     	csel	w4, w8, w9, lo
    2364: 52807da2     	mov	w2, #0x3ed              // =1005
    2368: 79002aa4     	strh	w4, [x21, #0x14]
    236c: 94000000     	bl	0x236c <freq_store+0xe4>
		000000000000236c:  R_AARCH64_CALL26	_printk
    2370: b94012a8     	ldr	w8, [x21, #0x10]
    2374: 7100051f     	cmp	w8, #0x1
    2378: 54fffcab     	b.lt	0x230c <freq_store+0x84>
    237c: 294102a1     	ldp	w1, w0, [x21, #0x8]
    2380: 79402aa2     	ldrh	w2, [x21, #0x14]
    2384: 94000000     	bl	0x2384 <freq_store+0xfc>
		0000000000002384:  R_AARCH64_CALL26	aw86320_play_atsin0
    2388: 17ffffe1     	b	0x230c <freq_store+0x84>
    238c: 94000000     	bl	0x238c <freq_store+0x104>
		000000000000238c:  R_AARCH64_CALL26	__stack_chk_fail
