
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ff80 <tpd_goodix_ts_suspend>:
   1ff80: d503233f     	paciasp
   1ff84: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1ff88: 910003fd     	mov	x29, sp
   1ff8c: f9400408     	ldr	x8, [x0, #0x8]
   1ff90: 91004100     	add	x0, x8, #0x10
   1ff94: 94000000     	bl	0x1ff94 <tpd_goodix_ts_suspend+0x14>
		000000000001ff94:  R_AARCH64_CALL26	syna_dev_suspend
   1ff98: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1ff9c: d50323bf     	autiasp
   1ffa0: d65f03c0     	ret
