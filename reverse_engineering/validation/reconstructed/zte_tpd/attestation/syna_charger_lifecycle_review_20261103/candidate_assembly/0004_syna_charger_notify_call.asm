
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a8c0 <syna_charger_notify_call>:
    a8c0: b4000061     	cbz	x1, 0xa8cc <syna_charger_notify_call+0xc>
    a8c4: 2a1f03e0     	mov	w0, wzr
    a8c8: d65f03c0     	ret
    a8cc: d503233f     	paciasp
    a8d0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a8d4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a8d8: 910003fd     	mov	x29, sp
    a8dc: f9400048     	ldr	x8, [x2]
    a8e0: aa0003f3     	mov	x19, x0
    a8e4: 90000001     	adrp	x1, 0xa000 <device_read+0x98>
		000000000000a8e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177ab
    a8e8: 91000021     	add	x1, x1, #0x0
		000000000000a8e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177ab
    a8ec: f9400114     	ldr	x20, [x8]
    a8f0: aa1403e0     	mov	x0, x20
    a8f4: 94000000     	bl	0xa8f4 <syna_charger_notify_call+0x34>
		000000000000a8f4:  R_AARCH64_CALL26	strcmp
    a8f8: 34000120     	cbz	w0, 0xa91c <syna_charger_notify_call+0x5c>
    a8fc: 39400288     	ldrb	w8, [x20]
    a900: 7101851f     	cmp	w8, #0x61
    a904: 54000161     	b.ne	0xa930 <syna_charger_notify_call+0x70>
    a908: 39400688     	ldrb	w8, [x20, #0x1]
    a90c: 71018d1f     	cmp	w8, #0x63
    a910: 54000101     	b.ne	0xa930 <syna_charger_notify_call+0x70>
    a914: 39400a88     	ldrb	w8, [x20, #0x2]
    a918: 350000c8     	cbnz	w8, 0xa930 <syna_charger_notify_call+0x70>
    a91c: f85f8261     	ldur	x1, [x19, #-0x8]
    a920: d101c262     	sub	x2, x19, #0x70
    a924: 52800400     	mov	w0, #0x20               // =32
    a928: 52800fa3     	mov	w3, #0x7d               // =125
    a92c: 94000000     	bl	0xa92c <syna_charger_notify_call+0x6c>
		000000000000a92c:  R_AARCH64_CALL26	queue_delayed_work_on
    a930: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a934: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a938: d50323bf     	autiasp
    a93c: 2a1f03e0     	mov	w0, wzr
    a940: d65f03c0     	ret
