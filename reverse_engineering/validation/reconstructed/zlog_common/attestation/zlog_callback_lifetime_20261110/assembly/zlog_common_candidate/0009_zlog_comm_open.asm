
/input/zlog_common_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b78 <zlog_comm_open>:
     b78: d503233f     	paciasp
     b7c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b80: 910003fd     	mov	x29, sp
     b84: 14000010     	b	0xbc4 <zlog_comm_open+0x4c>
     b88: 52800028     	mov	w8, #0x1                // =1
     b8c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     b90: 91000129     	add	x9, x9, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     b94: b828013f     	stadd	w8, [x9]
     b98: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b98:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     b9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x981
     ba0: 91000000     	add	x0, x0, #0x0
		0000000000000ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x981
     ba4: b9400102     	ldr	w2, [x8]
		0000000000000ba4:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_server+0x24c0
     ba8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaba
     bac: 91000021     	add	x1, x1, #0x0
		0000000000000bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaba
     bb0: 94000000     	bl	0xbb0 <zlog_comm_open+0x38>
		0000000000000bb0:  R_AARCH64_CALL26	_printk
     bb4: 2a1f03e0     	mov	w0, wzr
     bb8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     bbc: d50323bf     	autiasp
     bc0: d65f03c0     	ret
     bc4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bc4:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     bc8: 91000108     	add	x8, x8, #0x0
		0000000000000bc8:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     bcc: f9800111     	prfm	pstl1strm, [x8]
     bd0: 885f7d09     	ldxr	w9, [x8]
     bd4: 11000529     	add	w9, w9, #0x1
     bd8: 880a7d09     	stxr	w10, w9, [x8]
     bdc: 35ffffaa     	cbnz	w10, 0xbd0 <zlog_comm_open+0x58>
     be0: 17ffffee     	b	0xb98 <zlog_comm_open+0x20>
