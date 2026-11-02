
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002613c <tpd_get_fake_sleep>:
   2613c: f946dc09     	ldr	x9, [x0, #0xdb8]
   26140: aa0003e8     	mov	x8, x0
   26144: 2a1f03e0     	mov	w0, wzr
   26148: b945e929     	ldr	w9, [x9, #0x5e8]
   2614c: b9048109     	str	w9, [x8, #0x480]
   26150: d65f03c0     	ret
