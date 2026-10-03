
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002b10 <suspend_tp_need_awake>:
    2b10: 90000008     	adrp	x8, 0x2000 <sub_1C628+0x4>
		0000000000002b10:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    2b14: f9400100     	ldr	x0, [x8]
		0000000000002b14:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2b18: f9473408     	ldr	x8, [x0, #0xe68]
    2b1c: b40001e8     	cbz	x8, 0x2b58 <suspend_tp_need_awake+0x48>
    2b20: d503233f     	paciasp
    2b24: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2b28: 910003fd     	mov	x29, sp
    2b2c: b85fc110     	ldur	w16, [x8, #-0x4]
    2b30: 72874531     	movk	w17, #0x3a29
    2b34: 72b01031     	movk	w17, #0x8081, lsl #16
    2b38: 6b11021f     	cmp	w16, w17
    2b3c: 54000040     	b.eq	0x2b44 <suspend_tp_need_awake+0x34>
    2b40: d4304500     	brk	#0x8228
    2b44: d63f0100     	blr	x8
    2b48: 12000000     	and	w0, w0, #0x1
    2b4c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2b50: d50323bf     	autiasp
    2b54: d65f03c0     	ret
    2b58: 2a1f03e0     	mov	w0, wzr
    2b5c: d65f03c0     	ret
