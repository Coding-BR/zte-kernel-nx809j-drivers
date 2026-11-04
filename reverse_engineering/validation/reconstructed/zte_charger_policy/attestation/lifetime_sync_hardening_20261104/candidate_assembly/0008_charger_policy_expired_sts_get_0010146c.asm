
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001470 <charger_policy_expired_sts_get>:
    1470: b4000141     	cbz	x1, 0x1498 <charger_policy_expired_sts_get+0x28>
    1474: 39486c28     	ldrb	w8, [x1, #0x21b]
    1478: 7100051f     	cmp	w8, #0x1
    147c: 54000061     	b.ne	0x1488 <charger_policy_expired_sts_get+0x18>
    1480: 52800628     	mov	w8, #0x31               // =49
    1484: 14000002     	b	0x148c <charger_policy_expired_sts_get+0x1c>
    1488: 52800608     	mov	w8, #0x30               // =48
    148c: 79000008     	strh	w8, [x0]
    1490: 52800020     	mov	w0, #0x1                // =1
    1494: d65f03c0     	ret
    1498: d503233f     	paciasp
    149c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    14a0: f9000bf3     	str	x19, [sp, #0x10]
    14a4: 910003fd     	mov	x29, sp
    14a8: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000014a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    14ac: 91000108     	add	x8, x8, #0x0
		00000000000014ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    14b0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000014b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e0
    14b4: 91000021     	add	x1, x1, #0x0
		00000000000014b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e0
    14b8: aa0003f3     	mov	x19, x0
    14bc: aa0803e0     	mov	x0, x8
    14c0: 94000000     	bl	0x14c0 <charger_policy_expired_sts_get+0x50>
		00000000000014c0:  R_AARCH64_CALL26	_printk
    14c4: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000014c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    14c8: 91000129     	add	x9, x9, #0x0
		00000000000014c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    14cc: 528d8ea8     	mov	w8, #0x6c75             // =27765
    14d0: f9400129     	ldr	x9, [x9]
    14d4: 72a00d88     	movk	w8, #0x6c, lsl #16
    14d8: b9000a68     	str	w8, [x19, #0x8]
    14dc: f9000269     	str	x9, [x19]
    14e0: 52800160     	mov	w0, #0xb                // =11
    14e4: f9400bf3     	ldr	x19, [sp, #0x10]
    14e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    14ec: d50323bf     	autiasp
    14f0: d65f03c0     	ret
