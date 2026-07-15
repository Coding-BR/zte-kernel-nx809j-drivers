
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d9c <zlog_comm_open>:
     d9c: d503233f     	paciasp
     da0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     da4: 910003fd     	mov	x29, sp
     da8: 14000010     	b	0xde8 <zlog_comm_open+0x4c>
     dac: 52800028     	mov	w8, #0x1                // =1
     db0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000db0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     db4: 91000129     	add	x9, x9, #0x0
		0000000000000db4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c0
     db8: b828013f     	stadd	w8, [x9]
     dbc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     dc0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x454
     dc4: 91000000     	add	x0, x0, #0x0
		0000000000000dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x454
     dc8: b9400102     	ldr	w2, [x8]
		0000000000000dc8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x24c0
     dcc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65b
     dd0: 91000021     	add	x1, x1, #0x0
		0000000000000dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65b
     dd4: 94000000     	bl	0xdd4 <zlog_comm_open+0x38>
		0000000000000dd4:  R_AARCH64_CALL26	_printk
     dd8: 2a1f03e0     	mov	w0, wzr
     ddc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     de0: d50323bf     	autiasp
     de4: d65f03c0     	ret
     de8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000de8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     dec: 91000108     	add	x8, x8, #0x0
		0000000000000dec:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c0
     df0: f9800111     	prfm	pstl1strm, [x8]
     df4: 885f7d09     	ldxr	w9, [x8]
     df8: 11000529     	add	w9, w9, #0x1
     dfc: 880a7d09     	stxr	w10, w9, [x8]
     e00: 35ffffaa     	cbnz	w10, 0xdf4 <zlog_comm_open+0x58>
     e04: 17ffffee     	b	0xdbc <zlog_comm_open+0x20>
