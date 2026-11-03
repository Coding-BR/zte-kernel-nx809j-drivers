
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d838 <syna_dev_disconnect>:
    d838: d503233f     	paciasp
    d83c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    d840: f9000bf3     	str	x19, [sp, #0x10]
    d844: 910003fd     	mov	x29, sp
    d848: aa0003f3     	mov	x19, x0
    d84c: 94000000     	bl	0xd84c <syna_dev_disconnect+0x14>
		000000000000d84c:  R_AARCH64_CALL26	syna_tpd_charger_lifecycle_stop
    d850: aa1303e0     	mov	x0, x19
    d854: 94000000     	bl	0xd854 <syna_dev_disconnect+0x1c>
		000000000000d854:  R_AARCH64_CALL26	syna_dev_disconnect_stock_exact
    d858: f9400bf3     	ldr	x19, [sp, #0x10]
    d85c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d860: d50323bf     	autiasp
    d864: d65f03c0     	ret
