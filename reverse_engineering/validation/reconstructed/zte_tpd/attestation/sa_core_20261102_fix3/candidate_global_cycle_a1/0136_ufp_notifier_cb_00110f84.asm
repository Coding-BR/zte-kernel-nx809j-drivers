
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026534 <ufp_notifier_cb>:
   26534: d503233f     	paciasp
   26538: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   2653c: 910003fd     	mov	x29, sp
   26540: 7100001f     	cmp	w0, #0x0
   26544: 1a9f07e0     	cset	w0, ne
   26548: 94000000     	bl	0x26548 <ufp_notifier_cb+0x14>
		0000000000026548:  R_AARCH64_CALL26	change_tp_state
   2654c: 2a1f03e0     	mov	w0, wzr
   26550: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26554: d50323bf     	autiasp
   26558: d65f03c0     	ret
