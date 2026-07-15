
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009c68 <tp_esd_check>:
    9c68: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009c68:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9c6c: f9400100     	ldr	x0, [x8]
		0000000000009c6c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9c70: f9474c08     	ldr	x8, [x0, #0xe98]
    9c74: b40001e8     	cbz	x8, 0x9cb0 <tp_esd_check+0x48>
    9c78: d503233f     	paciasp
    9c7c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9c80: 910003fd     	mov	x29, sp
    9c84: b85fc110     	ldur	w16, [x8, #-0x4]
    9c88: 72874531     	movk	w17, #0x3a29
    9c8c: 72b01031     	movk	w17, #0x8081, lsl #16
    9c90: 6b11021f     	cmp	w16, w17
    9c94: 54000040     	b.eq	0x9c9c <tp_esd_check+0x34>
    9c98: d4304500     	brk	#0x8228
    9c9c: d63f0100     	blr	x8
    9ca0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9ca4: d50323bf     	autiasp
    9ca8: 12000000     	and	w0, w0, #0x1
    9cac: d65f03c0     	ret
    9cb0: 120003e0     	and	w0, wzr, #0x1
    9cb4: d65f03c0     	ret
