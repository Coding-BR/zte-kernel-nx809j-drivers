
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003418 <aw_i2c_suspend>:
    3418: d503233f     	paciasp
    341c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3420: 910003fd     	mov	x29, sp
    3424: f9404c00     	ldr	x0, [x0, #0x98]
    3428: 97fff3ab     	bl	0x2d4 <aw86320_play_stop>
		0000000000003428:  R_AARCH64_CALL26	aw86320_play_stop
    342c: 2a1f03e0     	mov	w0, wzr
    3430: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3434: d50323bf     	autiasp
    3438: d65f03c0     	ret
