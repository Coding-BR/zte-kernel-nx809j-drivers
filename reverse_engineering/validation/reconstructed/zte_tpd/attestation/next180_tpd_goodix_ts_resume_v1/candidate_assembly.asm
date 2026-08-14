
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ff58 <tpd_goodix_ts_resume>:
   1ff58: d503233f     	paciasp
   1ff5c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1ff60: 910003fd     	mov	x29, sp
   1ff64: f9400408     	ldr	x8, [x0, #0x8]
   1ff68: 91004100     	add	x0, x8, #0x10
   1ff6c: 94000000     	bl	0x1ff6c <tpd_goodix_ts_resume+0x14>
		000000000001ff6c:  R_AARCH64_CALL26	syna_dev_resume
   1ff70: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1ff74: d50323bf     	autiasp
   1ff78: d65f03c0     	ret
