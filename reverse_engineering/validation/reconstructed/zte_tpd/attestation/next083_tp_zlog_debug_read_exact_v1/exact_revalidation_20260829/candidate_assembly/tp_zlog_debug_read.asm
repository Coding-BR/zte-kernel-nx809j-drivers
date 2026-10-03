
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016e5c <tp_zlog_debug_read>:
   16e5c: d503233f     	paciasp
   16e60: d10143ff     	sub	sp, sp, #0x50
   16e64: a9047bfd     	stp	x29, x30, [sp, #0x40]
   16e68: 910103fd     	add	x29, sp, #0x40
   16e6c: d5384109     	mrs	x9, SP_EL0
   16e70: aa1f03e0     	mov	x0, xzr
   16e74: f9438929     	ldr	x9, [x9, #0x710]
   16e78: f81f83a9     	stur	x9, [x29, #-0x8]
   16e7c: f9400069     	ldr	x9, [x3]
   16e80: f802a3ff     	stur	xzr, [sp, #0x2a]
   16e84: f80243ff     	stur	xzr, [sp, #0x24]
   16e88: f801c3ff     	stur	xzr, [sp, #0x1c]
   16e8c: f80143ff     	stur	xzr, [sp, #0x14]
   16e90: f800c3ff     	stur	xzr, [sp, #0xc]
   16e94: b50001e9     	cbnz	x9, 0x16ed0 <tp_zlog_debug_read+0x74>
   16e98: 9000000a     	adrp	x10, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc272
   16e9c: 9100014a     	add	x10, x10, #0x0
		0000000000016e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc272
   16ea0: aa0303e8     	mov	x8, x3
   16ea4: 528e6ea9     	mov	w9, #0x7375             // =29557
   16ea8: f940014a     	ldr	x10, [x10]
   16eac: 910003e3     	mov	x3, sp
   16eb0: 72a00ca9     	movk	w9, #0x65, lsl #16
   16eb4: aa0103e0     	mov	x0, x1
   16eb8: aa0203e1     	mov	x1, x2
   16ebc: aa0803e2     	mov	x2, x8
   16ec0: 52800164     	mov	w4, #0xb                // =11
   16ec4: b9000be9     	str	w9, [sp, #0x8]
   16ec8: f90003ea     	str	x10, [sp]
   16ecc: 94000000     	bl	0x16ecc <tp_zlog_debug_read+0x70>
		0000000000016ecc:  R_AARCH64_CALL26	simple_read_from_buffer
   16ed0: d5384108     	mrs	x8, SP_EL0
   16ed4: f9438908     	ldr	x8, [x8, #0x710]
   16ed8: f85f83a9     	ldur	x9, [x29, #-0x8]
   16edc: eb09011f     	cmp	x8, x9
   16ee0: 540000a1     	b.ne	0x16ef4 <tp_zlog_debug_read+0x98>
   16ee4: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   16ee8: 910143ff     	add	sp, sp, #0x50
   16eec: d50323bf     	autiasp
   16ef0: d65f03c0     	ret
   16ef4: 94000000     	bl	0x16ef4 <tp_zlog_debug_read+0x98>
		0000000000016ef4:  R_AARCH64_CALL26	__stack_chk_fail
