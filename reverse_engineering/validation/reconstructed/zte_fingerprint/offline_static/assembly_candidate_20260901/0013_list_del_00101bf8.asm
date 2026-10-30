
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d78 <list_del>:
    1d78: 90000009     	adrp	x9, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001d78:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1d7c: 91000129     	add	x9, x9, #0x0
		0000000000001d7c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1d80: f9400528     	ldr	x8, [x9, #0x8]
    1d84: f940010a     	ldr	x10, [x8]
    1d88: eb09015f     	cmp	x10, x9
    1d8c: 540001a1     	b.ne	0x1dc0 <list_del+0x48>
    1d90: f940012a     	ldr	x10, [x9]
    1d94: f940054b     	ldr	x11, [x10, #0x8]
    1d98: eb09017f     	cmp	x11, x9
    1d9c: 54000121     	b.ne	0x1dc0 <list_del+0x48>
    1da0: f9000548     	str	x8, [x10, #0x8]
    1da4: f900010a     	str	x10, [x8]
    1da8: d2802008     	mov	x8, #0x100              // =256
    1dac: 5280044a     	mov	w10, #0x22              // =34
    1db0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    1db4: aa0a010a     	orr	x10, x8, x10
    1db8: a9002928     	stp	x8, x10, [x9]
    1dbc: d65f03c0     	ret
    1dc0: d503233f     	paciasp
    1dc4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1dc8: 910003fd     	mov	x29, sp
    1dcc: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001dcc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1dd0: 91000000     	add	x0, x0, #0x0
		0000000000001dd0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1dd4: 94000000     	bl	0x1dd4 <list_del+0x5c>
		0000000000001dd4:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    1dd8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1ddc: d50323bf     	autiasp
    1de0: 17fffff2     	b	0x1da8 <list_del+0x30>
