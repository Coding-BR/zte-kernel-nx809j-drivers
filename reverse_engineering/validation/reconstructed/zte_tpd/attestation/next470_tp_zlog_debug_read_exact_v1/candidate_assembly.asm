
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252fc <tp_zlog_debug_read>:
   252fc: d503233f     	paciasp
   25300: d10143ff     	sub	sp, sp, #0x50
   25304: a9047bfd     	stp	x29, x30, [sp, #0x40]
   25308: 910103fd     	add	x29, sp, #0x40
   2530c: d5384109     	mrs	x9, SP_EL0
   25310: aa1f03e0     	mov	x0, xzr
   25314: f9438929     	ldr	x9, [x9, #0x710]
   25318: f81f83a9     	stur	x9, [x29, #-0x8]
   2531c: f9400069     	ldr	x9, [x3]
   25320: f802a3ff     	stur	xzr, [sp, #0x2a]
   25324: f80243ff     	stur	xzr, [sp, #0x24]
   25328: f801c3ff     	stur	xzr, [sp, #0x1c]
   2532c: f80143ff     	stur	xzr, [sp, #0x14]
   25330: f800c3ff     	stur	xzr, [sp, #0xc]
   25334: b50001e9     	cbnz	x9, 0x25370 <tp_zlog_debug_read+0x74>
   25338: 9000000a     	adrp	x10, 0x25000 <get_fake_sleep+0x94>
		0000000000025338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124aa
   2533c: 9100014a     	add	x10, x10, #0x0
		000000000002533c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124aa
   25340: aa0303e8     	mov	x8, x3
   25344: 528e6ea9     	mov	w9, #0x7375             // =29557
   25348: f940014a     	ldr	x10, [x10]
   2534c: 910003e3     	mov	x3, sp
   25350: 72a00ca9     	movk	w9, #0x65, lsl #16
   25354: aa0103e0     	mov	x0, x1
   25358: aa0203e1     	mov	x1, x2
   2535c: aa0803e2     	mov	x2, x8
   25360: 52800164     	mov	w4, #0xb                // =11
   25364: b9000be9     	str	w9, [sp, #0x8]
   25368: f90003ea     	str	x10, [sp]
   2536c: 94000000     	bl	0x2536c <tp_zlog_debug_read+0x70>
		000000000002536c:  R_AARCH64_CALL26	simple_read_from_buffer
   25370: d5384108     	mrs	x8, SP_EL0
   25374: f9438908     	ldr	x8, [x8, #0x710]
   25378: f85f83a9     	ldur	x9, [x29, #-0x8]
   2537c: eb09011f     	cmp	x8, x9
   25380: 540000a1     	b.ne	0x25394 <tp_zlog_debug_read+0x98>
   25384: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   25388: 910143ff     	add	sp, sp, #0x50
   2538c: d50323bf     	autiasp
   25390: d65f03c0     	ret
   25394: 94000000     	bl	0x25394 <tp_zlog_debug_read+0x98>
		0000000000025394:  R_AARCH64_CALL26	__stack_chk_fail
