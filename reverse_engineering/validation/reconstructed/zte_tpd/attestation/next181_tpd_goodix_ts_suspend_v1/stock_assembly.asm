
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e1e4 <tpd_goodix_ts_suspend>:
    e1e4: d503233f     	paciasp
    e1e8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    e1ec: 910003fd     	mov	x29, sp
    e1f0: f9400408     	ldr	x8, [x0, #0x8]
    e1f4: 91004100     	add	x0, x8, #0x10
    e1f8: 97fffa3f     	bl	0xcaf4 <syna_dev_suspend>
    e1fc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    e200: d50323bf     	autiasp
    e204: d65f03c0     	ret
