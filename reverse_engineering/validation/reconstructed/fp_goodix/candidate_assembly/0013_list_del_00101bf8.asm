
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013cc <list_del>:
    13cc: 90000009     	adrp	x9, 0x1000 <gf_probe+0x2d8>
		00000000000013cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    13d0: 91000129     	add	x9, x9, #0x0
		00000000000013d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    13d4: f9400528     	ldr	x8, [x9, #0x8]
    13d8: f940010a     	ldr	x10, [x8]
    13dc: eb09015f     	cmp	x10, x9
    13e0: 540001a1     	b.ne	0x1414 <list_del+0x48>
    13e4: f940012a     	ldr	x10, [x9]
    13e8: f940054b     	ldr	x11, [x10, #0x8]
    13ec: eb09017f     	cmp	x11, x9
    13f0: 54000121     	b.ne	0x1414 <list_del+0x48>
    13f4: f9000548     	str	x8, [x10, #0x8]
    13f8: f900010a     	str	x10, [x8]
    13fc: d2802008     	mov	x8, #0x100              // =256
    1400: 5280044a     	mov	w10, #0x22              // =34
    1404: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    1408: aa0a010a     	orr	x10, x8, x10
    140c: a9002928     	stp	x8, x10, [x9]
    1410: d65f03c0     	ret
    1414: d503233f     	paciasp
    1418: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    141c: 910003fd     	mov	x29, sp
    1420: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001420:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1424: 91000000     	add	x0, x0, #0x0
		0000000000001424:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1428: 94000000     	bl	0x1428 <list_del+0x5c>
		0000000000001428:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    142c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1430: d50323bf     	autiasp
    1434: 17fffff2     	b	0x13fc <list_del+0x30>
