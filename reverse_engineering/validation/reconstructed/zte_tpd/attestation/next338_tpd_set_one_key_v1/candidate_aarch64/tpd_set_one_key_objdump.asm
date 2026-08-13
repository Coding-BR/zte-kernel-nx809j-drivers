
/out/tpd_set_one_key.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_one_key>:
       0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       4: f9000bf5     	str	x21, [sp, #0x10]
       8: f946dc15     	ldr	x21, [x0, #0xdb8]
       c: 910003fd     	mov	x29, sp
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: aa0003f3     	mov	x19, x0
      18: 90000000     	adrp	x0, 0x0 <tpd_set_one_key>
      1c: f9400000     	ldr	x0, [x0]
      20: 2a0103f4     	mov	w20, w1
      24: 90000001     	adrp	x1, 0x0 <tpd_set_one_key>
      28: 91000021     	add	x1, x1, #0x0
      2c: 94000000     	bl	0x2c <tpd_set_one_key+0x2c>
      30: b40000b5     	cbz	x21, 0x44 <tpd_set_one_key+0x44>
      34: 2a1f03e0     	mov	w0, wzr
      38: b905d6b4     	str	w20, [x21, #0x5d4]
      3c: b9045a74     	str	w20, [x19, #0x458]
      40: 14000002     	b	0x48 <tpd_set_one_key+0x48>
      44: 128002a0     	mov	w0, #-0x16              // =-22
      48: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      4c: f9400bf5     	ldr	x21, [sp, #0x10]
      50: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      54: d65f03c0     	ret
