
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

0000000000000070 <zte_poweroff_charging_handle>:
      70: d503233f     	paciasp
      74: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      78: f9000bf3     	str	x19, [sp, #0x10]
      7c: 910003fd     	mov	x29, sp
      80: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x153
      84: 91000021     	add	x1, x1, #0x0
		0000000000000084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x153
      88: 528000e2     	mov	w2, #0x7                // =7
      8c: aa0003f3     	mov	x19, x0
      90: 94000000     	bl	0x90 <zte_poweroff_charging_handle+0x20>
		0000000000000090:  R_AARCH64_CALL26	strncmp
      94: 7100001f     	cmp	w0, #0x0
      98: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	zte_poweroff_charging
      9c: 90000000     	adrp	x0, 0x0 <.init.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4
      a0: 91000000     	add	x0, x0, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4
      a4: 1a9f17e2     	cset	w2, eq
      a8: aa1303e1     	mov	x1, x19
      ac: b9000102     	str	w2, [x8]
		00000000000000ac:  R_AARCH64_LDST32_ABS_LO12_NC	zte_poweroff_charging
      b0: 94000000     	bl	0xb0 <zte_poweroff_charging_handle+0x40>
		00000000000000b0:  R_AARCH64_CALL26	_printk
      b4: 2a1f03e0     	mov	w0, wzr
      b8: f9400bf3     	ldr	x19, [sp, #0x10]
      bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      c0: d50323bf     	autiasp
      c4: d65f03c0     	ret
