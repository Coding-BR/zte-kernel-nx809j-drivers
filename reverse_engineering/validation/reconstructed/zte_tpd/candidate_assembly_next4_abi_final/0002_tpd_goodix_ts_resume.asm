
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000210ac <tpd_goodix_ts_resume>:
   210ac: d503233f     	paciasp
   210b0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   210b4: 910003fd     	mov	x29, sp
   210b8: f9400408     	ldr	x8, [x0, #0x8]
   210bc: 91004100     	add	x0, x8, #0x10
   210c0: 94000000     	bl	0x210c0 <tpd_goodix_ts_resume+0x14>
		00000000000210c0:  R_AARCH64_CALL26	syna_dev_resume
   210c4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   210c8: d50323bf     	autiasp
   210cc: d65f03c0     	ret
