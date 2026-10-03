
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026070 <tpd_get_tp_report_rate>:
   26070: f946dc09     	ldr	x9, [x0, #0xdb8]
   26074: aa0003e8     	mov	x8, x0
   26078: 2a1f03e0     	mov	w0, wzr
   2607c: b945f929     	ldr	w9, [x9, #0x5f8]
   26080: b9046509     	str	w9, [x8, #0x464]
   26084: d65f03c0     	ret
