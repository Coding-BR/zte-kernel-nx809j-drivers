
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <get_sysnumber_byname>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: aa0003f3     	mov	x19, x0
      1c: aa1f03f4     	mov	x20, xzr
      20: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	zte_gpios
      24: 910002b5     	add	x21, x21, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	zte_gpios
      28: 14000004     	b	0x38 <get_sysnumber_byname+0x34>
      2c: 91004294     	add	x20, x20, #0x10
      30: f104029f     	cmp	x20, #0x100
      34: 54000120     	b.eq	0x58 <get_sysnumber_byname+0x54>
      38: 8b1402a8     	add	x8, x21, x20
      3c: f9400500     	ldr	x0, [x8, #0x8]
      40: b4ffff60     	cbz	x0, 0x2c <get_sysnumber_byname+0x28>
      44: aa1303e1     	mov	x1, x19
      48: 94000000     	bl	0x48 <get_sysnumber_byname+0x44>
		0000000000000048:  R_AARCH64_CALL26	strcmp
      4c: 35ffff00     	cbnz	w0, 0x2c <get_sysnumber_byname+0x28>
      50: b8746aa0     	ldr	w0, [x21, x20]
      54: 14000002     	b	0x5c <get_sysnumber_byname+0x58>
      58: 2a1f03e0     	mov	w0, wzr
      5c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      60: f9400bf5     	ldr	x21, [sp, #0x10]
      64: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      68: d50323bf     	autiasp
      6c: d65f03c0     	ret
