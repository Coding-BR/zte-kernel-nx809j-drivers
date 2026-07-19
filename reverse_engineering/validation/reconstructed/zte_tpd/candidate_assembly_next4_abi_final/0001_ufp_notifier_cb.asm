
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024cb8 <ufp_notifier_cb>:
   24cb8: d503233f     	paciasp
   24cbc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   24cc0: 910003fd     	mov	x29, sp
   24cc4: 7100001f     	cmp	w0, #0x0
   24cc8: 1a9f07e0     	cset	w0, ne
   24ccc: 94000000     	bl	0x24ccc <ufp_notifier_cb+0x14>
		0000000000024ccc:  R_AARCH64_CALL26	change_tp_state
   24cd0: 2a1f03e0     	mov	w0, wzr
   24cd4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   24cd8: d50323bf     	autiasp
   24cdc: d65f03c0     	ret
