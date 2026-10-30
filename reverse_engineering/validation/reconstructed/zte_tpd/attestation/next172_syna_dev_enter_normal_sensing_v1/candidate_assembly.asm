
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008320 <syna_dev_enter_normal_sensing>:
    8320: d503233f     	paciasp
    8324: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8328: a9014ff4     	stp	x20, x19, [sp, #0x10]
    832c: 910003fd     	mov	x29, sp
    8330: aa0003f3     	mov	x19, x0
    8334: f9413808     	ldr	x8, [x0, #0x270]
    8338: f9400000     	ldr	x0, [x0]
    833c: b940b909     	ldr	w9, [x8, #0xb8]
    8340: 340000a9     	cbz	w9, 0x8354 <syna_dev_enter_normal_sensing+0x34>
    8344: 3942f108     	ldrb	w8, [x8, #0xbc]
    8348: 36000068     	tbz	w8, #0x0, 0x8354 <syna_dev_enter_normal_sensing+0x34>
    834c: 2a1f03f4     	mov	w20, wzr
    8350: 14000002     	b	0x8358 <syna_dev_enter_normal_sensing+0x38>
    8354: b9420c14     	ldr	w20, [x0, #0x20c]
    8358: 2a1f03e1     	mov	w1, wzr
    835c: 2a1403e2     	mov	w2, w20
    8360: 94000000     	bl	0x8360 <syna_dev_enter_normal_sensing+0x40>
		0000000000008360:  R_AARCH64_CALL26	syna_tcm_sleep
    8364: 37f80200     	tbnz	w0, #0x1f, 0x83a4 <syna_dev_enter_normal_sensing+0x84>
    8368: 39560668     	ldrb	w8, [x19, #0x581]
    836c: 7100051f     	cmp	w8, #0x1
    8370: 54000101     	b.ne	0x8390 <syna_dev_enter_normal_sensing+0x70>
    8374: aa1303e0     	mov	x0, x19
    8378: 2a1f03e1     	mov	w1, wzr
    837c: 2a1403e2     	mov	w2, w20
    8380: 94000000     	bl	0x8380 <syna_dev_enter_normal_sensing+0x60>
		0000000000008380:  R_AARCH64_CALL26	syna_dev_enable_lowpwr_gesture
    8384: 37f80160     	tbnz	w0, #0x1f, 0x83b0 <syna_dev_enter_normal_sensing+0x90>
    8388: 52800c80     	mov	w0, #0x64               // =100
    838c: 94000000     	bl	0x838c <syna_dev_enter_normal_sensing+0x6c>
		000000000000838c:  R_AARCH64_CALL26	msleep
    8390: 2a1f03e0     	mov	w0, wzr
    8394: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    8398: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    839c: d50323bf     	autiasp
    83a0: d65f03c0     	ret
    83a4: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000083a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bb1
    83a8: 91000108     	add	x8, x8, #0x0
		00000000000083a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bb1
    83ac: 14000003     	b	0x83b8 <syna_dev_enter_normal_sensing+0x98>
    83b0: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000083b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37d4
    83b4: 91000108     	add	x8, x8, #0x0
		00000000000083b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37d4
    83b8: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x18c>
		00000000000083b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cc5
    83bc: 91000021     	add	x1, x1, #0x0
		00000000000083bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cc5
    83c0: 2a0003f3     	mov	w19, w0
    83c4: aa0803e0     	mov	x0, x8
    83c8: 94000000     	bl	0x83c8 <syna_dev_enter_normal_sensing+0xa8>
		00000000000083c8:  R_AARCH64_CALL26	_printk
    83cc: 2a1303e0     	mov	w0, w19
    83d0: 17fffff1     	b	0x8394 <syna_dev_enter_normal_sensing+0x74>
