
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fe8 <get_sysnumber_byname>:
     fe8: d503233f     	paciasp
     fec: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     ff0: f9000bf5     	str	x21, [sp, #0x10]
     ff4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     ff8: 910003fd     	mov	x29, sp
     ffc: aa0003f3     	mov	x19, x0
    1000: aa1f03f4     	mov	x20, xzr
    1004: 90000015     	adrp	x21, 0x1000 <get_sysnumber_byname+0x18>
		0000000000001004:  R_AARCH64_ADR_PREL_PG_HI21	zte_gpios
    1008: 910002b5     	add	x21, x21, #0x0
		0000000000001008:  R_AARCH64_ADD_ABS_LO12_NC	zte_gpios
    100c: 14000004     	b	0x101c <get_sysnumber_byname+0x34>
    1010: 91004294     	add	x20, x20, #0x10
    1014: f104029f     	cmp	x20, #0x100
    1018: 54000120     	b.eq	0x103c <get_sysnumber_byname+0x54>
    101c: 8b1402a8     	add	x8, x21, x20
    1020: f9400500     	ldr	x0, [x8, #0x8]
    1024: b4ffff60     	cbz	x0, 0x1010 <get_sysnumber_byname+0x28>
    1028: aa1303e1     	mov	x1, x19
    102c: 94000000     	bl	0x102c <get_sysnumber_byname+0x44>
		000000000000102c:  R_AARCH64_CALL26	strcmp
    1030: 35ffff00     	cbnz	w0, 0x1010 <get_sysnumber_byname+0x28>
    1034: b8746aa0     	ldr	w0, [x21, x20]
    1038: 14000002     	b	0x1040 <get_sysnumber_byname+0x58>
    103c: 2a1f03e0     	mov	w0, wzr
    1040: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1044: f9400bf5     	ldr	x21, [sp, #0x10]
    1048: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    104c: d50323bf     	autiasp
    1050: d65f03c0     	ret
