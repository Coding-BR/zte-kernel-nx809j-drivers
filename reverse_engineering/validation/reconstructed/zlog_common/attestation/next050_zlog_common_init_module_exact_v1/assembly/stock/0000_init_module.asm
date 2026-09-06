
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: a90157f6     	stp	x22, x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000013     	adrp	x19, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      1c: 91000273     	add	x19, x19, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
      20: 2a1f03e1     	mov	w1, wzr
      24: aa1303e0     	mov	x0, x19
      28: 52849902     	mov	w2, #0x24c8             // =9416
      2c: 94000000     	bl	0x2c <init_module+0x28>
		000000000000002c:  R_AARCH64_CALL26	memset
      30: 9102c273     	add	x19, x19, #0xb0
      34: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b8
      38: 91000294     	add	x20, x20, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b8
      3c: 52800416     	mov	w22, #0x20              // =32
      40: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c8
      44: 910002b5     	add	x21, x21, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x24c8
      48: aa1303e0     	mov	x0, x19
      4c: aa1403e1     	mov	x1, x20
      50: aa1503e2     	mov	x2, x21
      54: 94000000     	bl	0x54 <init_module+0x50>
		0000000000000054:  R_AARCH64_CALL26	__mutex_init
      58: f10006d6     	subs	x22, x22, #0x1
      5c: 91048273     	add	x19, x19, #0x120
      60: 54ffff41     	b.ne	0x48 <init_module+0x44>
      64: 94000029     	bl	0x108 <zlog_comm_create_ctrl_dev>
      68: 52800141     	mov	w1, #0xa                // =10
      6c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e
      70: 91000000     	add	x0, x0, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e
      74: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9
      78: 91000063     	add	x3, x3, #0x0
		0000000000000078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9
      7c: 72a000c1     	movk	w1, #0x6, lsl #16
      80: 52800022     	mov	w2, #0x1                // =1
      84: 52800033     	mov	w19, #0x1               // =1
      88: 94000000     	bl	0x88 <init_module+0x84>
		0000000000000088:  R_AARCH64_CALL26	alloc_workqueue
      8c: 90000014     	adrp	x20, 0x0 <.init.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2400
      90: 91000294     	add	x20, x20, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x2400
      94: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
      98: a9002280     	stp	x0, x8, [x20]
      9c: 91004288     	add	x8, x20, #0x10
      a0: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
      a4: 91000021     	add	x1, x1, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
      a8: f9000a88     	str	x8, [x20, #0x10]
      ac: 9100a280     	add	x0, x20, #0x28
      b0: f9000e88     	str	x8, [x20, #0x18]
      b4: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x7a0
      b8: 91000108     	add	x8, x8, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x7a0
      bc: 52a00402     	mov	w2, #0x200000           // =2097152
      c0: aa1f03e3     	mov	x3, xzr
      c4: aa1f03e4     	mov	x4, xzr
      c8: f9001288     	str	x8, [x20, #0x20]
      cc: 94000000     	bl	0xcc <init_module+0xc8>
		00000000000000cc:  R_AARCH64_CALL26	init_timer_key
      d0: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x759
      d4: 91000021     	add	x1, x1, #0x0
		00000000000000d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x759
      d8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x428
      dc: 91000000     	add	x0, x0, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x428
      e0: aa0103e2     	mov	x2, x1
      e4: b900c29f     	str	wzr, [x20, #0xc0]
      e8: 39031293     	strb	w19, [x20, #0xc4]
      ec: 94000000     	bl	0xec <init_module+0xe8>
		00000000000000ec:  R_AARCH64_CALL26	_printk
      f0: 2a1f03e0     	mov	w0, wzr
      f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      f8: a94157f6     	ldp	x22, x21, [sp, #0x10]
      fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     100: d50323bf     	autiasp
     104: d65f03c0     	ret
