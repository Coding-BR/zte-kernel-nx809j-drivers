
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254bc <zte_touch_remove>:
   254bc: d503233f     	paciasp
   254c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   254c4: 910003fd     	mov	x29, sp
   254c8: 90000000     	adrp	x0, 0x25000 <zte_touch_probe+0x9c8>
		00000000000254c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45f3
   254cc: 91000000     	add	x0, x0, #0x0
		00000000000254cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45f3
   254d0: 90000001     	adrp	x1, 0x25000 <zte_touch_probe+0x9c8>
		00000000000254d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x544a
   254d4: 91000021     	add	x1, x1, #0x0
		00000000000254d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x544a
   254d8: 52816ae2     	mov	w2, #0xb57              // =2903
   254dc: 94000000     	bl	0x254dc <zte_touch_remove+0x20>
		00000000000254dc:  R_AARCH64_CALL26	_printk
   254e0: 94000000     	bl	0x254e0 <zte_touch_remove+0x24>
		00000000000254e0:  R_AARCH64_CALL26	zte_touch_deinit
   254e4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   254e8: d50323bf     	autiasp
   254ec: d65f03c0     	ret
