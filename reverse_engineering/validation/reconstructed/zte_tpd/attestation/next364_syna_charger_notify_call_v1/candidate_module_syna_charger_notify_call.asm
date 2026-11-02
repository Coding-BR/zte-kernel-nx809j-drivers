
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000079d8 <syna_charger_notify_call>:
    79d8: b4000061     	cbz	x1, 0x79e4 <syna_charger_notify_call+0xc>
    79dc: 2a1f03e0     	mov	w0, wzr
    79e0: d65f03c0     	ret
    79e4: d503233f     	paciasp
    79e8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    79ec: a9014ff4     	stp	x20, x19, [sp, #0x10]
    79f0: 910003fd     	mov	x29, sp
    79f4: f9400048     	ldr	x8, [x2]
    79f8: aa0003f3     	mov	x19, x0
    79fc: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x1d8>
		00000000000079fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x757
    7a00: 91000021     	add	x1, x1, #0x0
		0000000000007a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x757
    7a04: f9400114     	ldr	x20, [x8]
    7a08: aa1403e0     	mov	x0, x20
    7a0c: 94000000     	bl	0x7a0c <syna_charger_notify_call+0x34>
		0000000000007a0c:  R_AARCH64_CALL26	strcmp
    7a10: 34000120     	cbz	w0, 0x7a34 <syna_charger_notify_call+0x5c>
    7a14: 39400288     	ldrb	w8, [x20]
    7a18: 7101851f     	cmp	w8, #0x61
    7a1c: 54000161     	b.ne	0x7a48 <syna_charger_notify_call+0x70>
    7a20: 39400688     	ldrb	w8, [x20, #0x1]
    7a24: 71018d1f     	cmp	w8, #0x63
    7a28: 54000101     	b.ne	0x7a48 <syna_charger_notify_call+0x70>
    7a2c: 39400a88     	ldrb	w8, [x20, #0x2]
    7a30: 350000c8     	cbnz	w8, 0x7a48 <syna_charger_notify_call+0x70>
    7a34: f85f8261     	ldur	x1, [x19, #-0x8]
    7a38: d101c262     	sub	x2, x19, #0x70
    7a3c: 52800400     	mov	w0, #0x20               // =32
    7a40: 52800fa3     	mov	w3, #0x7d               // =125
    7a44: 94000000     	bl	0x7a44 <syna_charger_notify_call+0x6c>
		0000000000007a44:  R_AARCH64_CALL26	queue_delayed_work_on
    7a48: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7a4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7a50: d50323bf     	autiasp
    7a54: 2a1f03e0     	mov	w0, wzr
    7a58: d65f03c0     	ret
