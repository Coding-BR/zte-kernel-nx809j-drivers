
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000210d4 <tpd_goodix_ts_suspend>:
   210d4: d503233f     	paciasp
   210d8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   210dc: 910003fd     	mov	x29, sp
   210e0: f9400408     	ldr	x8, [x0, #0x8]
   210e4: 91004100     	add	x0, x8, #0x10
   210e8: 94000000     	bl	0x210e8 <tpd_goodix_ts_suspend+0x14>
		00000000000210e8:  R_AARCH64_CALL26	syna_dev_suspend
   210ec: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   210f0: d50323bf     	autiasp
   210f4: d65f03c0     	ret
