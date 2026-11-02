
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026498 <syna_dev_shutdown>:
   26498: d503233f     	paciasp
   2649c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   264a0: 910003fd     	mov	x29, sp
   264a4: 97ffffaf     	bl	0x26360 <tpd_set_fake_sleep>
		00000000000264a4:  R_AARCH64_CALL26	syna_dev_remove
   264a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   264ac: d50323bf     	autiasp
   264b0: d65f03c0     	ret
