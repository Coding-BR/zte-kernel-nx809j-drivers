
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a6fc <ufp_notifier_cb>:
    a6fc: d503233f     	paciasp
    a700: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a704: 910003fd     	mov	x29, sp
    a708: 7100001f     	cmp	w0, #0x0
    a70c: 1a9f07e0     	cset	w0, ne
    a710: 94000000     	bl	0xa710 <ufp_notifier_cb+0x14>
		000000000000a710:  R_AARCH64_CALL26	change_tp_state
    a714: 2a1f03e0     	mov	w0, wzr
    a718: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a71c: d50323bf     	autiasp
    a720: d65f03c0     	ret
