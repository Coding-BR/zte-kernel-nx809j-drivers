
/input/zlog_test_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .exit.text:

0000000000000004 <cleanup_module>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 90000000     	adrp	x0, 0x0 <.exit.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_node
      20: 91000000     	add	x0, x0, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	zlog_enable_test_node
      24: aa1f03e1     	mov	x1, xzr
      28: 94000000     	bl	0x28 <cleanup_module+0x24>
		0000000000000028:  R_AARCH64_CALL26	zte_misc_unregister_callback
      2c: 340000e0     	cbz	w0, 0x48 <cleanup_module+0x44>
      30: 2a0003e2     	mov	w2, w0
      34: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x464
      38: 91000000     	add	x0, x0, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x464
      3c: 90000001     	adrp	x1, 0x0 <.exit.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ca
      40: 91000021     	add	x1, x1, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ca
      44: 94000000     	bl	0x44 <cleanup_module+0x40>
		0000000000000044:  R_AARCH64_CALL26	_printk
      48: 90000013     	adrp	x19, 0x0 <.exit.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
      4c: 91000273     	add	x19, x19, #0x0
		000000000000004c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
      50: aa1303e0     	mov	x0, x19
      54: 94000000     	bl	0x54 <cleanup_module+0x50>
		0000000000000054:  R_AARCH64_CALL26	mutex_lock
      58: 90000014     	adrp	x20, 0x0 <.exit.text>
		0000000000000058:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      5c: 91000294     	add	x20, x20, #0x0
		000000000000005c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
      60: aa1403e0     	mov	x0, x20
      64: 94000000     	bl	0x64 <cleanup_module+0x60>
		0000000000000064:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
      68: aa0003e1     	mov	x1, x0
      6c: 90000008     	adrp	x8, 0x0 <.exit.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_enable_test_flag
      70: aa1403e0     	mov	x0, x20
      74: b900011f     	str	wzr, [x8]
		0000000000000074:  R_AARCH64_LDST32_ABS_LO12_NC	zlog_enable_test_flag
      78: 94000000     	bl	0x78 <cleanup_module+0x74>
		0000000000000078:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
      7c: 90000000     	adrp	x0, 0x0 <.exit.text>
		000000000000007c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_work
      80: 91000000     	add	x0, x0, #0x0
		0000000000000080:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test1_work
      84: 94000000     	bl	0x84 <cleanup_module+0x80>
		0000000000000084:  R_AARCH64_CALL26	disable_delayed_work_sync
      88: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_work
      8c: 91000000     	add	x0, x0, #0x0
		000000000000008c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test2_work
      90: 94000000     	bl	0x90 <cleanup_module+0x8c>
		0000000000000090:  R_AARCH64_CALL26	disable_delayed_work_sync
      94: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_work
      98: 91000000     	add	x0, x0, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test3_work
      9c: 94000000     	bl	0x9c <cleanup_module+0x98>
		000000000000009c:  R_AARCH64_CALL26	disable_delayed_work_sync
      a0: 90000000     	adrp	x0, 0x0 <.exit.text>
		00000000000000a0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_work
      a4: 91000000     	add	x0, x0, #0x0
		00000000000000a4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test4_work
      a8: 94000000     	bl	0xa8 <cleanup_module+0xa4>
		00000000000000a8:  R_AARCH64_CALL26	disable_delayed_work_sync
      ac: 90000000     	adrp	x0, 0x0 <.exit.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_work
      b0: 91000000     	add	x0, x0, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_test5_work
      b4: 94000000     	bl	0xb4 <cleanup_module+0xb0>
		00000000000000b4:  R_AARCH64_CALL26	disable_delayed_work_sync
      b8: 94000000     	bl	0xb8 <cleanup_module+0xb4>
		00000000000000b8:  R_AARCH64_CALL26	.text+0x400
      bc: 90000014     	adrp	x20, 0x0 <.exit.text>
		00000000000000bc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test5_workqueue
      c0: f9400280     	ldr	x0, [x20]
		00000000000000c0:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test5_workqueue
      c4: 94000000     	bl	0xc4 <cleanup_module+0xc0>
		00000000000000c4:  R_AARCH64_CALL26	destroy_workqueue
      c8: 90000015     	adrp	x21, 0x0 <.exit.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test4_workqueue
      cc: f94002a0     	ldr	x0, [x21]
		00000000000000cc:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test4_workqueue
      d0: 94000000     	bl	0xd0 <cleanup_module+0xcc>
		00000000000000d0:  R_AARCH64_CALL26	destroy_workqueue
      d4: 90000016     	adrp	x22, 0x0 <.exit.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test3_workqueue
      d8: f94002c0     	ldr	x0, [x22]
		00000000000000d8:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test3_workqueue
      dc: 94000000     	bl	0xdc <cleanup_module+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	destroy_workqueue
      e0: 90000017     	adrp	x23, 0x0 <.exit.text>
		00000000000000e0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test2_workqueue
      e4: f94002e0     	ldr	x0, [x23]
		00000000000000e4:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test2_workqueue
      e8: 94000000     	bl	0xe8 <cleanup_module+0xe4>
		00000000000000e8:  R_AARCH64_CALL26	destroy_workqueue
      ec: 90000018     	adrp	x24, 0x0 <.exit.text>
		00000000000000ec:  R_AARCH64_ADR_PREL_PG_HI21	zlog_test1_workqueue
      f0: f9400300     	ldr	x0, [x24]
		00000000000000f0:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test1_workqueue
      f4: 94000000     	bl	0xf4 <cleanup_module+0xf0>
		00000000000000f4:  R_AARCH64_CALL26	destroy_workqueue
      f8: aa1303e0     	mov	x0, x19
      fc: f900029f     	str	xzr, [x20]
		00000000000000fc:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test5_workqueue
     100: f90002bf     	str	xzr, [x21]
		0000000000000100:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test4_workqueue
     104: f90002df     	str	xzr, [x22]
		0000000000000104:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test3_workqueue
     108: f90002ff     	str	xzr, [x23]
		0000000000000108:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test2_workqueue
     10c: f900031f     	str	xzr, [x24]
		000000000000010c:  R_AARCH64_LDST64_ABS_LO12_NC	zlog_test1_workqueue
     110: 94000000     	bl	0x110 <cleanup_module+0x10c>
		0000000000000110:  R_AARCH64_CALL26	mutex_unlock
     114: 90000000     	adrp	x0, 0x0 <.exit.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x342
     118: 91000000     	add	x0, x0, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x342
     11c: 90000001     	adrp	x1, 0x0 <.exit.text>
		000000000000011c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ca
     120: 91000021     	add	x1, x1, #0x0
		0000000000000120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ca
     124: 94000000     	bl	0x124 <cleanup_module+0x120>
		0000000000000124:  R_AARCH64_CALL26	_printk
     128: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     12c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     130: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     134: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     138: d50323bf     	autiasp
     13c: d65f03c0     	ret
