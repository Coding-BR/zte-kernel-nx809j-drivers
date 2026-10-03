
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d8f0 <syna_tcm_clear_command_processing>:
   1d8f0: b40001e0     	cbz	x0, 0x1d92c <syna_tcm_clear_command_processing+0x3c>
   1d8f4: f941d008     	ldr	x8, [x0, #0x3a0]
   1d8f8: b40001a8     	cbz	x8, 0x1d92c <syna_tcm_clear_command_processing+0x3c>
   1d8fc: d503233f     	paciasp
   1d900: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1d904: 910003fd     	mov	x29, sp
   1d908: b85fc110     	ldur	w16, [x8, #-0x4]
   1d90c: 7284ec11     	movk	w17, #0x2760
   1d910: 72b36fd1     	movk	w17, #0x9b7e, lsl #16
   1d914: 6b11021f     	cmp	w16, w17
   1d918: 54000040     	b.eq	0x1d920 <syna_tcm_clear_command_processing+0x30>
   1d91c: d4304500     	brk	#0x8228
   1d920: d63f0100     	blr	x8
   1d924: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1d928: d50323bf     	autiasp
   1d92c: d65f03c0     	ret
