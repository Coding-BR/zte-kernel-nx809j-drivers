
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000066c <spi_message_add_tail>:
     66c: aa0103e2     	mov	x2, x1
     670: aa0003e8     	mov	x8, x0
     674: 9101c000     	add	x0, x0, #0x70
     678: f9400421     	ldr	x1, [x1, #0x8]
     67c: eb02001f     	cmp	x0, x2
     680: 54000140     	b.eq	0x6a8 <spi_message_add_tail+0x3c>
     684: eb00003f     	cmp	x1, x0
     688: 54000100     	b.eq	0x6a8 <spi_message_add_tail+0x3c>
     68c: f9400029     	ldr	x9, [x1]
     690: eb02013f     	cmp	x9, x2
     694: 540000a1     	b.ne	0x6a8 <spi_message_add_tail+0x3c>
     698: f9000440     	str	x0, [x2, #0x8]
     69c: a9070502     	stp	x2, x1, [x8, #0x70]
     6a0: f9000020     	str	x0, [x1]
     6a4: d65f03c0     	ret
     6a8: d503233f     	paciasp
     6ac: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     6b0: 910003fd     	mov	x29, sp
     6b4: 94000000     	bl	0x6b4 <spi_message_add_tail+0x48>
		00000000000006b4:  R_AARCH64_CALL26	__list_add_valid_or_report
     6b8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     6bc: d50323bf     	autiasp
     6c0: d65f03c0     	ret
