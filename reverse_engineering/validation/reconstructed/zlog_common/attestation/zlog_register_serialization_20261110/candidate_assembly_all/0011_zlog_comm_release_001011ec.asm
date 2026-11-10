
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bd0 <zlog_comm_release>:
     bd0: d503233f     	paciasp
     bd4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     bd8: 910003fd     	mov	x29, sp
     bdc: 14000010     	b	0xc1c <zlog_comm_release+0x4c>
     be0: 12800008     	mov	w8, #-0x1               // =-1
     be4: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000be4:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     be8: 91000129     	add	x9, x9, #0x0
		0000000000000be8:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     bec: b828013f     	stadd	w8, [x9]
     bf0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bf0:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     bf4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5d
     bf8: 91000000     	add	x0, x0, #0x0
		0000000000000bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5d
     bfc: b9400102     	ldr	w2, [x8]
		0000000000000bfc:  R_AARCH64_LDST32_ABS_LO12_NC	g_zlog_server+0x24c0
     c00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d4
     c04: 91000021     	add	x1, x1, #0x0
		0000000000000c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d4
     c08: 94000000     	bl	0xc08 <zlog_comm_release+0x38>
		0000000000000c08:  R_AARCH64_CALL26	_printk
     c0c: 2a1f03e0     	mov	w0, wzr
     c10: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     c14: d50323bf     	autiasp
     c18: d65f03c0     	ret
     c1c: 52800028     	mov	w8, #0x1                // =1
     c20: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c20:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c0
     c24: 91000129     	add	x9, x9, #0x0
		0000000000000c24:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x24c0
     c28: f9800131     	prfm	pstl1strm, [x9]
     c2c: 885f7d2a     	ldxr	w10, [x9]
     c30: 4b08014a     	sub	w10, w10, w8
     c34: 880b7d2a     	stxr	w11, w10, [x9]
     c38: 35ffffab     	cbnz	w11, 0xc2c <zlog_comm_release+0x5c>
     c3c: 17ffffed     	b	0xbf0 <zlog_comm_release+0x20>
