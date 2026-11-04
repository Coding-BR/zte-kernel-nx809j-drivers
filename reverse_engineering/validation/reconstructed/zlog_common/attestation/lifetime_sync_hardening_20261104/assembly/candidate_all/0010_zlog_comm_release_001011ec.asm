
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b80 <zlog_comm_release>:
     b80: d503233f     	paciasp
     b84: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     b88: 910003fd     	mov	x29, sp
     b8c: 14000010     	b	0xbcc <zlog_comm_release+0x4c>
     b90: 12800008     	mov	w8, #-0x1               // =-1
     b94: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000b94:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     b98: 91000129     	add	x9, x9, #0x0
		0000000000000b98:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     b9c: b828013f     	stadd	w8, [x9]
     ba0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ba0:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     ba4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f7
     ba8: 91000000     	add	x0, x0, #0x0
		0000000000000ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f7
     bac: b9400102     	ldr	w2, [x8]
		0000000000000bac:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_server+0x24c0
     bb0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d4
     bb4: 91000021     	add	x1, x1, #0x0
		0000000000000bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d4
     bb8: 94000000     	bl	0xbb8 <zlog_comm_release+0x38>
		0000000000000bb8:  R_AARCH64_CALL26	_printk
     bbc: 2a1f03e0     	mov	w0, wzr
     bc0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     bc4: d50323bf     	autiasp
     bc8: d65f03c0     	ret
     bcc: 52800028     	mov	w8, #0x1                // =1
     bd0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000bd0:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     bd4: 91000129     	add	x9, x9, #0x0
		0000000000000bd4:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     bd8: f9800131     	prfm	pstl1strm, [x9]
     bdc: 885f7d2a     	ldxr	w10, [x9]
     be0: 4b08014a     	sub	w10, w10, w8
     be4: 880b7d2a     	stxr	w11, w10, [x9]
     be8: 35ffffab     	cbnz	w11, 0xbdc <zlog_comm_release+0x5c>
     bec: 17ffffed     	b	0xba0 <zlog_comm_release+0x20>
