
/input/zte_imem_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <request_board_id>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76
      18: 91000042     	add	x2, x2, #0x0
		0000000000000018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76
      1c: aa1f03e0     	mov	x0, xzr
      20: aa1f03e1     	mov	x1, xzr
      24: 94000000     	bl	0x24 <request_board_id+0x20>
		0000000000000024:  R_AARCH64_CALL26	of_find_compatible_node
      28: b5000080     	cbnz	x0, 0x38 <request_board_id+0x34>
      2c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142
      30: 91000000     	add	x0, x0, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142
      34: 14000008     	b	0x54 <request_board_id+0x50>
      38: 2a1f03e1     	mov	w1, wzr
      3c: 94000000     	bl	0x3c <request_board_id+0x38>
		000000000000003c:  R_AARCH64_CALL26	of_iomap
      40: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      44: f9000100     	str	x0, [x8]
		0000000000000044:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
      48: b5000100     	cbnz	x0, 0x68 <request_board_id+0x64>
      4c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
      50: 91000000     	add	x0, x0, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
      54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76
      58: 91000021     	add	x1, x1, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76
      5c: 94000000     	bl	0x5c <request_board_id+0x58>
		000000000000005c:  R_AARCH64_CALL26	_printk
      60: 12800000     	mov	w0, #-0x1               // =-1
      64: 14000009     	b	0x88 <request_board_id+0x84>
      68: b9400013     	ldr	w19, [x0]
      6c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
      70: 91000000     	add	x0, x0, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
      74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76
      78: 91000021     	add	x1, x1, #0x0
		0000000000000078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76
      7c: 2a1303e2     	mov	w2, w19
      80: 94000000     	bl	0x80 <request_board_id+0x7c>
		0000000000000080:  R_AARCH64_CALL26	_printk
      84: 2a1303e0     	mov	w0, w19
      88: f9400bf3     	ldr	x19, [sp, #0x10]
      8c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      90: d50323bf     	autiasp
      94: d65f03c0     	ret
