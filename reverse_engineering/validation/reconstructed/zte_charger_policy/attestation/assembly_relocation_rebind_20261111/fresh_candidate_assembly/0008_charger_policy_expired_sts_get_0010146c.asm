
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001480 <charger_policy_expired_sts_get>:
    1480: b4000141     	cbz	x1, 0x14a8 <charger_policy_expired_sts_get+0x28>
    1484: 39486c28     	ldrb	w8, [x1, #0x21b]
    1488: 7100051f     	cmp	w8, #0x1
    148c: 54000061     	b.ne	0x1498 <charger_policy_expired_sts_get+0x18>
    1490: 52800628     	mov	w8, #0x31               // =49
    1494: 14000002     	b	0x149c <charger_policy_expired_sts_get+0x1c>
    1498: 52800608     	mov	w8, #0x30               // =48
    149c: 79000008     	strh	w8, [x0]
    14a0: 52800020     	mov	w0, #0x1                // =1
    14a4: d65f03c0     	ret
    14a8: d503233f     	paciasp
    14ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    14b0: f9000bf3     	str	x19, [sp, #0x10]
    14b4: 910003fd     	mov	x29, sp
    14b8: 90000008     	adrp	x8, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000014b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    14bc: 91000108     	add	x8, x8, #0x0
		00000000000014bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    14c0: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000014c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e0
    14c4: 91000021     	add	x1, x1, #0x0
		00000000000014c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e0
    14c8: aa0003f3     	mov	x19, x0
    14cc: aa0803e0     	mov	x0, x8
    14d0: 94000000     	bl	0x14d0 <charger_policy_expired_sts_get+0x50>
		00000000000014d0:  R_AARCH64_CALL26	_printk
    14d4: 90000009     	adrp	x9, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000014d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
    14d8: 91000129     	add	x9, x9, #0x0
		00000000000014d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
    14dc: 528d8ea8     	mov	w8, #0x6c75             // =27765
    14e0: f9400129     	ldr	x9, [x9]
    14e4: 72a00d88     	movk	w8, #0x6c, lsl #16
    14e8: b9000a68     	str	w8, [x19, #0x8]
    14ec: f9000269     	str	x9, [x19]
    14f0: 52800160     	mov	w0, #0xb                // =11
    14f4: f9400bf3     	ldr	x19, [sp, #0x10]
    14f8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    14fc: d50323bf     	autiasp
    1500: d65f03c0     	ret
