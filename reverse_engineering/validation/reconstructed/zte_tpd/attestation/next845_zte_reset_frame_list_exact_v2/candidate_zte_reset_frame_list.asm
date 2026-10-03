
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000257a4 <zte_reset_frame_list>:
   257a4: d503233f     	paciasp
   257a8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   257ac: f9000bf3     	str	x19, [sp, #0x10]
   257b0: 910003fd     	mov	x29, sp
   257b4: aa0003f3     	mov	x19, x0
   257b8: 9111c000     	add	x0, x0, #0x470
   257bc: 94000000     	bl	0x257bc <zte_reset_frame_list+0x18>
		00000000000257bc:  R_AARCH64_CALL26	mutex_lock
   257c0: f9423260     	ldr	x0, [x19, #0x460]
   257c4: 52840002     	mov	w2, #0x2000             // =8192
   257c8: 9110f268     	add	x8, x19, #0x43c
   257cc: 2a1f03e1     	mov	w1, wzr
   257d0: 72a00062     	movk	w2, #0x3, lsl #16
   257d4: f900011f     	str	xzr, [x8]
   257d8: 94000000     	bl	0x257d8 <zte_reset_frame_list+0x34>
		00000000000257d8:  R_AARCH64_CALL26	memset
   257dc: 9111c260     	add	x0, x19, #0x470
   257e0: 94000000     	bl	0x257e0 <zte_reset_frame_list+0x3c>
		00000000000257e0:  R_AARCH64_CALL26	mutex_unlock
   257e4: 90000000     	adrp	x0, 0x25000 <tpfwupgrade_store+0x70>
		00000000000257e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2858
   257e8: 91000000     	add	x0, x0, #0x0
		00000000000257e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2858
   257ec: 90000001     	adrp	x1, 0x25000 <tpfwupgrade_store+0x70>
		00000000000257ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe3
   257f0: 91000021     	add	x1, x1, #0x0
		00000000000257f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe3
   257f4: 94000000     	bl	0x257f4 <zte_reset_frame_list+0x50>
		00000000000257f4:  R_AARCH64_CALL26	_printk
   257f8: f9400bf3     	ldr	x19, [sp, #0x10]
   257fc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25800: d50323bf     	autiasp
   25804: d65f03c0     	ret
