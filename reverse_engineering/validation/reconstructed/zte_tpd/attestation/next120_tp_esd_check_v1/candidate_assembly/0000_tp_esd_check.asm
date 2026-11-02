
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000102fc <tp_esd_check>:
   102fc: 90000008     	adrp	x8, 0x10000 <syna_ts_panel_notifier_callback+0x20>
		00000000000102fc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   10300: f9400100     	ldr	x0, [x8]
		0000000000010300:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   10304: f9474c08     	ldr	x8, [x0, #0xe98]
   10308: b40001e8     	cbz	x8, 0x10344 <tp_esd_check+0x48>
   1030c: d503233f     	paciasp
   10310: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   10314: 910003fd     	mov	x29, sp
   10318: b85fc110     	ldur	w16, [x8, #-0x4]
   1031c: 72874531     	movk	w17, #0x3a29
   10320: 72b01031     	movk	w17, #0x8081, lsl #16
   10324: 6b11021f     	cmp	w16, w17
   10328: 54000040     	b.eq	0x10330 <tp_esd_check+0x34>
   1032c: d4304500     	brk	#0x8228
   10330: d63f0100     	blr	x8
   10334: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   10338: d50323bf     	autiasp
   1033c: 12000000     	and	w0, w0, #0x1
   10340: d65f03c0     	ret
   10344: 120003e0     	and	w0, wzr, #0x1
   10348: d65f03c0     	ret
