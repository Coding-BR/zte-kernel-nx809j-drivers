
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b068 <suspend_tp_need_awake>:
    b068: 90000008     	adrp	x8, 0xb000 <suspend_store+0xb0>
		000000000000b068:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    b06c: f9400100     	ldr	x0, [x8]
		000000000000b06c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    b070: f9473408     	ldr	x8, [x0, #0xe68]
    b074: b40001e8     	cbz	x8, 0xb0b0 <suspend_tp_need_awake+0x48>
    b078: d503233f     	paciasp
    b07c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b080: 910003fd     	mov	x29, sp
    b084: b85fc110     	ldur	w16, [x8, #-0x4]
    b088: 72874531     	movk	w17, #0x3a29
    b08c: 72b01031     	movk	w17, #0x8081, lsl #16
    b090: 6b11021f     	cmp	w16, w17
    b094: 54000040     	b.eq	0xb09c <suspend_tp_need_awake+0x34>
    b098: d4304500     	brk	#0x8228
    b09c: d63f0100     	blr	x8
    b0a0: 12000000     	and	w0, w0, #0x1
    b0a4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b0a8: d50323bf     	autiasp
    b0ac: d65f03c0     	ret
    b0b0: 2a1f03e0     	mov	w0, wzr
    b0b4: d65f03c0     	ret
