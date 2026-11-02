
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000440 <gf_hw_reset>:
     440: d503233f     	paciasp
     444: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     448: a9014ff4     	stp	x20, x19, [sp, #0x10]
     44c: 910003fd     	mov	x29, sp
     450: b50000a0     	cbnz	x0, 0x464 <gf_hw_reset+0x24>
     454: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b0
     458: 91000000     	add	x0, x0, #0x0
		0000000000000458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b0
     45c: 12800253     	mov	w19, #-0x13             // =-19
     460: 14000020     	b	0x4e0 <gf_hw_reset+0xa0>
     464: b9404008     	ldr	w8, [x0, #0x40]
     468: 37f80368     	tbnz	w8, #0x1f, 0x4d4 <gf_hw_reset+0x94>
     46c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000046c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad3
     470: 91000108     	add	x8, x8, #0x0
		0000000000000470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad3
     474: aa0003f4     	mov	x20, x0
     478: aa0803e0     	mov	x0, x8
     47c: 2a0103f3     	mov	w19, w1
     480: 94000000     	bl	0x480 <gf_hw_reset+0x40>
		0000000000000480:  R_AARCH64_CALL26	_printk
     484: b9404280     	ldr	w0, [x20, #0x40]
     488: 94000000     	bl	0x488 <gf_hw_reset+0x48>
		0000000000000488:  R_AARCH64_CALL26	gpio_to_desc
     48c: 2a1f03e1     	mov	w1, wzr
     490: 94000000     	bl	0x490 <gf_hw_reset+0x50>
		0000000000000490:  R_AARCH64_CALL26	gpiod_set_raw_value
     494: 5284e200     	mov	w0, #0x2710             // =10000
     498: 5284ee81     	mov	w1, #0x2774             // =10100
     49c: 52800042     	mov	w2, #0x2                // =2
     4a0: 94000000     	bl	0x4a0 <gf_hw_reset+0x60>
		00000000000004a0:  R_AARCH64_CALL26	usleep_range_state
     4a4: b9404280     	ldr	w0, [x20, #0x40]
     4a8: 94000000     	bl	0x4a8 <gf_hw_reset+0x68>
		00000000000004a8:  R_AARCH64_CALL26	gpio_to_desc
     4ac: 52800021     	mov	w1, #0x1                // =1
     4b0: 94000000     	bl	0x4b0 <gf_hw_reset+0x70>
		00000000000004b0:  R_AARCH64_CALL26	gpiod_set_raw_value
     4b4: 34000193     	cbz	w19, 0x4e4 <gf_hw_reset+0xa4>
     4b8: 2a1303f3     	mov	w19, w19
     4bc: 52912b00     	mov	w0, #0x8958             // =35160
     4c0: d1000673     	sub	x19, x19, #0x1
     4c4: 72a00820     	movk	w0, #0x41, lsl #16
     4c8: 94000000     	bl	0x4c8 <gf_hw_reset+0x88>
		00000000000004c8:  R_AARCH64_CALL26	__const_udelay
     4cc: b5ffff93     	cbnz	x19, 0x4bc <gf_hw_reset+0x7c>
     4d0: 14000005     	b	0x4e4 <gf_hw_reset+0xa4>
     4d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdf7
     4d8: 91000000     	add	x0, x0, #0x0
		00000000000004d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdf7
     4dc: 2a1f03f3     	mov	w19, wzr
     4e0: 94000000     	bl	0x4e0 <gf_hw_reset+0xa0>
		00000000000004e0:  R_AARCH64_CALL26	_printk
     4e4: 2a1303e0     	mov	w0, w19
     4e8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     4ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     4f0: d50323bf     	autiasp
     4f4: d65f03c0     	ret
