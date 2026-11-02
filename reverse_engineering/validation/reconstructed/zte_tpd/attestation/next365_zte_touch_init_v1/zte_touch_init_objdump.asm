
/work/output/aarch64/zte_touch_init.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <printk>:
       0: d10303ff     	sub	sp, sp, #0xc0
       4: 2a1f03e0     	mov	w0, wzr
       8: a9088be1     	stp	x1, x2, [sp, #0x88]
       c: a90993e3     	stp	x3, x4, [sp, #0x98]
      10: a90a9be5     	stp	x5, x6, [sp, #0xa8]
      14: f9005fe7     	str	x7, [sp, #0xb8]
      18: ad0007e0     	stp	q0, q1, [sp]
      1c: ad010fe2     	stp	q2, q3, [sp, #0x20]
      20: ad0217e4     	stp	q4, q5, [sp, #0x40]
      24: ad031fe6     	stp	q6, q7, [sp, #0x60]
      28: 910303ff     	add	sp, sp, #0xc0
      2c: d65f03c0     	ret

0000000000000030 <_platform_driver_register>:
      30: 2a1f03e0     	mov	w0, wzr
      34: d65f03c0     	ret

0000000000000038 <zte_touch_init>:
      38: 2a1f03e0     	mov	w0, wzr
      3c: d65f03c0     	ret
