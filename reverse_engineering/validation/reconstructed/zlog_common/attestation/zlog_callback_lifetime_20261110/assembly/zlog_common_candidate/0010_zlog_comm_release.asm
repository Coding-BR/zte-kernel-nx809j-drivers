
/input/zlog_common_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000be8 <zlog_comm_release>:
     be8: d503233f     	paciasp
     bec: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     bf0: 910003fd     	mov	x29, sp
     bf4: 14000010     	b	0xc34 <zlog_comm_release+0x4c>
     bf8: 12800008     	mov	w8, #-0x1               // =-1
     bfc: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000bfc:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     c00: 91000129     	add	x9, x9, #0x0
		0000000000000c00:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     c04: b828013f     	stadd	w8, [x9]
     c08: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c08:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     c0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac9
     c10: 91000000     	add	x0, x0, #0x0
		0000000000000c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac9
     c14: b9400102     	ldr	w2, [x8]
		0000000000000c14:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_server+0x24c0
     c18: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d4
     c1c: 91000021     	add	x1, x1, #0x0
		0000000000000c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d4
     c20: 94000000     	bl	0xc20 <zlog_comm_release+0x38>
		0000000000000c20:  R_AARCH64_CALL26	_printk
     c24: 2a1f03e0     	mov	w0, wzr
     c28: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     c2c: d50323bf     	autiasp
     c30: d65f03c0     	ret
     c34: 52800028     	mov	w8, #0x1                // =1
     c38: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c38:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     c3c: 91000129     	add	x9, x9, #0x0
		0000000000000c3c:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     c40: f9800131     	prfm	pstl1strm, [x9]
     c44: 885f7d2a     	ldxr	w10, [x9]
     c48: 4b08014a     	sub	w10, w10, w8
     c4c: 880b7d2a     	stxr	w11, w10, [x9]
     c50: 35ffffab     	cbnz	w11, 0xc44 <zlog_comm_release+0x5c>
     c54: 17ffffed     	b	0xc08 <zlog_comm_release+0x20>
