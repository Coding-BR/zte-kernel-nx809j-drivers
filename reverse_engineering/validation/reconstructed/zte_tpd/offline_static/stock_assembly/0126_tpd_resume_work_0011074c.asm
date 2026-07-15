
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009ec4 <tpd_resume_work>:
    9ec4: d503233f     	paciasp
    9ec8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9ecc: f9000bf3     	str	x19, [sp, #0x10]
    9ed0: 910003fd     	mov	x29, sp
    9ed4: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009ed4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9ed8: f9400113     	ldr	x19, [x8]
		0000000000009ed8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9edc: f9470668     	ldr	x8, [x19, #0xe08]
    9ee0: b4000148     	cbz	x8, 0x9f08 <tpd_resume_work+0x44>
    9ee4: f946ee60     	ldr	x0, [x19, #0xdd8]
    9ee8: b85fc110     	ldur	w16, [x8, #-0x4]
    9eec: 729c8c91     	movk	w17, #0xe464
    9ef0: 72b80d31     	movk	w17, #0xc069, lsl #16
    9ef4: 6b11021f     	cmp	w16, w17
    9ef8: 54000040     	b.eq	0x9f00 <tpd_resume_work+0x3c>
    9efc: d4304500     	brk	#0x8228
    9f00: d63f0100     	blr	x8
    9f04: b904aa7f     	str	wzr, [x19, #0x4a8]
    9f08: f9400bf3     	ldr	x19, [sp, #0x10]
    9f0c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9f10: d50323bf     	autiasp
    9f14: d65f03c0     	ret
