
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b360 <syna_dev_enter_normal_sensing>:
   1b360: d503233f     	paciasp
   1b364: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1b368: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1b36c: 910003fd     	mov	x29, sp
   1b370: f9413808     	ldr	x8, [x0, #0x270]
   1b374: aa0003f3     	mov	x19, x0
   1b378: f9400000     	ldr	x0, [x0]
   1b37c: b940b909     	ldr	w9, [x8, #0xb8]
   1b380: 340000a9     	cbz	w9, 0x1b394 <syna_dev_enter_normal_sensing+0x34>
   1b384: 3942f108     	ldrb	w8, [x8, #0xbc]
   1b388: 36000068     	tbz	w8, #0x0, 0x1b394 <syna_dev_enter_normal_sensing+0x34>
   1b38c: 2a1f03f4     	mov	w20, wzr
   1b390: 14000002     	b	0x1b398 <syna_dev_enter_normal_sensing+0x38>
   1b394: b9420c14     	ldr	w20, [x0, #0x20c]
   1b398: 2a1f03e1     	mov	w1, wzr
   1b39c: 2a1403e2     	mov	w2, w20
   1b3a0: 94000000     	bl	0x1b3a0 <syna_dev_enter_normal_sensing+0x40>
		000000000001b3a0:  R_AARCH64_CALL26	syna_tcm_sleep
   1b3a4: 37f80200     	tbnz	w0, #0x1f, 0x1b3e4 <syna_dev_enter_normal_sensing+0x84>
   1b3a8: 39560668     	ldrb	w8, [x19, #0x581]
   1b3ac: 7100051f     	cmp	w8, #0x1
   1b3b0: 54000101     	b.ne	0x1b3d0 <syna_dev_enter_normal_sensing+0x70>
   1b3b4: aa1303e0     	mov	x0, x19
   1b3b8: 2a1f03e1     	mov	w1, wzr
   1b3bc: 2a1403e2     	mov	w2, w20
   1b3c0: 94000000     	bl	0x1b3c0 <syna_dev_enter_normal_sensing+0x60>
		000000000001b3c0:  R_AARCH64_CALL26	syna_dev_enable_lowpwr_gesture
   1b3c4: 37f80160     	tbnz	w0, #0x1f, 0x1b3f0 <syna_dev_enter_normal_sensing+0x90>
   1b3c8: 52800c80     	mov	w0, #0x64               // =100
   1b3cc: 94000000     	bl	0x1b3cc <syna_dev_enter_normal_sensing+0x6c>
		000000000001b3cc:  R_AARCH64_CALL26	msleep
   1b3d0: 2a1f03e0     	mov	w0, wzr
   1b3d4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1b3d8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1b3dc: d50323bf     	autiasp
   1b3e0: d65f03c0     	ret
   1b3e4: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b3e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bb6
   1b3e8: 91000108     	add	x8, x8, #0x0
		000000000001b3e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bb6
   1b3ec: 14000003     	b	0x1b3f8 <syna_dev_enter_normal_sensing+0x98>
   1b3f0: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b3f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x641c
   1b3f4: 91000108     	add	x8, x8, #0x0
		000000000001b3f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x641c
   1b3f8: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b3f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88b4
   1b3fc: 91000021     	add	x1, x1, #0x0
		000000000001b3fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88b4
   1b400: 2a0003f3     	mov	w19, w0
   1b404: aa0803e0     	mov	x0, x8
   1b408: 94000000     	bl	0x1b408 <syna_dev_enter_normal_sensing+0xa8>
		000000000001b408:  R_AARCH64_CALL26	_printk
   1b40c: 2a1303e0     	mov	w0, w19
   1b410: 17fffff1     	b	0x1b3d4 <syna_dev_enter_normal_sensing+0x74>
