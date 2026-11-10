
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: a90157f6     	stp	x22, x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 90000013     	adrp	x19, 0x0 <.init.text>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server
      1c: 91000273     	add	x19, x19, #0x0
		000000000000001c:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server
      20: 2a1f03e1     	mov	w1, wzr
      24: aa1303e0     	mov	x0, x19
      28: 52849902     	mov	w2, #0x24c8             // =9416
      2c: 94000000     	bl	0x2c <init_module+0x28>
		000000000000002c:  R_AARCH64_CALL26	memset
      30: 9102c273     	add	x19, x19, #0xb0
      34: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f0
      38: 91000294     	add	x20, x20, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f0
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
      64: 52800141     	mov	w1, #0xa                // =10
      68: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c5
      6c: 91000000     	add	x0, x0, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c5
      70: 90000003     	adrp	x3, 0x0 <.init.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x868
      74: 91000063     	add	x3, x3, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x868
      78: 72a000c1     	movk	w1, #0x6, lsl #16
      7c: 52800022     	mov	w2, #0x1                // =1
      80: 94000000     	bl	0x80 <init_module+0x7c>
		0000000000000080:  R_AARCH64_CALL26	alloc_workqueue
      84: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000084:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x2400
      88: f9000280     	str	x0, [x20]
		0000000000000088:  R_AARCH64_LDST64_ABS_LO12_NC	g_zlog_server+0x2400
      8c: b5000100     	cbnz	x0, 0xac <init_module+0xa8>
      90: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9da
      94: 91000000     	add	x0, x0, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9da
      98: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf6
      9c: 91000021     	add	x1, x1, #0x0
		000000000000009c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf6
      a0: 94000000     	bl	0xa0 <init_module+0x9c>
		00000000000000a0:  R_AARCH64_CALL26	_printk
      a4: 12800173     	mov	w19, #-0xc              // =-12
      a8: 14000019     	b	0x10c <init_module+0x108>
      ac: 90000013     	adrp	x19, 0x0 <.init.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x2408
      b0: 91000273     	add	x19, x19, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server+0x2408
      b4: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
      b8: 91002269     	add	x9, x19, #0x8
      bc: f9000268     	str	x8, [x19]
      c0: 90000008     	adrp	x8, 0x0 <.init.text>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_handle_work
      c4: 91000108     	add	x8, x8, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_handle_work
      c8: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
      cc: 91000021     	add	x1, x1, #0x0
		00000000000000cc:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
      d0: 91008260     	add	x0, x19, #0x20
      d4: 52a00402     	mov	w2, #0x200000           // =2097152
      d8: aa1f03e3     	mov	x3, xzr
      dc: aa1f03e4     	mov	x4, xzr
      e0: f9000669     	str	x9, [x19, #0x8]
      e4: f9000a69     	str	x9, [x19, #0x10]
      e8: f9000e68     	str	x8, [x19, #0x18]
      ec: 94000000     	bl	0xec <init_module+0xe8>
		00000000000000ec:  R_AARCH64_CALL26	init_timer_key
      f0: b900ba7f     	str	wzr, [x19, #0xb8]
      f4: 94000016     	bl	0x14c <zlog_comm_create_ctrl_dev>
      f8: 2a0003f3     	mov	w19, w0
      fc: 34000140     	cbz	w0, 0x124 <init_module+0x120>
     100: f9400280     	ldr	x0, [x20]
		0000000000000100:  R_AARCH64_LDST64_ABS_LO12_NC	g_zlog_server+0x2400
     104: 94000000     	bl	0x104 <init_module+0x100>
		0000000000000104:  R_AARCH64_CALL26	destroy_workqueue
     108: f900029f     	str	xzr, [x20]
		0000000000000108:  R_AARCH64_LDST64_ABS_LO12_NC	g_zlog_server+0x2400
     10c: 2a1303e0     	mov	w0, w19
     110: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     114: a94157f6     	ldp	x22, x21, [sp, #0x10]
     118: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     11c: d50323bf     	autiasp
     120: d65f03c0     	ret
     124: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf6
     128: 91000021     	add	x1, x1, #0x0
		0000000000000128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf6
     12c: 90000008     	adrp	x8, 0x0 <.init.text>
		000000000000012c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     130: 52800029     	mov	w9, #0x1                // =1
     134: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x955
     138: 91000000     	add	x0, x0, #0x0
		0000000000000138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x955
     13c: aa0103e2     	mov	x2, x1
     140: 39000109     	strb	w9, [x8]
		0000000000000140:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     144: 94000000     	bl	0x144 <init_module+0x140>
		0000000000000144:  R_AARCH64_CALL26	_printk
     148: 17fffff1     	b	0x10c <init_module+0x108>
