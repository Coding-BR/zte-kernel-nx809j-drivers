
/input/zte_imem_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000039c <board_id_read_proc>:
     39c: d503233f     	paciasp
     3a0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3a4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     3a8: 910003fd     	mov	x29, sp
     3ac: aa0003f3     	mov	x19, x0
     3b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76
     3b4: 91000042     	add	x2, x2, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76
     3b8: aa1f03e0     	mov	x0, xzr
     3bc: aa1f03e1     	mov	x1, xzr
     3c0: 94000000     	bl	0x3c0 <board_id_read_proc+0x24>
		00000000000003c0:  R_AARCH64_CALL26	of_find_compatible_node
     3c4: b5000080     	cbnz	x0, 0x3d4 <board_id_read_proc+0x38>
     3c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142
     3cc: 91000000     	add	x0, x0, #0x0
		00000000000003cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142
     3d0: 14000008     	b	0x3f0 <board_id_read_proc+0x54>
     3d4: 2a1f03e1     	mov	w1, wzr
     3d8: 94000000     	bl	0x3d8 <board_id_read_proc+0x3c>
		00000000000003d8:  R_AARCH64_CALL26	of_iomap
     3dc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     3e0: f9000100     	str	x0, [x8]
		00000000000003e0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     3e4: b5000100     	cbnz	x0, 0x404 <board_id_read_proc+0x68>
     3e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
     3ec: 91000000     	add	x0, x0, #0x0
		00000000000003ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
     3f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76
     3f4: 91000021     	add	x1, x1, #0x0
		00000000000003f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76
     3f8: 94000000     	bl	0x3f8 <board_id_read_proc+0x5c>
		00000000000003f8:  R_AARCH64_CALL26	_printk
     3fc: 12800002     	mov	w2, #-0x1               // =-1
     400: 14000009     	b	0x424 <board_id_read_proc+0x88>
     404: b9400014     	ldr	w20, [x0]
     408: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
     40c: 91000000     	add	x0, x0, #0x0
		000000000000040c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
     410: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76
     414: 91000021     	add	x1, x1, #0x0
		0000000000000414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76
     418: 2a1403e2     	mov	w2, w20
     41c: 94000000     	bl	0x41c <board_id_read_proc+0x80>
		000000000000041c:  R_AARCH64_CALL26	_printk
     420: 2a1403e2     	mov	w2, w20
     424: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54
     428: 91000021     	add	x1, x1, #0x0
		0000000000000428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54
     42c: aa1303e0     	mov	x0, x19
     430: 94000000     	bl	0x430 <board_id_read_proc+0x94>
		0000000000000430:  R_AARCH64_CALL26	seq_printf
     434: 2a1f03e0     	mov	w0, wzr
     438: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     43c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     440: d50323bf     	autiasp
     444: d65f03c0     	ret
