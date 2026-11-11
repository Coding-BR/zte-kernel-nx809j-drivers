
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000020dc <list_del>:
    20dc: 90000009     	adrp	x9, 0x2000 <goodix_fb_state_chg_callback+0x78>
		00000000000020dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    20e0: 91000129     	add	x9, x9, #0x0
		00000000000020e0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    20e4: f9400528     	ldr	x8, [x9, #0x8]
    20e8: f940010a     	ldr	x10, [x8]
    20ec: eb09015f     	cmp	x10, x9
    20f0: 540001a1     	b.ne	0x2124 <list_del+0x48>
    20f4: f940012a     	ldr	x10, [x9]
    20f8: f940054b     	ldr	x11, [x10, #0x8]
    20fc: eb09017f     	cmp	x11, x9
    2100: 54000121     	b.ne	0x2124 <list_del+0x48>
    2104: f9000548     	str	x8, [x10, #0x8]
    2108: f900010a     	str	x10, [x8]
    210c: d2802008     	mov	x8, #0x100              // =256
    2110: 5280044a     	mov	w10, #0x22              // =34
    2114: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    2118: aa0a010a     	orr	x10, x8, x10
    211c: a9002928     	stp	x8, x10, [x9]
    2120: d65f03c0     	ret
    2124: d503233f     	paciasp
    2128: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    212c: 910003fd     	mov	x29, sp
    2130: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0x78>
		0000000000002130:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    2134: 91000000     	add	x0, x0, #0x0
		0000000000002134:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    2138: 94000000     	bl	0x2138 <list_del+0x5c>
		0000000000002138:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    213c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2140: d50323bf     	autiasp
    2144: 17fffff2     	b	0x210c <list_del+0x30>
