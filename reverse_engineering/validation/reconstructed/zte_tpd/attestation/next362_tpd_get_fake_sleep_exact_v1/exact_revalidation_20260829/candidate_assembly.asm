
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000260e0 <tpd_get_fake_sleep>:
   260e0: f946dc09     	ldr	x9, [x0, #0xdb8]
   260e4: aa0003e8     	mov	x8, x0
   260e8: 2a1f03e0     	mov	w0, wzr
   260ec: b945e929     	ldr	w9, [x9, #0x5e8]
   260f0: b9048109     	str	w9, [x8, #0x480]
   260f4: d65f03c0     	ret
