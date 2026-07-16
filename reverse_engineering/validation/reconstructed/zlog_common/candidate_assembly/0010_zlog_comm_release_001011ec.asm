
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e00 <zlog_comm_release>:
     e00: d503233f     	paciasp
     e04: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     e08: 910003fd     	mov	x29, sp
     e0c: 14000010     	b	0xe4c <zlog_comm_release+0x4c>
     e10: 12800008     	mov	w8, #-0x1               // =-1
     e14: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000e14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     e18: 91000129     	add	x9, x9, #0x0
		0000000000000e18:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c0
     e1c: b828013f     	stadd	w8, [x9]
     e20: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     e24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x654
     e28: 91000000     	add	x0, x0, #0x0
		0000000000000e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x654
     e2c: b9400102     	ldr	w2, [x8]
		0000000000000e2c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x24c0
     e30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7
     e34: 91000021     	add	x1, x1, #0x0
		0000000000000e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7
     e38: 94000000     	bl	0xe38 <zlog_comm_release+0x38>
		0000000000000e38:  R_AARCH64_CALL26	_printk
     e3c: 2a1f03e0     	mov	w0, wzr
     e40: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     e44: d50323bf     	autiasp
     e48: d65f03c0     	ret
     e4c: 52800028     	mov	w8, #0x1                // =1
     e50: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000e50:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c0
     e54: 91000129     	add	x9, x9, #0x0
		0000000000000e54:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c0
     e58: f9800131     	prfm	pstl1strm, [x9]
     e5c: 885f7d2a     	ldxr	w10, [x9]
     e60: 4b08014a     	sub	w10, w10, w8
     e64: 880b7d2a     	stxr	w11, w10, [x9]
     e68: 35ffffab     	cbnz	w11, 0xe5c <zlog_comm_release+0x5c>
     e6c: 17ffffed     	b	0xe20 <zlog_comm_release+0x20>
