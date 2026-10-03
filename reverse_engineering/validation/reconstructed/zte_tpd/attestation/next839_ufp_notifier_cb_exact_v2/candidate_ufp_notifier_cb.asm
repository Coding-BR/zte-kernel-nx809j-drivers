
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253dc <ufp_notifier_cb>:
   253dc: d503233f     	paciasp
   253e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   253e4: 910003fd     	mov	x29, sp
   253e8: 7100001f     	cmp	w0, #0x0
   253ec: 1a9f07e0     	cset	w0, ne
   253f0: 94000000     	bl	0x253f0 <ufp_notifier_cb+0x14>
		00000000000253f0:  R_AARCH64_CALL26	change_tp_state
   253f4: 2a1f03e0     	mov	w0, wzr
   253f8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   253fc: d50323bf     	autiasp
   25400: d65f03c0     	ret
