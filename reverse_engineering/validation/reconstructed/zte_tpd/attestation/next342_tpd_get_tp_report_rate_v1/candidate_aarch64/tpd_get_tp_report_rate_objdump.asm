
/out/tpd_get_tp_report_rate.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_get_tp_report_rate>:
       0: f946dc09     	ldr	x9, [x0, #0xdb8]
       4: aa0003e8     	mov	x8, x0
       8: 2a1f03e0     	mov	w0, wzr
       c: b945f929     	ldr	w9, [x9, #0x5f8]
      10: b9046509     	str	w9, [x8, #0x464]
      14: d65f03c0     	ret
