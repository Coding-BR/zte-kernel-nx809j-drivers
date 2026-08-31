
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000263bc <syna_tcm_clear_command_processing>:
   263bc: b40001e0     	cbz	x0, 0x263f8 <syna_tcm_clear_command_processing+0x3c>
   263c0: f941d008     	ldr	x8, [x0, #0x3a0]
   263c4: b40001a8     	cbz	x8, 0x263f8 <syna_tcm_clear_command_processing+0x3c>
   263c8: d503233f     	paciasp
   263cc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   263d0: 910003fd     	mov	x29, sp
   263d4: b85fc110     	ldur	w16, [x8, #-0x4]
   263d8: 7284ec11     	movk	w17, #0x2760
   263dc: 72b36fd1     	movk	w17, #0x9b7e, lsl #16
   263e0: 6b11021f     	cmp	w16, w17
   263e4: 54000040     	b.eq	0x263ec <syna_tcm_clear_command_processing+0x30>
   263e8: d4304500     	brk	#0x8228
   263ec: d63f0100     	blr	x8
   263f0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   263f4: d50323bf     	autiasp
   263f8: d65f03c0     	ret
