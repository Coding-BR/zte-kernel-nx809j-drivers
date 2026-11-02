
/out/tpd_set_one_key_bp.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_one_key>:
       0: d503233f     	paciasp
       4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       8: f9000bf5     	str	x21, [sp, #0x10]
       c: f946dc15     	ldr	x21, [x0, #0xdb8]
      10: 910003fd     	mov	x29, sp
      14: a9024ff4     	stp	x20, x19, [sp, #0x20]
      18: aa0003f3     	mov	x19, x0
      1c: 90000000     	adrp	x0, 0x0 <tpd_set_one_key>
      20: f9400000     	ldr	x0, [x0]
      24: 2a0103f4     	mov	w20, w1
      28: 90000001     	adrp	x1, 0x0 <tpd_set_one_key>
      2c: 91000021     	add	x1, x1, #0x0
      30: 94000000     	bl	0x30 <tpd_set_one_key+0x30>
      34: b40000b5     	cbz	x21, 0x48 <tpd_set_one_key+0x48>
      38: 2a1f03e0     	mov	w0, wzr
      3c: b905d6b4     	str	w20, [x21, #0x5d4]
      40: b9045a74     	str	w20, [x19, #0x458]
      44: 14000002     	b	0x4c <tpd_set_one_key+0x4c>
      48: 128002a0     	mov	w0, #-0x16              // =-22
      4c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      50: f9400bf5     	ldr	x21, [sp, #0x10]
      54: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      58: d50323bf     	autiasp
      5c: d65f03c0     	ret
