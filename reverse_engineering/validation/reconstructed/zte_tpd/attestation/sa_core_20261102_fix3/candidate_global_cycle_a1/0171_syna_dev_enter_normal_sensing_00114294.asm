
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b3bc <syna_dev_enter_normal_sensing>:
   1b3bc: d503233f     	paciasp
   1b3c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1b3c4: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1b3c8: 910003fd     	mov	x29, sp
   1b3cc: f9413808     	ldr	x8, [x0, #0x270]
   1b3d0: aa0003f3     	mov	x19, x0
   1b3d4: f9400000     	ldr	x0, [x0]
   1b3d8: b940b909     	ldr	w9, [x8, #0xb8]
   1b3dc: 340000a9     	cbz	w9, 0x1b3f0 <syna_dev_enter_normal_sensing+0x34>
   1b3e0: 3942f108     	ldrb	w8, [x8, #0xbc]
   1b3e4: 36000068     	tbz	w8, #0x0, 0x1b3f0 <syna_dev_enter_normal_sensing+0x34>
   1b3e8: 2a1f03f4     	mov	w20, wzr
   1b3ec: 14000002     	b	0x1b3f4 <syna_dev_enter_normal_sensing+0x38>
   1b3f0: b9420c14     	ldr	w20, [x0, #0x20c]
   1b3f4: 2a1f03e1     	mov	w1, wzr
   1b3f8: 2a1403e2     	mov	w2, w20
   1b3fc: 94000000     	bl	0x1b3fc <syna_dev_enter_normal_sensing+0x40>
		000000000001b3fc:  R_AARCH64_CALL26	syna_tcm_sleep
   1b400: 37f80200     	tbnz	w0, #0x1f, 0x1b440 <syna_dev_enter_normal_sensing+0x84>
   1b404: 39560668     	ldrb	w8, [x19, #0x581]
   1b408: 7100051f     	cmp	w8, #0x1
   1b40c: 54000101     	b.ne	0x1b42c <syna_dev_enter_normal_sensing+0x70>
   1b410: aa1303e0     	mov	x0, x19
   1b414: 2a1f03e1     	mov	w1, wzr
   1b418: 2a1403e2     	mov	w2, w20
   1b41c: 94000000     	bl	0x1b41c <syna_dev_enter_normal_sensing+0x60>
		000000000001b41c:  R_AARCH64_CALL26	syna_dev_enable_lowpwr_gesture
   1b420: 37f80160     	tbnz	w0, #0x1f, 0x1b44c <syna_dev_enter_normal_sensing+0x90>
   1b424: 52800c80     	mov	w0, #0x64               // =100
   1b428: 94000000     	bl	0x1b428 <syna_dev_enter_normal_sensing+0x6c>
		000000000001b428:  R_AARCH64_CALL26	msleep
   1b42c: 2a1f03e0     	mov	w0, wzr
   1b430: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1b434: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1b438: d50323bf     	autiasp
   1b43c: d65f03c0     	ret
   1b440: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bb6
   1b444: 91000108     	add	x8, x8, #0x0
		000000000001b444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bb6
   1b448: 14000003     	b	0x1b454 <syna_dev_enter_normal_sensing+0x98>
   1b44c: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b44c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x641c
   1b450: 91000108     	add	x8, x8, #0x0
		000000000001b450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x641c
   1b454: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88b4
   1b458: 91000021     	add	x1, x1, #0x0
		000000000001b458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88b4
   1b45c: 2a0003f3     	mov	w19, w0
   1b460: aa0803e0     	mov	x0, x8
   1b464: 94000000     	bl	0x1b464 <syna_dev_enter_normal_sensing+0xa8>
		000000000001b464:  R_AARCH64_CALL26	_printk
   1b468: 2a1303e0     	mov	w0, w19
   1b46c: 17fffff1     	b	0x1b430 <syna_dev_enter_normal_sensing+0x74>
