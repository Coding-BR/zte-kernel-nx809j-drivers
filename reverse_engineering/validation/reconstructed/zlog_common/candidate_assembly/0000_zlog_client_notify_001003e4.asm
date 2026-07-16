
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zlog_client_notify>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: a9014ff4     	stp	x20, x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c4
      18: 39400108     	ldrb	w8, [x8]
		0000000000000018:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x24c4
      1c: 36000348     	tbz	w8, #0x0, 0x84 <zlog_client_notify+0x80>
      20: aa0003f3     	mov	x19, x0
      24: b4000360     	cbz	x0, 0x90 <zlog_client_notify+0x8c>
      28: 9102c260     	add	x0, x19, #0xb0
      2c: 2a0103f4     	mov	w20, w1
      30: 94000000     	bl	0x30 <zlog_client_notify+0x2c>
		0000000000000030:  R_AARCH64_CALL26	mutex_lock
      34: b900e674     	str	w20, [x19, #0xe4]
      38: 1400001d     	b	0xac <zlog_client_notify+0xa8>
      3c: 9103a268     	add	x8, x19, #0xe8
      40: 52800109     	mov	w9, #0x8                // =8
      44: f829311f     	stset	x9, [x8]
      48: 9102c260     	add	x0, x19, #0xb0
      4c: 94000000     	bl	0x4c <zlog_client_notify+0x48>
		000000000000004c:  R_AARCH64_CALL26	mutex_unlock
      50: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000050:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2400
      54: 91000273     	add	x19, x19, #0x0
		0000000000000054:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x2400
      58: 91002260     	add	x0, x19, #0x8
      5c: 94000000     	bl	0x5c <zlog_client_notify+0x58>
		000000000000005c:  R_AARCH64_CALL26	cancel_delayed_work
      60: f9400261     	ldr	x1, [x19]
      64: 91002262     	add	x2, x19, #0x8
      68: 52800400     	mov	w0, #0x20               // =32
      6c: 52800643     	mov	w3, #0x32               // =50
      70: 94000000     	bl	0x70 <zlog_client_notify+0x6c>
		0000000000000070:  R_AARCH64_CALL26	queue_delayed_work_on
      74: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      78: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      7c: d50323bf     	autiasp
      80: d65f03c0     	ret
      84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b
      88: 91000000     	add	x0, x0, #0x0
		0000000000000088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b
      8c: 14000003     	b	0x98 <zlog_client_notify+0x94>
      90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d7
      94: 91000000     	add	x0, x0, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d7
      98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
      9c: 91000021     	add	x1, x1, #0x0
		000000000000009c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
      a0: aa0103e2     	mov	x2, x1
      a4: 94000000     	bl	0xa4 <zlog_client_notify+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	_printk
      a8: 17fffff3     	b	0x74 <zlog_client_notify+0x70>
      ac: 9103a268     	add	x8, x19, #0xe8
      b0: f9800111     	prfm	pstl1strm, [x8]
      b4: c85f7d09     	ldxr	x9, [x8]
      b8: b27d0129     	orr	x9, x9, #0x8
      bc: c80a7d09     	stxr	w10, x9, [x8]
      c0: 35ffffaa     	cbnz	w10, 0xb4 <zlog_client_notify+0xb0>
      c4: 17ffffe1     	b	0x48 <zlog_client_notify+0x44>
