
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013d8 <list_del>:
    13d8: 90000009     	adrp	x9, 0x1000 <gf_probe+0x2cc>
		00000000000013d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    13dc: 91000129     	add	x9, x9, #0x0
		00000000000013dc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    13e0: f9400528     	ldr	x8, [x9, #0x8]
    13e4: f940010a     	ldr	x10, [x8]
    13e8: eb09015f     	cmp	x10, x9
    13ec: 540001a1     	b.ne	0x1420 <list_del+0x48>
    13f0: f940012a     	ldr	x10, [x9]
    13f4: f940054b     	ldr	x11, [x10, #0x8]
    13f8: eb09017f     	cmp	x11, x9
    13fc: 54000121     	b.ne	0x1420 <list_del+0x48>
    1400: f9000548     	str	x8, [x10, #0x8]
    1404: f900010a     	str	x10, [x8]
    1408: d2802008     	mov	x8, #0x100              // =256
    140c: 5280044a     	mov	w10, #0x22              // =34
    1410: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    1414: aa0a010a     	orr	x10, x8, x10
    1418: a9002928     	stp	x8, x10, [x9]
    141c: d65f03c0     	ret
    1420: d503233f     	paciasp
    1424: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1428: 910003fd     	mov	x29, sp
    142c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		000000000000142c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
    1430: 91000000     	add	x0, x0, #0x0
		0000000000001430:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
    1434: 94000000     	bl	0x1434 <list_del+0x5c>
		0000000000001434:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    1438: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    143c: d50323bf     	autiasp
    1440: 17fffff2     	b	0x1408 <list_del+0x30>
