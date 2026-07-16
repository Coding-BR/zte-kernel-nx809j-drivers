
/input/zte_imem_info.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2
      14: 91000000     	add	x0, x0, #0x0
		0000000000000014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2
      18: aa1f03e1     	mov	x1, xzr
      1c: 94000000     	bl	0x1c <init_module+0x18>
		000000000000001c:  R_AARCH64_CALL26	proc_mkdir
      20: b4000620     	cbz	x0, 0xe4 <init_module+0xe0>
      24: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e
      28: 91000000     	add	x0, x0, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e
      2c: 90000003     	adrp	x3, 0x0 <.init.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x38
      30: 91000063     	add	x3, x3, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x38
      34: 52802481     	mov	w1, #0x124              // =292
      38: aa1f03e2     	mov	x2, xzr
      3c: 94000000     	bl	0x3c <init_module+0x38>
		000000000000003c:  R_AARCH64_CALL26	proc_create
      40: b40004a0     	cbz	x0, 0xd4 <init_module+0xd0>
      44: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x116
      48: 91000000     	add	x0, x0, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x116
      4c: 90000003     	adrp	x3, 0x0 <.init.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x98
      50: 91000063     	add	x3, x3, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x98
      54: 52802481     	mov	w1, #0x124              // =292
      58: aa1f03e2     	mov	x2, xzr
      5c: 94000000     	bl	0x5c <init_module+0x58>
		000000000000005c:  R_AARCH64_CALL26	proc_create
      60: b4000320     	cbz	x0, 0xc4 <init_module+0xc0>
      64: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5
      68: 91000000     	add	x0, x0, #0x0
		0000000000000068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5
      6c: 90000003     	adrp	x3, 0x0 <.init.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x38
      70: 91000063     	add	x3, x3, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x38
      74: 52802481     	mov	w1, #0x124              // =292
      78: aa1f03e2     	mov	x2, xzr
      7c: 94000000     	bl	0x7c <init_module+0x78>
		000000000000007c:  R_AARCH64_CALL26	proc_create
      80: b40001a0     	cbz	x0, 0xb4 <init_module+0xb0>
      84: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b
      88: 91000000     	add	x0, x0, #0x0
		0000000000000088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b
      8c: 90000003     	adrp	x3, 0x0 <.init.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x98
      90: 91000063     	add	x3, x3, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x98
      94: 52802481     	mov	w1, #0x124              // =292
      98: aa1f03e2     	mov	x2, xzr
      9c: 94000000     	bl	0x9c <init_module+0x98>
		000000000000009c:  R_AARCH64_CALL26	proc_create
      a0: b5000220     	cbnz	x0, 0xe4 <init_module+0xe0>
      a4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5
      a8: 91000000     	add	x0, x0, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5
      ac: aa1f03e1     	mov	x1, xzr
      b0: 94000000     	bl	0xb0 <init_module+0xac>
		00000000000000b0:  R_AARCH64_CALL26	remove_proc_entry
      b4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x116
      b8: 91000000     	add	x0, x0, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x116
      bc: aa1f03e1     	mov	x1, xzr
      c0: 94000000     	bl	0xc0 <init_module+0xbc>
		00000000000000c0:  R_AARCH64_CALL26	remove_proc_entry
      c4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e
      c8: 91000000     	add	x0, x0, #0x0
		00000000000000c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e
      cc: aa1f03e1     	mov	x1, xzr
      d0: 94000000     	bl	0xd0 <init_module+0xcc>
		00000000000000d0:  R_AARCH64_CALL26	remove_proc_entry
      d4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2
      d8: 91000000     	add	x0, x0, #0x0
		00000000000000d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2
      dc: aa1f03e1     	mov	x1, xzr
      e0: 94000000     	bl	0xe0 <init_module+0xdc>
		00000000000000e0:  R_AARCH64_CALL26	remove_proc_entry
      e4: 2a1f03e0     	mov	w0, wzr
      e8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      ec: d50323bf     	autiasp
      f0: d65f03c0     	ret
