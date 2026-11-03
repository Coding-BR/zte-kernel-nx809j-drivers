
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000776c <haptic_vma_open>:
    776c: d503233f     	paciasp
    7770: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7774: f9000bf3     	str	x19, [sp, #0x10]
    7778: 910003fd     	mov	x29, sp
    777c: f9403013     	ldr	x19, [x0, #0x60]
    7780: 91002260     	add	x0, x19, #0x8
    7784: 94000000     	bl	0x7784 <haptic_vma_open+0x18>
		0000000000007784:  R_AARCH64_CALL26	mutex_lock
    7788: 14000012     	b	0x77d0 <haptic_vma_open+0x64>
    778c: 52800028     	mov	w8, #0x1                // =1
    7790: b8280268     	ldadd	w8, w8, [x19]
    7794: 340002a8     	cbz	w8, 0x77e8 <haptic_vma_open+0x7c>
    7798: 11000509     	add	w9, w8, #0x1
    779c: 2a080128     	orr	w8, w9, w8
    77a0: 37f80148     	tbnz	w8, #0x1f, 0x77c8 <haptic_vma_open+0x5c>
    77a4: b9405e68     	ldr	w8, [x19, #0x5c]
    77a8: 91002260     	add	x0, x19, #0x8
    77ac: 11000508     	add	w8, w8, #0x1
    77b0: b9005e68     	str	w8, [x19, #0x5c]
    77b4: 94000000     	bl	0x77b4 <haptic_vma_open+0x48>
		00000000000077b4:  R_AARCH64_CALL26	mutex_unlock
    77b8: f9400bf3     	ldr	x19, [sp, #0x10]
    77bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    77c0: d50323bf     	autiasp
    77c4: d65f03c0     	ret
    77c8: 52800021     	mov	w1, #0x1                // =1
    77cc: 14000008     	b	0x77ec <haptic_vma_open+0x80>
    77d0: f9800271     	prfm	pstl1strm, [x19]
    77d4: 885f7e68     	ldxr	w8, [x19]
    77d8: 11000509     	add	w9, w8, #0x1
    77dc: 880a7e69     	stxr	w10, w9, [x19]
    77e0: 35ffffaa     	cbnz	w10, 0x77d4 <haptic_vma_open+0x68>
    77e4: 35fffda8     	cbnz	w8, 0x7798 <haptic_vma_open+0x2c>
    77e8: 52800041     	mov	w1, #0x2                // =2
    77ec: aa1303e0     	mov	x0, x19
    77f0: 94000000     	bl	0x77f0 <haptic_vma_open+0x84>
		00000000000077f0:  R_AARCH64_CALL26	refcount_warn_saturate
    77f4: 17ffffec     	b	0x77a4 <haptic_vma_open+0x38>
