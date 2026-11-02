
/out/tpd_set_fake_sleep.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_fake_sleep>:
       0: f946dc08     	ldr	x8, [x0, #0xdb8]
       4: b9457d09     	ldr	w9, [x8, #0x57c]
       8: b905ed01     	str	w1, [x8, #0x5ec]
       c: 7100053f     	cmp	w9, #0x1
      10: 540000c1     	b.ne	0x28 <tpd_set_fake_sleep+0x28>
      14: b905e901     	str	w1, [x8, #0x5e8]
      18: 90000008     	adrp	x8, 0x0 <tpd_set_fake_sleep>
		0000000000000018:  R_AARCH64_ADR_PREL_PG_HI21	is_fake_sleep_mode
      1c: 2a1f03e0     	mov	w0, wzr
      20: b9000101     	str	w1, [x8]
		0000000000000020:  R_AARCH64_LDST32_ABS_LO12_NC	is_fake_sleep_mode
      24: d65f03c0     	ret
      28: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      2c: 90000000     	adrp	x0, 0x0 <tpd_set_fake_sleep>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
      30: 91000000     	add	x0, x0, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
      34: 90000001     	adrp	x1, 0x0 <tpd_set_fake_sleep>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      38: 91000021     	add	x1, x1, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      3c: 910003fd     	mov	x29, sp
      40: 94000000     	bl	0x40 <tpd_set_fake_sleep+0x40>
		0000000000000040:  R_AARCH64_CALL26	printk
      44: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      48: 2a1f03e0     	mov	w0, wzr
      4c: d65f03c0     	ret
