
/out/syna_charger_notify_call.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <syna_charger_notify_call>:
       0: b4000061     	cbz	x1, 0xc <syna_charger_notify_call+0xc>
       4: 2a1f03e0     	mov	w0, wzr
       8: d65f03c0     	ret
       c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      10: f9400048     	ldr	x8, [x2]
      14: a9014ff4     	stp	x20, x19, [sp, #0x10]
      18: aa0003f3     	mov	x19, x0
      1c: 90000001     	adrp	x1, 0x0 <syna_charger_notify_call>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      20: 91000021     	add	x1, x1, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      24: 910003fd     	mov	x29, sp
      28: f9400114     	ldr	x20, [x8]
      2c: aa1403e0     	mov	x0, x20
      30: 94000000     	bl	0x30 <syna_charger_notify_call+0x30>
		0000000000000030:  R_AARCH64_CALL26	strcmp
      34: 34000120     	cbz	w0, 0x58 <syna_charger_notify_call+0x58>
      38: 39400288     	ldrb	w8, [x20]
      3c: 7101851f     	cmp	w8, #0x61
      40: 54000161     	b.ne	0x6c <syna_charger_notify_call+0x6c>
      44: 39400688     	ldrb	w8, [x20, #0x1]
      48: 71018d1f     	cmp	w8, #0x63
      4c: 54000101     	b.ne	0x6c <syna_charger_notify_call+0x6c>
      50: 39400a88     	ldrb	w8, [x20, #0x2]
      54: 350000c8     	cbnz	w8, 0x6c <syna_charger_notify_call+0x6c>
      58: f85f8261     	ldur	x1, [x19, #-0x8]
      5c: d101c262     	sub	x2, x19, #0x70
      60: 52800400     	mov	w0, #0x20               // =32
      64: 52800fa3     	mov	w3, #0x7d               // =125
      68: 94000000     	bl	0x68 <syna_charger_notify_call+0x68>
		0000000000000068:  R_AARCH64_CALL26	queue_delayed_work_on
      6c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      70: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      74: 2a1f03e0     	mov	w0, wzr
      78: d65f03c0     	ret
