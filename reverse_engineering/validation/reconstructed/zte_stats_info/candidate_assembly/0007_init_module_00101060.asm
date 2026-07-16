
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000004 <init_module>:
       4: d503233f     	paciasp
       8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
       c: f9000bf9     	str	x25, [sp, #0x10]
      10: a9025ff8     	stp	x24, x23, [sp, #0x20]
      14: a90357f6     	stp	x22, x21, [sp, #0x30]
      18: a9044ff4     	stp	x20, x19, [sp, #0x40]
      1c: 910003fd     	mov	x29, sp
      20: aa1f03e8     	mov	x8, xzr
      24: 90000015     	adrp	x21, 0x0 <.init.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	__per_cpu_offset
      28: 910002b5     	add	x21, x21, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	__per_cpu_offset
      2c: 90000016     	adrp	x22, 0x0 <.init.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.data..percpu+0x28
      30: 910002d6     	add	x22, x22, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.data..percpu+0x28
      34: 90000017     	adrp	x23, 0x0 <.init.text>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	__cpu_possible_mask
      38: 90000013     	adrp	x19, 0x0 <.init.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71
      3c: 91000273     	add	x19, x19, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71
      40: 92800018     	mov	x24, #-0x1              // =-1
      44: 90000014     	adrp	x20, 0x0 <.init.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      48: 91000294     	add	x20, x20, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.bss
      4c: b94002e9     	ldr	w9, [x23]
		000000000000004c:  R_AARCH64_LDST32_ABS_LO12_NC	__cpu_possible_mask
      50: 9ac82308     	lsl	x8, x24, x8
      54: 6a090108     	ands	w8, w8, w9
      58: 54000200     	b.eq	0x98 <init_module+0x94>
      5c: dac00108     	rbit	x8, x8
      60: aa1303e1     	mov	x1, x19
      64: aa1403e2     	mov	x2, x20
      68: dac01119     	clz	x25, x8
      6c: f8797aa8     	ldr	x8, [x21, x25, lsl #3]
      70: 8b160108     	add	x8, x8, x22
      74: 91010109     	add	x9, x8, #0x40
      78: f9002109     	str	x9, [x8, #0x40]
      7c: f9002509     	str	x9, [x8, #0x48]
      80: f8797aa8     	ldr	x8, [x21, x25, lsl #3]
      84: 8b160100     	add	x0, x8, x22
      88: 94000000     	bl	0x88 <init_module+0x84>
		0000000000000088:  R_AARCH64_CALL26	__init_rwsem
      8c: f1007f3f     	cmp	x25, #0x1f
      90: 91000728     	add	x8, x25, #0x1
      94: 54fffdc3     	b.lo	0x4c <init_module+0x48>
      98: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.data..ro_after_init
      9c: 91000000     	add	x0, x0, #0x0
		000000000000009c:  R_AARCH64_ADD_ABS_LO12_NC	.data..ro_after_init
      a0: 94000000     	bl	0xa0 <init_module+0x9c>
		00000000000000a0:  R_AARCH64_CALL26	genl_register_family
      a4: 2a0003f3     	mov	w19, w0
      a8: 34000120     	cbz	w0, 0xcc <init_module+0xc8>
      ac: 2a1303e0     	mov	w0, w19
      b0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
      b4: f9400bf9     	ldr	x25, [sp, #0x10]
      b8: a94357f6     	ldp	x22, x21, [sp, #0x30]
      bc: a9425ff8     	ldp	x24, x23, [sp, #0x20]
      c0: a8c57bfd     	ldp	x29, x30, [sp], #0x50
      c4: d50323bf     	autiasp
      c8: d65f03c0     	ret
      cc: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf
      d0: 91000000     	add	x0, x0, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf
      d4: 52800021     	mov	w1, #0x1                // =1
      d8: 94000000     	bl	0xd8 <init_module+0xd4>
		00000000000000d8:  R_AARCH64_CALL26	_printk
      dc: 17fffff4     	b	0xac <init_module+0xa8>
