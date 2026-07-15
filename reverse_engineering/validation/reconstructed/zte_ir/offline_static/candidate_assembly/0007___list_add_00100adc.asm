
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006c4 <__list_add>:
     6c4: f9400448     	ldr	x8, [x2, #0x8]
     6c8: eb01011f     	cmp	x8, x1
     6cc: 54000181     	b.ne	0x6fc <__list_add+0x38>
     6d0: eb02001f     	cmp	x0, x2
     6d4: 54000140     	b.eq	0x6fc <__list_add+0x38>
     6d8: eb01001f     	cmp	x0, x1
     6dc: 54000100     	b.eq	0x6fc <__list_add+0x38>
     6e0: f9400028     	ldr	x8, [x1]
     6e4: eb02011f     	cmp	x8, x2
     6e8: 540000a1     	b.ne	0x6fc <__list_add+0x38>
     6ec: f9000440     	str	x0, [x2, #0x8]
     6f0: a9000402     	stp	x2, x1, [x0]
     6f4: f9000020     	str	x0, [x1]
     6f8: d65f03c0     	ret
     6fc: d503233f     	paciasp
     700: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     704: 910003fd     	mov	x29, sp
     708: 94000000     	bl	0x708 <__list_add+0x44>
		0000000000000708:  R_AARCH64_CALL26	__list_add_valid_or_report
     70c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     710: d50323bf     	autiasp
     714: d65f03c0     	ret
