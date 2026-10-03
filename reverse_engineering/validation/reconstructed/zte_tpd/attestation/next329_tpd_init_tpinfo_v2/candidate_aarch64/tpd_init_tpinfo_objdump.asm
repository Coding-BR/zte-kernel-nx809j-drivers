
/out/tpd_init_tpinfo.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_init_tpinfo>:
       0:      	stp	x29, x30, [sp, #-0x20]!
       4:      	stp	x20, x19, [sp, #0x10]
       8:      	mov	x19, x0
       c:      	ldr	x20, [x0, #0xdb8]
      10:      	adrp	x0, 0x0 <tpd_init_tpinfo>
      14:      	add	x0, x0, #0x0
      18:      	adrp	x1, 0x0 <tpd_init_tpinfo>
      1c:      	add	x1, x1, #0x0
      20:      	mov	x29, sp
      24:      	bl	0x24 <tpd_init_tpinfo+0x24>
      28:      	adrp	x8, 0x0 <tpd_init_tpinfo>
      2c:      	add	x8, x8, #0x0
      30:      	mov	w9, #0x1                // =1
      34:      	ldp	x10, x8, [x8]
      38:      	str	w9, [x19, #0xcf0]
      3c:      	mov	w9, #0x4                // =4
      40:      	mov	w0, wzr
      44:      	str	x10, [x19, #0xd18]
      48:      	ldr	x10, [x20]
      4c:      	str	x8, [x19, #0xd20]
      50:      	ldr	w8, [x10, #0xc]
      54:      	str	w9, [x19, #0xd14]
      58:      	ldr	x10, [x20]
      5c:      	str	w8, [x19, #0xd00]
      60:      	ldrh	w10, [x10, #0xc6]
      64:      	rev16	w10, w10
      68:      	str	w10, [x19, #0xd04]
      6c:      	ldp	x20, x19, [sp, #0x10]
      70:      	ldp	x29, x30, [sp], #0x20
      74:      	ret
