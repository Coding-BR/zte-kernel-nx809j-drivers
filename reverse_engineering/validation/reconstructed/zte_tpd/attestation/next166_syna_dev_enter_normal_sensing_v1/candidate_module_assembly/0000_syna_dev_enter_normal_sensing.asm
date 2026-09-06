
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008340 <syna_dev_enter_normal_sensing>:
    8340: d503233f     	paciasp
    8344: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8348: a9014ff4     	stp	x20, x19, [sp, #0x10]
    834c: 910003fd     	mov	x29, sp
    8350: aa0003f3     	mov	x19, x0
    8354: f9413808     	ldr	x8, [x0, #0x270]
    8358: f9400000     	ldr	x0, [x0]
    835c: b940b909     	ldr	w9, [x8, #0xb8]
    8360: 340000a9     	cbz	w9, 0x8374 <syna_dev_enter_normal_sensing+0x34>
    8364: 3942f108     	ldrb	w8, [x8, #0xbc]
    8368: 36000068     	tbz	w8, #0x0, 0x8374 <syna_dev_enter_normal_sensing+0x34>
    836c: 2a1f03f4     	mov	w20, wzr
    8370: 14000002     	b	0x8378 <syna_dev_enter_normal_sensing+0x38>
    8374: b9420c14     	ldr	w20, [x0, #0x20c]
    8378: 2a1f03e1     	mov	w1, wzr
    837c: 2a1403e2     	mov	w2, w20
    8380: 94000000     	bl	0x8380 <syna_dev_enter_normal_sensing+0x40>
		0000000000008380:  R_AARCH64_CALL26	syna_tcm_sleep
    8384: 37f80200     	tbnz	w0, #0x1f, 0x83c4 <syna_dev_enter_normal_sensing+0x84>
    8388: 39560668     	ldrb	w8, [x19, #0x581]
    838c: 7100051f     	cmp	w8, #0x1
    8390: 54000101     	b.ne	0x83b0 <syna_dev_enter_normal_sensing+0x70>
    8394: aa1303e0     	mov	x0, x19
    8398: 2a1f03e1     	mov	w1, wzr
    839c: 2a1403e2     	mov	w2, w20
    83a0: 94000000     	bl	0x83a0 <syna_dev_enter_normal_sensing+0x60>
		00000000000083a0:  R_AARCH64_CALL26	syna_dev_enable_lowpwr_gesture
    83a4: 37f80160     	tbnz	w0, #0x1f, 0x83d0 <syna_dev_enter_normal_sensing+0x90>
    83a8: 52800c80     	mov	w0, #0x64               // =100
    83ac: 94000000     	bl	0x83ac <syna_dev_enter_normal_sensing+0x6c>
		00000000000083ac:  R_AARCH64_CALL26	msleep
    83b0: 2a1f03e0     	mov	w0, wzr
    83b4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    83b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    83bc: d50323bf     	autiasp
    83c0: d65f03c0     	ret
    83c4: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x150>
		00000000000083c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d6
    83c8: 91000108     	add	x8, x8, #0x0
		00000000000083c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d6
    83cc: 14000003     	b	0x83d8 <syna_dev_enter_normal_sensing+0x98>
    83d0: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x150>
		00000000000083d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e76
    83d4: 91000108     	add	x8, x8, #0x0
		00000000000083d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e76
    83d8: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x150>
		00000000000083d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f3e
    83dc: 91000021     	add	x1, x1, #0x0
		00000000000083dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f3e
    83e0: aa0003f3     	mov	x19, x0
    83e4: aa0803e0     	mov	x0, x8
    83e8: 94000000     	bl	0x83e8 <syna_dev_enter_normal_sensing+0xa8>
		00000000000083e8:  R_AARCH64_CALL26	_printk
    83ec: aa1303e0     	mov	x0, x19
    83f0: 17fffff1     	b	0x83b4 <syna_dev_enter_normal_sensing+0x74>
