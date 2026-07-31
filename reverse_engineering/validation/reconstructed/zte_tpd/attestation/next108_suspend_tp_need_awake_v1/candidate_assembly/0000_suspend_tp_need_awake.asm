
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000428c <suspend_tp_need_awake>:
    428c: 90000008     	adrp	x8, 0x4000 <sub_30D90+0x10>
		000000000000428c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4290: f9400100     	ldr	x0, [x8]
		0000000000004290:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4294: f9473408     	ldr	x8, [x0, #0xe68]
    4298: b40001e8     	cbz	x8, 0x42d4 <suspend_tp_need_awake+0x48>
    429c: d503233f     	paciasp
    42a0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    42a4: 910003fd     	mov	x29, sp
    42a8: b85fc110     	ldur	w16, [x8, #-0x4]
    42ac: 72874531     	movk	w17, #0x3a29
    42b0: 72b01031     	movk	w17, #0x8081, lsl #16
    42b4: 6b11021f     	cmp	w16, w17
    42b8: 54000040     	b.eq	0x42c0 <suspend_tp_need_awake+0x34>
    42bc: d4304500     	brk	#0x8228
    42c0: d63f0100     	blr	x8
    42c4: 12000000     	and	w0, w0, #0x1
    42c8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    42cc: d50323bf     	autiasp
    42d0: d65f03c0     	ret
    42d4: 2a1f03e0     	mov	w0, wzr
    42d8: d65f03c0     	ret
