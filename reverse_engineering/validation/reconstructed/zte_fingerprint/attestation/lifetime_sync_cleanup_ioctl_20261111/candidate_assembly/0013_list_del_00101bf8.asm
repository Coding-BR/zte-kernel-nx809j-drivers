
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000020a8 <list_del>:
    20a8: 90000009     	adrp	x9, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000020a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    20ac: 91000129     	add	x9, x9, #0x0
		00000000000020ac:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    20b0: f9400528     	ldr	x8, [x9, #0x8]
    20b4: f940010a     	ldr	x10, [x8]
    20b8: eb09015f     	cmp	x10, x9
    20bc: 540001a1     	b.ne	0x20f0 <list_del+0x48>
    20c0: f940012a     	ldr	x10, [x9]
    20c4: f940054b     	ldr	x11, [x10, #0x8]
    20c8: eb09017f     	cmp	x11, x9
    20cc: 54000121     	b.ne	0x20f0 <list_del+0x48>
    20d0: f9000548     	str	x8, [x10, #0x8]
    20d4: f900010a     	str	x10, [x8]
    20d8: d2802008     	mov	x8, #0x100              // =256
    20dc: 5280044a     	mov	w10, #0x22              // =34
    20e0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    20e4: aa0a010a     	orr	x10, x8, x10
    20e8: a9002928     	stp	x8, x10, [x9]
    20ec: d65f03c0     	ret
    20f0: d503233f     	paciasp
    20f4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    20f8: 910003fd     	mov	x29, sp
    20fc: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000020fc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x20
    2100: 91000000     	add	x0, x0, #0x0
		0000000000002100:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x20
    2104: 94000000     	bl	0x2104 <list_del+0x5c>
		0000000000002104:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    2108: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    210c: d50323bf     	autiasp
    2110: 17fffff2     	b	0x20d8 <list_del+0x30>
