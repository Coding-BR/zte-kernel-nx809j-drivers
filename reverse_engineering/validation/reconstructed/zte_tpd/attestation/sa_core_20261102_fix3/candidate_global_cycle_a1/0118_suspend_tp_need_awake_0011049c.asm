
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000097c0 <suspend_tp_need_awake>:
    97c0: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000097c0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    97c4: f9400100     	ldr	x0, [x8]
		00000000000097c4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    97c8: f9473408     	ldr	x8, [x0, #0xe68]
    97cc: b40001e8     	cbz	x8, 0x9808 <suspend_tp_need_awake+0x48>
    97d0: d503233f     	paciasp
    97d4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    97d8: 910003fd     	mov	x29, sp
    97dc: b85fc110     	ldur	w16, [x8, #-0x4]
    97e0: 72874531     	movk	w17, #0x3a29
    97e4: 72b01031     	movk	w17, #0x8081, lsl #16
    97e8: 6b11021f     	cmp	w16, w17
    97ec: 54000040     	b.eq	0x97f4 <suspend_tp_need_awake+0x34>
    97f0: d4304500     	brk	#0x8228
    97f4: d63f0100     	blr	x8
    97f8: 12000000     	and	w0, w0, #0x1
    97fc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9800: d50323bf     	autiasp
    9804: d65f03c0     	ret
    9808: 2a1f03e0     	mov	w0, wzr
    980c: d65f03c0     	ret
