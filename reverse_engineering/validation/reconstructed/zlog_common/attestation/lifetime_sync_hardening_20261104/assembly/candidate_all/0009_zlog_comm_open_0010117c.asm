
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b10 <zlog_comm_open>:
     b10: d503233f     	paciasp
     b14: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b18: 910003fd     	mov	x29, sp
     b1c: 14000010     	b	0xb5c <zlog_comm_open+0x4c>
     b20: 52800028     	mov	w8, #0x1                // =1
     b24: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000b24:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     b28: 91000129     	add	x9, x9, #0x0
		0000000000000b28:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     b2c: b828013f     	stadd	w8, [x9]
     b30: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b30:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     b34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e5
     b38: 91000000     	add	x0, x0, #0x0
		0000000000000b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e5
     b3c: b9400102     	ldr	w2, [x8]
		0000000000000b3c:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_server+0x24c0
     b40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e8
     b44: 91000021     	add	x1, x1, #0x0
		0000000000000b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e8
     b48: 94000000     	bl	0xb48 <zlog_comm_open+0x38>
		0000000000000b48:  R_AARCH64_CALL26	_printk
     b4c: 2a1f03e0     	mov	w0, wzr
     b50: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b54: d50323bf     	autiasp
     b58: d65f03c0     	ret
     b5c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b5c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     b60: 91000108     	add	x8, x8, #0x0
		0000000000000b60:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     b64: f9800111     	prfm	pstl1strm, [x8]
     b68: 885f7d09     	ldxr	w9, [x8]
     b6c: 11000529     	add	w9, w9, #0x1
     b70: 880a7d09     	stxr	w10, w9, [x8]
     b74: 35ffffaa     	cbnz	w10, 0xb68 <zlog_comm_open+0x58>
     b78: 17ffffee     	b	0xb30 <zlog_comm_open+0x20>
