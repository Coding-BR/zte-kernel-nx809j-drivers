
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e1bc <tpd_goodix_ts_resume>:
    e1bc: d503233f     	paciasp
    e1c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    e1c4: 910003fd     	mov	x29, sp
    e1c8: f9400408     	ldr	x8, [x0, #0x8]
    e1cc: 91004100     	add	x0, x8, #0x10
    e1d0: 97fff8c5     	bl	0xc4e4 <syna_dev_resume>
    e1d4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    e1d8: d50323bf     	autiasp
    e1dc: d65f03c0     	ret
