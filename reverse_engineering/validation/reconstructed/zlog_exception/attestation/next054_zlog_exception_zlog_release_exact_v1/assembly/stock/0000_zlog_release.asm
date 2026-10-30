
/input/zlog_exception.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008c0 <zlog_release>:
     8c0: d503233f     	paciasp
     8c4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     8c8: 910003fd     	mov	x29, sp
     8cc: 14000010     	b	0x90c <zlog_release+0x4c>
     8d0: 12800008     	mov	w8, #-0x1               // =-1
     8d4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000008d4:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x90
     8d8: 91000129     	add	x9, x9, #0x0
		00000000000008d8:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x90
     8dc: b828013f     	stadd	w8, [x9]
     8e0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008e0:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x90
     8e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x201
     8e8: 91000000     	add	x0, x0, #0x0
		00000000000008e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x201
     8ec: b9400102     	ldr	w2, [x8]
		00000000000008ec:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_info+0x90
     8f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x318
     8f4: 91000021     	add	x1, x1, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x318
     8f8: 94000000     	bl	0x8f8 <zlog_release+0x38>
		00000000000008f8:  R_AARCH64_CALL26	_printk
     8fc: 2a1f03e0     	mov	w0, wzr
     900: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     904: d50323bf     	autiasp
     908: d65f03c0     	ret
     90c: 52800028     	mov	w8, #0x1                // =1
     910: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000910:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x90
     914: 91000129     	add	x9, x9, #0x0
		0000000000000914:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x90
     918: f9800131     	prfm	pstl1strm, [x9]
     91c: 885f7d2a     	ldxr	w10, [x9]
     920: 4b08014a     	sub	w10, w10, w8
     924: 880b7d2a     	stxr	w11, w10, [x9]
     928: 35ffffab     	cbnz	w11, 0x91c <zlog_release+0x5c>
     92c: 17ffffed     	b	0x8e0 <zlog_release+0x20>
