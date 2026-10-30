
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007a44 <syna_charger_notify_call>:
    7a44: b4000061     	cbz	x1, 0x7a50 <syna_charger_notify_call+0xc>
    7a48: 2a1f03e0     	mov	w0, wzr
    7a4c: d65f03c0     	ret
    7a50: d503233f     	paciasp
    7a54: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7a58: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7a5c: 910003fd     	mov	x29, sp
    7a60: f9400048     	ldr	x8, [x2]
    7a64: aa0003f3     	mov	x19, x0
    7a68: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x16c>
		0000000000007a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58d
    7a6c: 91000021     	add	x1, x1, #0x0
		0000000000007a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58d
    7a70: f9400114     	ldr	x20, [x8]
    7a74: aa1403e0     	mov	x0, x20
    7a78: 94000000     	bl	0x7a78 <syna_charger_notify_call+0x34>
		0000000000007a78:  R_AARCH64_CALL26	strcmp
    7a7c: 34000120     	cbz	w0, 0x7aa0 <syna_charger_notify_call+0x5c>
    7a80: 39400288     	ldrb	w8, [x20]
    7a84: 7101851f     	cmp	w8, #0x61
    7a88: 54000161     	b.ne	0x7ab4 <syna_charger_notify_call+0x70>
    7a8c: 39400688     	ldrb	w8, [x20, #0x1]
    7a90: 71018d1f     	cmp	w8, #0x63
    7a94: 54000101     	b.ne	0x7ab4 <syna_charger_notify_call+0x70>
    7a98: 39400a88     	ldrb	w8, [x20, #0x2]
    7a9c: 350000c8     	cbnz	w8, 0x7ab4 <syna_charger_notify_call+0x70>
    7aa0: f85f8261     	ldur	x1, [x19, #-0x8]
    7aa4: d101c262     	sub	x2, x19, #0x70
    7aa8: 52800400     	mov	w0, #0x20               // =32
    7aac: 52800fa3     	mov	w3, #0x7d               // =125
    7ab0: 94000000     	bl	0x7ab0 <syna_charger_notify_call+0x6c>
		0000000000007ab0:  R_AARCH64_CALL26	queue_delayed_work_on
    7ab4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7ab8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7abc: d50323bf     	autiasp
    7ac0: 2a1f03e0     	mov	w0, wzr
    7ac4: d65f03c0     	ret
