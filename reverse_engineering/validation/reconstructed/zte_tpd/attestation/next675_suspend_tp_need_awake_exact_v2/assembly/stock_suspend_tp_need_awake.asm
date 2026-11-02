
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009c14 <suspend_tp_need_awake>:
    9c14: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009c14:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9c18: f9400100     	ldr	x0, [x8]
		0000000000009c18:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9c1c: f9473408     	ldr	x8, [x0, #0xe68]
    9c20: b40001e8     	cbz	x8, 0x9c5c <suspend_tp_need_awake+0x48>
    9c24: d503233f     	paciasp
    9c28: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9c2c: 910003fd     	mov	x29, sp
    9c30: b85fc110     	ldur	w16, [x8, #-0x4]
    9c34: 72874531     	movk	w17, #0x3a29
    9c38: 72b01031     	movk	w17, #0x8081, lsl #16
    9c3c: 6b11021f     	cmp	w16, w17
    9c40: 54000040     	b.eq	0x9c48 <suspend_tp_need_awake+0x34>
    9c44: d4304500     	brk	#0x8228
    9c48: d63f0100     	blr	x8
    9c4c: 12000000     	and	w0, w0, #0x1
    9c50: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9c54: d50323bf     	autiasp
    9c58: d65f03c0     	ret
    9c5c: 2a1f03e0     	mov	w0, wzr
    9c60: d65f03c0     	ret
