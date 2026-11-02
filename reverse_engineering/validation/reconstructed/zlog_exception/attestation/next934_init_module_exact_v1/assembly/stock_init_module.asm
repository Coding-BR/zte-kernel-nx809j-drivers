
/input/zlog_exception.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: a9014ff4     	stp	x20, x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 94000022     	bl	0x9c <zlog_create_log_dev>
      18: 2a0003f3     	mov	w19, w0
      1c: 350003a0     	cbnz	w0, 0x90 <init_module+0x8c>
      20: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info
      24: 91000294     	add	x20, x20, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info
      28: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f
      2c: 91000021     	add	x1, x1, #0x0
		000000000000002c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f
      30: 90000002     	adrp	x2, 0x0 <.init.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
      34: 91000042     	add	x2, x2, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb8
      38: 91026280     	add	x0, x20, #0x98
      3c: 94000000     	bl	0x3c <init_module+0x38>
		000000000000003c:  R_AARCH64_CALL26	__init_waitqueue_head
      40: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184
      44: 91000021     	add	x1, x1, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184
      48: 90000002     	adrp	x2, 0x0 <.init.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb9
      4c: 91000042     	add	x2, x2, #0x0
		000000000000004c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb9
      50: aa1403e0     	mov	x0, x20
      54: 94000000     	bl	0x54 <init_module+0x50>
		0000000000000054:  R_AARCH64_CALL26	__mutex_init
      58: 9100c288     	add	x8, x20, #0x30
      5c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e7
      60: 91000000     	add	x0, x0, #0x0
		0000000000000060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e7
      64: f9001a88     	str	x8, [x20, #0x30]
      68: f9001e88     	str	x8, [x20, #0x38]
      6c: b900929f     	str	wzr, [x20, #0x90]
      70: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x289
      74: 91000021     	add	x1, x1, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x289
      78: 94000000     	bl	0x78 <init_module+0x74>
		0000000000000078:  R_AARCH64_CALL26	_printk
      7c: 2a1303e0     	mov	w0, w19
      80: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      84: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      88: d50323bf     	autiasp
      8c: d65f03c0     	ret
      90: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d
      94: 91000000     	add	x0, x0, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d
      98: 17fffff6     	b	0x70 <init_module+0x6c>
