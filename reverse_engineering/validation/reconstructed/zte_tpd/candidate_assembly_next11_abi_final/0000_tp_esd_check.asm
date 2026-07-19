
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e478 <tp_esd_check>:
   1e478: 90000008     	adrp	x8, 0x1e000 <tp_edge_report_limit_read+0x32c>
		000000000001e478:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e47c: f9400100     	ldr	x0, [x8]
		000000000001e47c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e480: f9474c08     	ldr	x8, [x0, #0xe98]
   1e484: b40001e8     	cbz	x8, 0x1e4c0 <tp_esd_check+0x48>
   1e488: d503233f     	paciasp
   1e48c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1e490: 910003fd     	mov	x29, sp
   1e494: b85fc110     	ldur	w16, [x8, #-0x4]
   1e498: 72874531     	movk	w17, #0x3a29
   1e49c: 72b01031     	movk	w17, #0x8081, lsl #16
   1e4a0: 6b11021f     	cmp	w16, w17
   1e4a4: 54000040     	b.eq	0x1e4ac <tp_esd_check+0x34>
   1e4a8: d4304500     	brk	#0x8228
   1e4ac: d63f0100     	blr	x8
   1e4b0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1e4b4: d50323bf     	autiasp
   1e4b8: 12000000     	and	w0, w0, #0x1
   1e4bc: d65f03c0     	ret
   1e4c0: 120003e0     	and	w0, wzr, #0x1
   1e4c4: d65f03c0     	ret
