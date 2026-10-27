
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001ac <aw_check_data_version>:
     1ac: d503233f     	paciasp
     1b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     1b4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     1b8: 910003fd     	mov	x29, sp
     1bc: 2a0103f3     	mov	w19, w1
     1c0: aa0003f4     	mov	x20, x0
     1c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199c
     1c8: 91000000     	add	x0, x0, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199c
     1cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd00
     1d0: 91000021     	add	x1, x1, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd00
     1d4: 528010c2     	mov	w2, #0x86               // =134
     1d8: 94000000     	bl	0x1d8 <aw_check_data_version+0x2c>
		00000000000001d8:  R_AARCH64_CALL26	_printk
     1dc: 7101927f     	cmp	w19, #0x64
     1e0: 54000262     	b.hs	0x22c <aw_check_data_version+0x80>
     1e4: 52800a88     	mov	w8, #0x54               // =84
     1e8: 9ba85268     	umaddl	x8, w19, w8, x20
     1ec: b9402508     	ldr	w8, [x8, #0x24]
     1f0: 7100051f     	cmp	w8, #0x1
     1f4: 540000c1     	b.ne	0x20c <aw_check_data_version+0x60>
     1f8: 2a1f03e0     	mov	w0, wzr
     1fc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     200: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     204: d50323bf     	autiasp
     208: d65f03c0     	ret
     20c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f80
     210: 91000000     	add	x0, x0, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f80
     214: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd00
     218: 91000021     	add	x1, x1, #0x0
		0000000000000218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd00
     21c: 52801182     	mov	w2, #0x8c               // =140
     220: 94000000     	bl	0x220 <aw_check_data_version+0x74>
		0000000000000220:  R_AARCH64_CALL26	_printk
     224: 12800060     	mov	w0, #-0x4               // =-4
     228: 17fffff5     	b	0x1fc <aw_check_data_version+0x50>
     22c: d42aa240     	brk	#0x5512
