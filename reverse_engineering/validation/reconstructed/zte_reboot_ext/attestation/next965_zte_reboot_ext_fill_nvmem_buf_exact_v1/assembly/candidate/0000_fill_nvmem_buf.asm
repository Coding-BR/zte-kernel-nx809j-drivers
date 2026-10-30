
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <fill_nvmem_buf>:
       4: d503233f     	paciasp
       8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
       c: a90167fa     	stp	x26, x25, [sp, #0x10]
      10: a9025ff8     	stp	x24, x23, [sp, #0x20]
      14: a90357f6     	stp	x22, x21, [sp, #0x30]
      18: a9044ff4     	stp	x20, x19, [sp, #0x40]
      1c: 910003fd     	mov	x29, sp
      20: aa0403f5     	mov	x21, x4
      24: aa0303f3     	mov	x19, x3
      28: aa0203f4     	mov	x20, x2
      2c: aa0003f8     	mov	x24, x0
      30: aa0103f6     	mov	x22, x1
      34: b4000160     	cbz	x0, 0x60 <fill_nvmem_buf+0x5c>
      38: aa1803e0     	mov	x0, x24
      3c: 94000000     	bl	0x3c <fill_nvmem_buf+0x38>
		000000000000003c:  R_AARCH64_CALL26	strlen
      40: aa0003fa     	mov	x26, x0
      44: b4000136     	cbz	x22, 0x68 <fill_nvmem_buf+0x64>
      48: aa1603e0     	mov	x0, x22
      4c: 94000000     	bl	0x4c <fill_nvmem_buf+0x48>
		000000000000004c:  R_AARCH64_CALL26	strlen
      50: aa0003f9     	mov	x25, x0
      54: aa1f03f7     	mov	x23, xzr
      58: b50000f8     	cbnz	x24, 0x74 <fill_nvmem_buf+0x70>
      5c: 1400000f     	b	0x98 <fill_nvmem_buf+0x94>
      60: aa1f03fa     	mov	x26, xzr
      64: b5ffff36     	cbnz	x22, 0x48 <fill_nvmem_buf+0x44>
      68: aa1f03f9     	mov	x25, xzr
      6c: aa1f03f7     	mov	x23, xzr
      70: b4000158     	cbz	x24, 0x98 <fill_nvmem_buf+0x94>
      74: b400013a     	cbz	x26, 0x98 <fill_nvmem_buf+0x94>
      78: eb15035f     	cmp	x26, x21
      7c: 8b130280     	add	x0, x20, x19
      80: aa1803e1     	mov	x1, x24
      84: 9a953357     	csel	x23, x26, x21, lo
      88: aa1703e2     	mov	x2, x23
      8c: 94000000     	bl	0x8c <fill_nvmem_buf+0x88>
		000000000000008c:  R_AARCH64_CALL26	memcpy
      90: eb15035f     	cmp	x26, x21
      94: 54000282     	b.hs	0xe4 <fill_nvmem_buf+0xe0>
      98: b40001b6     	cbz	x22, 0xcc <fill_nvmem_buf+0xc8>
      9c: b4000199     	cbz	x25, 0xcc <fill_nvmem_buf+0xc8>
      a0: cb1702a8     	sub	x8, x21, x23
      a4: aa1603e1     	mov	x1, x22
      a8: eb08033f     	cmp	x25, x8
      ac: 9a883338     	csel	x24, x25, x8, lo
      b0: 8b170288     	add	x8, x20, x23
      b4: 8b130100     	add	x0, x8, x19
      b8: aa1803e2     	mov	x2, x24
      bc: 94000000     	bl	0xbc <fill_nvmem_buf+0xb8>
		00000000000000bc:  R_AARCH64_CALL26	memcpy
      c0: 8b170317     	add	x23, x24, x23
      c4: eb1502ff     	cmp	x23, x21
      c8: 540000e2     	b.hs	0xe4 <fill_nvmem_buf+0xe0>
      cc: eb1702a2     	subs	x2, x21, x23
      d0: 540000a9     	b.ls	0xe4 <fill_nvmem_buf+0xe0>
      d4: 8b170288     	add	x8, x20, x23
      d8: 2a1f03e1     	mov	w1, wzr
      dc: 8b130100     	add	x0, x8, x19
      e0: 94000000     	bl	0xe0 <fill_nvmem_buf+0xdc>
		00000000000000e0:  R_AARCH64_CALL26	memset
      e4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
      e8: a94357f6     	ldp	x22, x21, [sp, #0x30]
      ec: a9425ff8     	ldp	x24, x23, [sp, #0x20]
      f0: a94167fa     	ldp	x26, x25, [sp, #0x10]
      f4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
      f8: d50323bf     	autiasp
      fc: d65f03c0     	ret
