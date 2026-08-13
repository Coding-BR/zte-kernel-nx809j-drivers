
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fc34 <tpd_get_fake_sleep>:
   1fc34: f946dc09     	ldr	x9, [x0, #0xdb8]
   1fc38: aa0003e8     	mov	x8, x0
   1fc3c: 2a1f03e0     	mov	w0, wzr
   1fc40: b945e929     	ldr	w9, [x9, #0x5e8]
   1fc44: b9048109     	str	w9, [x8, #0x480]
   1fc48: d65f03c0     	ret
