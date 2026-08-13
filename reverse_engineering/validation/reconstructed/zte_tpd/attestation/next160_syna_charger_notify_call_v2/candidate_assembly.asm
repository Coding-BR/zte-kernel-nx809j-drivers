
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007a28 <syna_charger_notify_call>:
    7a28: b4000061     	cbz	x1, 0x7a34 <syna_charger_notify_call+0xc>
    7a2c: 2a1f03e0     	mov	w0, wzr
    7a30: d65f03c0     	ret
    7a34: d503233f     	paciasp
    7a38: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7a3c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7a40: 910003fd     	mov	x29, sp
    7a44: f9400048     	ldr	x8, [x2]
    7a48: aa0003f3     	mov	x19, x0
    7a4c: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x757
    7a50: 91000021     	add	x1, x1, #0x0
		0000000000007a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x757
    7a54: f9400114     	ldr	x20, [x8]
    7a58: aa1403e0     	mov	x0, x20
    7a5c: 94000000     	bl	0x7a5c <syna_charger_notify_call+0x34>
		0000000000007a5c:  R_AARCH64_CALL26	strcmp
    7a60: 34000120     	cbz	w0, 0x7a84 <syna_charger_notify_call+0x5c>
    7a64: 39400288     	ldrb	w8, [x20]
    7a68: 7101851f     	cmp	w8, #0x61
    7a6c: 54000161     	b.ne	0x7a98 <syna_charger_notify_call+0x70>
    7a70: 39400688     	ldrb	w8, [x20, #0x1]
    7a74: 71018d1f     	cmp	w8, #0x63
    7a78: 54000101     	b.ne	0x7a98 <syna_charger_notify_call+0x70>
    7a7c: 39400a88     	ldrb	w8, [x20, #0x2]
    7a80: 350000c8     	cbnz	w8, 0x7a98 <syna_charger_notify_call+0x70>
    7a84: f85f8261     	ldur	x1, [x19, #-0x8]
    7a88: d101c262     	sub	x2, x19, #0x70
    7a8c: 52800400     	mov	w0, #0x20               // =32
    7a90: 52800fa3     	mov	w3, #0x7d               // =125
    7a94: 94000000     	bl	0x7a94 <syna_charger_notify_call+0x6c>
		0000000000007a94:  R_AARCH64_CALL26	queue_delayed_work_on
    7a98: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7a9c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7aa0: d50323bf     	autiasp
    7aa4: 2a1f03e0     	mov	w0, wzr
    7aa8: d65f03c0     	ret
