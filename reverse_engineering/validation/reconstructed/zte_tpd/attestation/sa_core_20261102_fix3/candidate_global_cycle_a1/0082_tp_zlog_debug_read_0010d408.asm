
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016eb8 <tp_zlog_debug_read>:
   16eb8: d503233f     	paciasp
   16ebc: d10143ff     	sub	sp, sp, #0x50
   16ec0: a9047bfd     	stp	x29, x30, [sp, #0x40]
   16ec4: 910103fd     	add	x29, sp, #0x40
   16ec8: d5384109     	mrs	x9, SP_EL0
   16ecc: aa1f03e0     	mov	x0, xzr
   16ed0: f9438929     	ldr	x9, [x9, #0x710]
   16ed4: f81f83a9     	stur	x9, [x29, #-0x8]
   16ed8: f9400069     	ldr	x9, [x3]
   16edc: f802a3ff     	stur	xzr, [sp, #0x2a]
   16ee0: f80243ff     	stur	xzr, [sp, #0x24]
   16ee4: f801c3ff     	stur	xzr, [sp, #0x1c]
   16ee8: f80143ff     	stur	xzr, [sp, #0x14]
   16eec: f800c3ff     	stur	xzr, [sp, #0xc]
   16ef0: b50001e9     	cbnz	x9, 0x16f2c <tp_zlog_debug_read+0x74>
   16ef4: 9000000a     	adrp	x10, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc272
   16ef8: 9100014a     	add	x10, x10, #0x0
		0000000000016ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc272
   16efc: aa0303e8     	mov	x8, x3
   16f00: 528e6ea9     	mov	w9, #0x7375             // =29557
   16f04: f940014a     	ldr	x10, [x10]
   16f08: 910003e3     	mov	x3, sp
   16f0c: 72a00ca9     	movk	w9, #0x65, lsl #16
   16f10: aa0103e0     	mov	x0, x1
   16f14: aa0203e1     	mov	x1, x2
   16f18: aa0803e2     	mov	x2, x8
   16f1c: 52800164     	mov	w4, #0xb                // =11
   16f20: b9000be9     	str	w9, [sp, #0x8]
   16f24: f90003ea     	str	x10, [sp]
   16f28: 94000000     	bl	0x16f28 <tp_zlog_debug_read+0x70>
		0000000000016f28:  R_AARCH64_CALL26	simple_read_from_buffer
   16f2c: d5384108     	mrs	x8, SP_EL0
   16f30: f9438908     	ldr	x8, [x8, #0x710]
   16f34: f85f83a9     	ldur	x9, [x29, #-0x8]
   16f38: eb09011f     	cmp	x8, x9
   16f3c: 540000a1     	b.ne	0x16f50 <tp_zlog_debug_read+0x98>
   16f40: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   16f44: 910143ff     	add	sp, sp, #0x50
   16f48: d50323bf     	autiasp
   16f4c: d65f03c0     	ret
   16f50: 94000000     	bl	0x16f50 <tp_zlog_debug_read+0x98>
		0000000000016f50:  R_AARCH64_CALL26	__stack_chk_fail
