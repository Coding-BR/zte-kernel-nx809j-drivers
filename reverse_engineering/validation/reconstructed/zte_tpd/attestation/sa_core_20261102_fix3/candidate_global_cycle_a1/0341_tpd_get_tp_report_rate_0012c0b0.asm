
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000260cc <tpd_get_tp_report_rate>:
   260cc: f946dc09     	ldr	x9, [x0, #0xdb8]
   260d0: aa0003e8     	mov	x8, x0
   260d4: 2a1f03e0     	mov	w0, wzr
   260d8: b945f929     	ldr	w9, [x9, #0x5f8]
   260dc: b9046509     	str	w9, [x8, #0x464]
   260e0: d65f03c0     	ret
