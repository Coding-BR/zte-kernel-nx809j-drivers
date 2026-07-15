
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009f1c <tpd_suspend_work>:
    9f1c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009f1c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9f20: f9400109     	ldr	x9, [x8]
		0000000000009f20:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9f24: f9470928     	ldr	x8, [x9, #0xe10]
    9f28: b40001c8     	cbz	x8, 0x9f60 <tpd_suspend_work+0x44>
    9f2c: d503233f     	paciasp
    9f30: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9f34: 910003fd     	mov	x29, sp
    9f38: f946ed20     	ldr	x0, [x9, #0xdd8]
    9f3c: b85fc110     	ldur	w16, [x8, #-0x4]
    9f40: 729c8c91     	movk	w17, #0xe464
    9f44: 72b80d31     	movk	w17, #0xc069, lsl #16
    9f48: 6b11021f     	cmp	w16, w17
    9f4c: 54000040     	b.eq	0x9f54 <tpd_suspend_work+0x38>
    9f50: d4304500     	brk	#0x8228
    9f54: d63f0100     	blr	x8
    9f58: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9f5c: d50323bf     	autiasp
    9f60: d65f03c0     	ret
