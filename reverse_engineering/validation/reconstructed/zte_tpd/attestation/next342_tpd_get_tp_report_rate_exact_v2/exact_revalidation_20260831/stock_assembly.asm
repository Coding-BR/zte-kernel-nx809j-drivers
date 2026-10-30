
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025828 <tpd_get_tp_report_rate>:
   25828: f946dc09     	ldr	x9, [x0, #0xdb8]
   2582c: aa0003e8     	mov	x8, x0
   25830: 2a1f03e0     	mov	w0, wzr
   25834: b945f929     	ldr	w9, [x9, #0x5f8]
   25838: b9046509     	str	w9, [x8, #0x464]
   2583c: d65f03c0     	ret
