
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ad8 <get_sysnumber_byname>:
     ad8: d503233f     	paciasp
     adc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     ae0: f9000bf5     	str	x21, [sp, #0x10]
     ae4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     ae8: 910003fd     	mov	x29, sp
     aec: aa0003f3     	mov	x19, x0
     af0: aa1f03f4     	mov	x20, xzr
     af4: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000af4:  R_AARCH64_ADR_PREL_PG_HI21	zte_gpios
     af8: 910002b5     	add	x21, x21, #0x0
		0000000000000af8:  R_AARCH64_ADD_ABS_LO12_NC	zte_gpios
     afc: 14000004     	b	0xb0c <get_sysnumber_byname+0x34>
     b00: 91004294     	add	x20, x20, #0x10
     b04: f104029f     	cmp	x20, #0x100
     b08: 54000120     	b.eq	0xb2c <get_sysnumber_byname+0x54>
     b0c: 8b1402a8     	add	x8, x21, x20
     b10: f9400500     	ldr	x0, [x8, #0x8]
     b14: b4ffff60     	cbz	x0, 0xb00 <get_sysnumber_byname+0x28>
     b18: aa1303e1     	mov	x1, x19
     b1c: 94000000     	bl	0xb1c <get_sysnumber_byname+0x44>
		0000000000000b1c:  R_AARCH64_CALL26	strcmp
     b20: 35ffff00     	cbnz	w0, 0xb00 <get_sysnumber_byname+0x28>
     b24: b8746aa0     	ldr	w0, [x21, x20]
     b28: 14000002     	b	0xb30 <get_sysnumber_byname+0x58>
     b2c: 2a1f03e0     	mov	w0, wzr
     b30: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     b34: f9400bf5     	ldr	x21, [sp, #0x10]
     b38: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     b3c: d50323bf     	autiasp
     b40: d65f03c0     	ret
