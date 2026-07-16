
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d90 <zlog_comm_open>:
     d90: d503233f     	paciasp
     d94: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     d98: 910003fd     	mov	x29, sp
     d9c: 14000010     	b	0xddc <zlog_comm_open+0x4c>
     da0: 52800028     	mov	w8, #0x1                // =1
     da4: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000da4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     da8: 91000129     	add	x9, x9, #0x0
		0000000000000da8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c0
     dac: b828013f     	stadd	w8, [x9]
     db0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000db0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     db4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43e
     db8: 91000000     	add	x0, x0, #0x0
		0000000000000db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43e
     dbc: b9400102     	ldr	w2, [x8]
		0000000000000dbc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x24c0
     dc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x645
     dc4: 91000021     	add	x1, x1, #0x0
		0000000000000dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x645
     dc8: 94000000     	bl	0xdc8 <zlog_comm_open+0x38>
		0000000000000dc8:  R_AARCH64_CALL26	_printk
     dcc: 2a1f03e0     	mov	w0, wzr
     dd0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     dd4: d50323bf     	autiasp
     dd8: d65f03c0     	ret
     ddc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ddc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     de0: 91000108     	add	x8, x8, #0x0
		0000000000000de0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c0
     de4: f9800111     	prfm	pstl1strm, [x8]
     de8: 885f7d09     	ldxr	w9, [x8]
     dec: 11000529     	add	w9, w9, #0x1
     df0: 880a7d09     	stxr	w10, w9, [x8]
     df4: 35ffffaa     	cbnz	w10, 0xde8 <zlog_comm_open+0x58>
     df8: 17ffffee     	b	0xdb0 <zlog_comm_open+0x20>
