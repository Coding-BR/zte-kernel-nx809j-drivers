
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ca8 <list_del>:
     ca8: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000ca8:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
     cac: 91000129     	add	x9, x9, #0x0
		0000000000000cac:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
     cb0: f9400528     	ldr	x8, [x9, #0x8]
     cb4: f940010a     	ldr	x10, [x8]
     cb8: eb09015f     	cmp	x10, x9
     cbc: 540001a1     	b.ne	0xcf0 <list_del+0x48>
     cc0: f940012a     	ldr	x10, [x9]
     cc4: f940054b     	ldr	x11, [x10, #0x8]
     cc8: eb09017f     	cmp	x11, x9
     ccc: 54000121     	b.ne	0xcf0 <list_del+0x48>
     cd0: f9000548     	str	x8, [x10, #0x8]
     cd4: f900010a     	str	x10, [x8]
     cd8: d2802008     	mov	x8, #0x100              // =256
     cdc: 5280044a     	mov	w10, #0x22              // =34
     ce0: f2fbd5a8     	movk	x8, #0xdead, lsl #48
     ce4: aa0a010a     	orr	x10, x8, x10
     ce8: a9002928     	stp	x8, x10, [x9]
     cec: d65f03c0     	ret
     cf0: d503233f     	paciasp
     cf4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     cf8: 910003fd     	mov	x29, sp
     cfc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cfc:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
     d00: 91000000     	add	x0, x0, #0x0
		0000000000000d00:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
     d04: 94000000     	bl	0xd04 <list_del+0x5c>
		0000000000000d04:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
     d08: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     d0c: d50323bf     	autiasp
     d10: 17fffff2     	b	0xcd8 <list_del+0x30>
