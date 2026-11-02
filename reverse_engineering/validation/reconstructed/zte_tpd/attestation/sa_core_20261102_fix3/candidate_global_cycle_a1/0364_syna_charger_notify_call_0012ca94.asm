
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009e0c <syna_charger_notify_call>:
    9e0c: b4000061     	cbz	x1, 0x9e18 <syna_charger_notify_call+0xc>
    9e10: 2a1f03e0     	mov	w0, wzr
    9e14: d65f03c0     	ret
    9e18: d503233f     	paciasp
    9e1c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9e20: a9014ff4     	stp	x20, x19, [sp, #0x10]
    9e24: 910003fd     	mov	x29, sp
    9e28: f9400048     	ldr	x8, [x2]
    9e2c: aa0003f3     	mov	x19, x0
    9e30: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177ca
    9e34: 91000021     	add	x1, x1, #0x0
		0000000000009e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177ca
    9e38: f9400114     	ldr	x20, [x8]
    9e3c: aa1403e0     	mov	x0, x20
    9e40: 94000000     	bl	0x9e40 <syna_charger_notify_call+0x34>
		0000000000009e40:  R_AARCH64_CALL26	strcmp
    9e44: 34000120     	cbz	w0, 0x9e68 <syna_charger_notify_call+0x5c>
    9e48: 39400288     	ldrb	w8, [x20]
    9e4c: 7101851f     	cmp	w8, #0x61
    9e50: 54000161     	b.ne	0x9e7c <syna_charger_notify_call+0x70>
    9e54: 39400688     	ldrb	w8, [x20, #0x1]
    9e58: 71018d1f     	cmp	w8, #0x63
    9e5c: 54000101     	b.ne	0x9e7c <syna_charger_notify_call+0x70>
    9e60: 39400a88     	ldrb	w8, [x20, #0x2]
    9e64: 350000c8     	cbnz	w8, 0x9e7c <syna_charger_notify_call+0x70>
    9e68: f85f8261     	ldur	x1, [x19, #-0x8]
    9e6c: d101c262     	sub	x2, x19, #0x70
    9e70: 52800400     	mov	w0, #0x20               // =32
    9e74: 52800fa3     	mov	w3, #0x7d               // =125
    9e78: 94000000     	bl	0x9e78 <syna_charger_notify_call+0x6c>
		0000000000009e78:  R_AARCH64_CALL26	queue_delayed_work_on
    9e7c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    9e80: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9e84: d50323bf     	autiasp
    9e88: 2a1f03e0     	mov	w0, wzr
    9e8c: d65f03c0     	ret
