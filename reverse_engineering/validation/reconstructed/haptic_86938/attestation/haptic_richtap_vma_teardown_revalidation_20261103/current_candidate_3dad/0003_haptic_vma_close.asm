
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000077fc <haptic_vma_close>:
    77fc: d503233f     	paciasp
    7800: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7804: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7808: 910003fd     	mov	x29, sp
    780c: f9403013     	ldr	x19, [x0, #0x60]
    7810: 91002260     	add	x0, x19, #0x8
    7814: 94000000     	bl	0x7814 <haptic_vma_close+0x18>
		0000000000007814:  R_AARCH64_CALL26	mutex_lock
    7818: b9405e68     	ldr	w8, [x19, #0x5c]
    781c: 34000608     	cbz	w8, 0x78dc <haptic_vma_close+0xe0>
    7820: 71000508     	subs	w8, w8, #0x1
    7824: b9005e68     	str	w8, [x19, #0x5c]
    7828: 540002e1     	b.ne	0x7884 <haptic_vma_close+0x88>
    782c: 3941a268     	ldrb	w8, [x19, #0x68]
    7830: 360002a8     	tbz	w8, #0x0, 0x7884 <haptic_vma_close+0x88>
    7834: f9403274     	ldr	x20, [x19, #0x60]
    7838: 91002260     	add	x0, x19, #0x8
    783c: f900327f     	str	xzr, [x19, #0x60]
    7840: 94000000     	bl	0x7840 <haptic_vma_close+0x44>
		0000000000007840:  R_AARCH64_CALL26	mutex_unlock
    7844: b4000254     	cbz	x20, 0x788c <haptic_vma_close+0x90>
    7848: d378de88     	lsl	x8, x20, #8
    784c: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    7850: 8b882128     	add	x8, x9, x8, asr #8
    7854: d346fd08     	lsr	x8, x8, #6
    7858: 927acd08     	and	x8, x8, #0x3ffffffffffffc0
    785c: 14000036     	b	0x7934 <haptic_vma_close+0x138>
    7860: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    7864: f2b80009     	movk	x9, #0xc000, lsl #16
    7868: 8b090108     	add	x8, x8, x9
    786c: 52880009     	mov	w9, #0x4000             // =16384
    7870: f829111f     	stclr	x9, [x8]
    7874: aa1403e0     	mov	x0, x20
    7878: 52800041     	mov	w1, #0x2                // =2
    787c: 94000000     	bl	0x787c <haptic_vma_close+0x80>
		000000000000787c:  R_AARCH64_CALL26	free_pages
    7880: 14000003     	b	0x788c <haptic_vma_close+0x90>
    7884: 91002260     	add	x0, x19, #0x8
    7888: 94000000     	bl	0x7888 <haptic_vma_close+0x8c>
		0000000000007888:  R_AARCH64_CALL26	mutex_unlock
    788c: b4000453     	cbz	x19, 0x7914 <haptic_vma_close+0x118>
    7890: 14000017     	b	0x78ec <haptic_vma_close+0xf0>
    7894: 12800008     	mov	w8, #-0x1               // =-1
    7898: b8680268     	ldaddl	w8, w8, [x19]
    789c: 7100051f     	cmp	w8, #0x1
    78a0: 54000361     	b.ne	0x790c <haptic_vma_close+0x110>
    78a4: d50339bf     	dmb	ishld
    78a8: b9405a68     	ldr	w8, [x19, #0x58]
    78ac: 350000a8     	cbnz	w8, 0x78c0 <haptic_vma_close+0xc4>
    78b0: b9405e68     	ldr	w8, [x19, #0x5c]
    78b4: 35000068     	cbnz	w8, 0x78c0 <haptic_vma_close+0xc4>
    78b8: f9403268     	ldr	x8, [x19, #0x60]
    78bc: b40000a8     	cbz	x8, 0x78d0 <haptic_vma_close+0xd4>
    78c0: d4210000     	brk	#0x800
    78c4: aa1303e0     	mov	x0, x19
    78c8: 94000000     	bl	0x78c8 <haptic_vma_close+0xcc>
		00000000000078c8:  R_AARCH64_CALL26	kfree
    78cc: 14000012     	b	0x7914 <haptic_vma_close+0x118>
    78d0: f9402a68     	ldr	x8, [x19, #0x50]
    78d4: b4ffff88     	cbz	x8, 0x78c4 <haptic_vma_close+0xc8>
    78d8: 17fffffa     	b	0x78c0 <haptic_vma_close+0xc4>
    78dc: d4210000     	brk	#0x800
    78e0: b9405e68     	ldr	w8, [x19, #0x5c]
    78e4: 35fff9e8     	cbnz	w8, 0x7820 <haptic_vma_close+0x24>
    78e8: 17ffffd1     	b	0x782c <haptic_vma_close+0x30>
    78ec: 52800029     	mov	w9, #0x1                // =1
    78f0: f9800271     	prfm	pstl1strm, [x19]
    78f4: 885f7e68     	ldxr	w8, [x19]
    78f8: 4b09010a     	sub	w10, w8, w9
    78fc: 880bfe6a     	stlxr	w11, w10, [x19]
    7900: 35ffffab     	cbnz	w11, 0x78f4 <haptic_vma_close+0xf8>
    7904: 7100051f     	cmp	w8, #0x1
    7908: 54fffce0     	b.eq	0x78a4 <haptic_vma_close+0xa8>
    790c: 7100011f     	cmp	w8, #0x0
    7910: 540000ad     	b.le	0x7924 <haptic_vma_close+0x128>
    7914: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7918: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    791c: d50323bf     	autiasp
    7920: d65f03c0     	ret
    7924: aa1303e0     	mov	x0, x19
    7928: 52800061     	mov	w1, #0x3                // =3
    792c: 94000000     	bl	0x792c <haptic_vma_close+0x130>
		000000000000792c:  R_AARCH64_CALL26	refcount_warn_saturate
    7930: 17fffff9     	b	0x7914 <haptic_vma_close+0x118>
    7934: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    7938: f2b80009     	movk	x9, #0xc000, lsl #16
    793c: 8b090108     	add	x8, x8, x9
    7940: 52880009     	mov	w9, #0x4000             // =16384
    7944: f9800111     	prfm	pstl1strm, [x8]
    7948: c85f7d0a     	ldxr	x10, [x8]
    794c: 8a29014a     	bic	x10, x10, x9
    7950: c80b7d0a     	stxr	w11, x10, [x8]
    7954: 35ffffab     	cbnz	w11, 0x7948 <haptic_vma_close+0x14c>
    7958: 17ffffc7     	b	0x7874 <haptic_vma_close+0x78>
