
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <extract_ocp_info>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: aa0103f3     	mov	x19, x1
      20: aa0003f5     	mov	x21, x0
      24: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x346
      28: 91000021     	add	x1, x1, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x346
      2c: aa1303e0     	mov	x0, x19
      30: aa0303f6     	mov	x22, x3
      34: aa0203f4     	mov	x20, x2
      38: 94000000     	bl	0x38 <extract_ocp_info+0x34>
		0000000000000038:  R_AARCH64_CALL26	strstr
      3c: aa0003f7     	mov	x23, x0
      40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x244
      44: 91000021     	add	x1, x1, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x244
      48: aa1303e0     	mov	x0, x19
      4c: 94000000     	bl	0x4c <extract_ocp_info+0x48>
		000000000000004c:  R_AARCH64_CALL26	strstr
      50: b40003d3     	cbz	x19, 0xc8 <extract_ocp_info+0xc4>
      54: b4000277     	cbz	x23, 0xa0 <extract_ocp_info+0x9c>
      58: b4000240     	cbz	x0, 0xa0 <extract_ocp_info+0x9c>
      5c: 910036f8     	add	x24, x23, #0xd
      60: eb180017     	subs	x23, x0, x24
      64: 540001e3     	b.lo	0xa0 <extract_ocp_info+0x9c>
      68: 54000240     	b.eq	0xb0 <extract_ocp_info+0xac>
      6c: aa1303e0     	mov	x0, x19
      70: 94000000     	bl	0x70 <extract_ocp_info+0x6c>
		0000000000000070:  R_AARCH64_CALL26	strlen
      74: eb1602ff     	cmp	x23, x22
      78: 540001c2     	b.hs	0xb0 <extract_ocp_info+0xac>
      7c: eb0002ff     	cmp	x23, x0
      80: 54000182     	b.hs	0xb0 <extract_ocp_info+0xac>
      84: aa1403e0     	mov	x0, x20
      88: aa1803e1     	mov	x1, x24
      8c: aa1703e2     	mov	x2, x23
      90: 94000000     	bl	0x90 <extract_ocp_info+0x8c>
		0000000000000090:  R_AARCH64_CALL26	strncpy
      94: 2a1f03e0     	mov	w0, wzr
      98: 38376a9f     	strb	wzr, [x20, x23]
      9c: 14000010     	b	0xdc <extract_ocp_info+0xd8>
      a0: f94002a0     	ldr	x0, [x21]
      a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177
      a8: 91000021     	add	x1, x1, #0x0
		00000000000000a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177
      ac: 14000004     	b	0xbc <extract_ocp_info+0xb8>
      b0: f94002a0     	ldr	x0, [x21]
      b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      b8: 91000021     	add	x1, x1, #0x0
		00000000000000b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      bc: aa1303e2     	mov	x2, x19
      c0: 94000000     	bl	0xc0 <extract_ocp_info+0xbc>
		00000000000000c0:  R_AARCH64_CALL26	_dev_err
      c4: 14000005     	b	0xd8 <extract_ocp_info+0xd4>
      c8: f94002a0     	ldr	x0, [x21]
      cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
      d0: 91000021     	add	x1, x1, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
      d4: 94000000     	bl	0xd4 <extract_ocp_info+0xd0>
		00000000000000d4:  R_AARCH64_CALL26	_dev_err
      d8: 12800000     	mov	w0, #-0x1               // =-1
      dc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
      e0: a94257f6     	ldp	x22, x21, [sp, #0x20]
      e4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
      e8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
      ec: d50323bf     	autiasp
      f0: d65f03c0     	ret
