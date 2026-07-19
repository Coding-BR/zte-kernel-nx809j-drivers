
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007cd0 <syna_charger_notify_call>:
    7cd0: b4000061     	cbz	x1, 0x7cdc <syna_charger_notify_call+0xc>
    7cd4: 2a1f03e0     	mov	w0, wzr
    7cd8: d65f03c0     	ret
    7cdc: d503233f     	paciasp
    7ce0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7ce4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7ce8: 910003fd     	mov	x29, sp
    7cec: f9400048     	ldr	x8, [x2]
    7cf0: aa0003f3     	mov	x19, x0
    7cf4: 90000001     	adrp	x1, 0x7000 <syna_cdev_open+0x88>
		0000000000007cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e3
    7cf8: 91000021     	add	x1, x1, #0x0
		0000000000007cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e3
    7cfc: f9400114     	ldr	x20, [x8]
    7d00: aa1403e0     	mov	x0, x20
    7d04: 94000000     	bl	0x7d04 <syna_charger_notify_call+0x34>
		0000000000007d04:  R_AARCH64_CALL26	strcmp
    7d08: 34000120     	cbz	w0, 0x7d2c <syna_charger_notify_call+0x5c>
    7d0c: 39400288     	ldrb	w8, [x20]
    7d10: 7101851f     	cmp	w8, #0x61
    7d14: 54000161     	b.ne	0x7d40 <syna_charger_notify_call+0x70>
    7d18: 39400688     	ldrb	w8, [x20, #0x1]
    7d1c: 71018d1f     	cmp	w8, #0x63
    7d20: 54000101     	b.ne	0x7d40 <syna_charger_notify_call+0x70>
    7d24: 39400a88     	ldrb	w8, [x20, #0x2]
    7d28: 350000c8     	cbnz	w8, 0x7d40 <syna_charger_notify_call+0x70>
    7d2c: f85f8261     	ldur	x1, [x19, #-0x8]
    7d30: d101c262     	sub	x2, x19, #0x70
    7d34: 52800400     	mov	w0, #0x20               // =32
    7d38: 52800fa3     	mov	w3, #0x7d               // =125
    7d3c: 94000000     	bl	0x7d3c <syna_charger_notify_call+0x6c>
		0000000000007d3c:  R_AARCH64_CALL26	queue_delayed_work_on
    7d40: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7d44: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7d48: d50323bf     	autiasp
    7d4c: 2a1f03e0     	mov	w0, wzr
    7d50: d65f03c0     	ret
