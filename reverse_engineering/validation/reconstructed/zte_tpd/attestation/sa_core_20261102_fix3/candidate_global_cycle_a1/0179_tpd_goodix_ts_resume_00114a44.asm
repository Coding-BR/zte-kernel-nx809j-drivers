
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000264b8 <tpd_goodix_ts_resume>:
   264b8: d503233f     	paciasp
   264bc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   264c0: 910003fd     	mov	x29, sp
   264c4: f9400408     	ldr	x8, [x0, #0x8]
   264c8: 91004100     	add	x0, x8, #0x10
   264cc: 97fff8c5     	bl	0x247e0 <syna_tcm_testing_build_id+0x1a0>
		00000000000264cc:  R_AARCH64_CALL26	syna_dev_resume
   264d0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   264d4: d50323bf     	autiasp
   264d8: d65f03c0     	ret
