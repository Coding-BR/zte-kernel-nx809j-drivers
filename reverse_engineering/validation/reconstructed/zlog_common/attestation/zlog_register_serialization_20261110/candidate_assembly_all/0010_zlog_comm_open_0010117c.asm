
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b60 <zlog_comm_open>:
     b60: d503233f     	paciasp
     b64: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b68: 910003fd     	mov	x29, sp
     b6c: 14000010     	b	0xbac <zlog_comm_open+0x4c>
     b70: 52800028     	mov	w8, #0x1                // =1
     b74: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000b74:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     b78: 91000129     	add	x9, x9, #0x0
		0000000000000b78:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     b7c: b828013f     	stadd	w8, [x9]
     b80: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b80:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     b84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94b
     b88: 91000000     	add	x0, x0, #0x0
		0000000000000b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94b
     b8c: b9400102     	ldr	w2, [x8]
		0000000000000b8c:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_server+0x24c0
     b90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4e
     b94: 91000021     	add	x1, x1, #0x0
		0000000000000b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4e
     b98: 94000000     	bl	0xb98 <zlog_comm_open+0x38>
		0000000000000b98:  R_AARCH64_CALL26	_printk
     b9c: 2a1f03e0     	mov	w0, wzr
     ba0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     ba4: d50323bf     	autiasp
     ba8: d65f03c0     	ret
     bac: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bac:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     bb0: 91000108     	add	x8, x8, #0x0
		0000000000000bb0:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     bb4: f9800111     	prfm	pstl1strm, [x8]
     bb8: 885f7d09     	ldxr	w9, [x8]
     bbc: 11000529     	add	w9, w9, #0x1
     bc0: 880a7d09     	stxr	w10, w9, [x8]
     bc4: 35ffffaa     	cbnz	w10, 0xbb8 <zlog_comm_open+0x58>
     bc8: 17ffffee     	b	0xb80 <zlog_comm_open+0x20>
