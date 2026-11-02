
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006b80 <tp_zlog_debug_read>:
    6b80: d503233f     	paciasp
    6b84: d10143ff     	sub	sp, sp, #0x50
    6b88: a9047bfd     	stp	x29, x30, [sp, #0x40]
    6b8c: 910103fd     	add	x29, sp, #0x40
    6b90: d5384109     	mrs	x9, SP_EL0
    6b94: aa1f03e0     	mov	x0, xzr
    6b98: f9438929     	ldr	x9, [x9, #0x710]
    6b9c: f81f83a9     	stur	x9, [x29, #-0x8]
    6ba0: f9400069     	ldr	x9, [x3]
    6ba4: f802a3ff     	stur	xzr, [sp, #0x2a]
    6ba8: f80243ff     	stur	xzr, [sp, #0x24]
    6bac: f801c3ff     	stur	xzr, [sp, #0x1c]
    6bb0: f80143ff     	stur	xzr, [sp, #0x14]
    6bb4: f800c3ff     	stur	xzr, [sp, #0xc]
    6bb8: b50001e9     	cbnz	x9, 0x6bf4 <tp_zlog_debug_read+0x74>
    6bbc: 9000000a     	adrp	x10, 0x6000 <tp_pen_only_write+0x70>
		0000000000006bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf88
    6bc0: 9100014a     	add	x10, x10, #0x0
		0000000000006bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf88
    6bc4: aa0303e8     	mov	x8, x3
    6bc8: 528e6ea9     	mov	w9, #0x7375             // =29557
    6bcc: f940014a     	ldr	x10, [x10]
    6bd0: 910003e3     	mov	x3, sp
    6bd4: 72a00ca9     	movk	w9, #0x65, lsl #16
    6bd8: aa0103e0     	mov	x0, x1
    6bdc: aa0203e1     	mov	x1, x2
    6be0: aa0803e2     	mov	x2, x8
    6be4: 52800164     	mov	w4, #0xb                // =11
    6be8: b9000be9     	str	w9, [sp, #0x8]
    6bec: f90003ea     	str	x10, [sp]
    6bf0: 94000000     	bl	0x6bf0 <tp_zlog_debug_read+0x70>
		0000000000006bf0:  R_AARCH64_CALL26	simple_read_from_buffer
    6bf4: d5384108     	mrs	x8, SP_EL0
    6bf8: f9438908     	ldr	x8, [x8, #0x710]
    6bfc: f85f83a9     	ldur	x9, [x29, #-0x8]
    6c00: eb09011f     	cmp	x8, x9
    6c04: 540000a1     	b.ne	0x6c18 <tp_zlog_debug_read+0x98>
    6c08: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    6c0c: 910143ff     	add	sp, sp, #0x50
    6c10: d50323bf     	autiasp
    6c14: d65f03c0     	ret
    6c18: 94000000     	bl	0x6c18 <tp_zlog_debug_read+0x98>
		0000000000006c18:  R_AARCH64_CALL26	__stack_chk_fail
