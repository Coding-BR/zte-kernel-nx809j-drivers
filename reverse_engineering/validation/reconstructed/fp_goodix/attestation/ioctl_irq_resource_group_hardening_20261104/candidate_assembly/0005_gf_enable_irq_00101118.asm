
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <gf_enable_irq>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x4c
      18: b9400108     	ldr	w8, [x8]
		0000000000000018:  R_AARCH64_LDST32_ABS_LO12_NC	gf+0x4c
      1c: 35000168     	cbnz	w8, 0x48 <gf_enable_irq+0x44>
      20: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x48
      24: 91000273     	add	x19, x19, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x48
      28: b9400260     	ldr	w0, [x19]
      2c: 94000000     	bl	0x2c <gf_enable_irq+0x28>
		000000000000002c:  R_AARCH64_CALL26	enable_irq
      30: 52800028     	mov	w8, #0x1                // =1
      34: b9000668     	str	w8, [x19, #0x4]
      38: f9400bf3     	ldr	x19, [sp, #0x10]
      3c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      40: d50323bf     	autiasp
      44: d65f03c0     	ret
      48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf5a
      4c: 91000000     	add	x0, x0, #0x0
		000000000000004c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf5a
      50: 94000000     	bl	0x50 <gf_enable_irq+0x4c>
		0000000000000050:  R_AARCH64_CALL26	_printk
      54: 17fffff9     	b	0x38 <gf_enable_irq+0x34>
