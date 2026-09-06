
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e0c <zlog_comm_release>:
     e0c: d503233f     	paciasp
     e10: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     e14: 910003fd     	mov	x29, sp
     e18: 14000010     	b	0xe58 <zlog_comm_release+0x4c>
     e1c: 12800008     	mov	w8, #-0x1               // =-1
     e20: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000e20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     e24: 91000129     	add	x9, x9, #0x0
		0000000000000e24:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c0
     e28: b828013f     	stadd	w8, [x9]
     e2c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e2c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     e30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66a
     e34: 91000000     	add	x0, x0, #0x0
		0000000000000e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66a
     e38: b9400102     	ldr	w2, [x8]
		0000000000000e38:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x24c0
     e3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7
     e40: 91000021     	add	x1, x1, #0x0
		0000000000000e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7
     e44: 94000000     	bl	0xe44 <zlog_comm_release+0x38>
		0000000000000e44:  R_AARCH64_CALL26	_printk
     e48: 2a1f03e0     	mov	w0, wzr
     e4c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     e50: d50323bf     	autiasp
     e54: d65f03c0     	ret
     e58: 52800028     	mov	w8, #0x1                // =1
     e5c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000e5c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     e60: 91000129     	add	x9, x9, #0x0
		0000000000000e60:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c0
     e64: f9800131     	prfm	pstl1strm, [x9]
     e68: 885f7d2a     	ldxr	w10, [x9]
     e6c: 4b08014a     	sub	w10, w10, w8
     e70: 880b7d2a     	stxr	w11, w10, [x9]
     e74: 35ffffab     	cbnz	w11, 0xe68 <zlog_comm_release+0x5c>
     e78: 17ffffed     	b	0xe2c <zlog_comm_release+0x20>
