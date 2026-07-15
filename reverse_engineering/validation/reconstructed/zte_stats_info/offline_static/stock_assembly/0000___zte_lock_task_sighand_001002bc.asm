
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <__zte_lock_task_sighand>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: a90157f6     	stp	x22, x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: aa0103f3     	mov	x19, x1
      1c: aa0003f4     	mov	x20, x0
      20: 94000000     	bl	0x20 <__zte_lock_task_sighand+0x1c>
		0000000000000020:  R_AARCH64_CALL26	__rcu_read_lock
      24: f944b295     	ldr	x21, [x20, #0x960]
      28: b40002d5     	cbz	x21, 0x80 <__zte_lock_task_sighand+0x7c>
      2c: aa1503e0     	mov	x0, x21
      30: 94000000     	bl	0x30 <__zte_lock_task_sighand+0x2c>
		0000000000000030:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
      34: f9000260     	str	x0, [x19]
      38: f944b288     	ldr	x8, [x20, #0x960]
      3c: eb0802bf     	cmp	x21, x8
      40: 54000100     	b.eq	0x60 <__zte_lock_task_sighand+0x5c>
      44: aa0003e1     	mov	x1, x0
      48: aa1503e0     	mov	x0, x21
      4c: 94000000     	bl	0x4c <__zte_lock_task_sighand+0x48>
		000000000000004c:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
      50: f944b295     	ldr	x21, [x20, #0x960]
      54: aa1f03f6     	mov	x22, xzr
      58: b5fffeb5     	cbnz	x21, 0x2c <__zte_lock_task_sighand+0x28>
      5c: 14000002     	b	0x64 <__zte_lock_task_sighand+0x60>
      60: aa1503f6     	mov	x22, x21
      64: 94000000     	bl	0x64 <__zte_lock_task_sighand+0x60>
		0000000000000064:  R_AARCH64_CALL26	__rcu_read_unlock
      68: aa1603e0     	mov	x0, x22
      6c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      70: a94157f6     	ldp	x22, x21, [sp, #0x10]
      74: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      78: d50323bf     	autiasp
      7c: d65f03c0     	ret
      80: aa1f03f6     	mov	x22, xzr
      84: 17fffff8     	b	0x64 <__zte_lock_task_sighand+0x60>
