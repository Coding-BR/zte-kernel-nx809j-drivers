
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001658 <cont_brk_time_store>:
    1658: d503233f     	paciasp
    165c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1660: f9000bf5     	str	x21, [sp, #0x10]
    1664: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1668: 910003fd     	mov	x29, sp
    166c: f9404c15     	ldr	x21, [x0, #0x98]
    1670: aa0203e0     	mov	x0, x2
    1674: 2a1f03e1     	mov	w1, wzr
    1678: aa0303f3     	mov	x19, x3
    167c: 910fd6a2     	add	x2, x21, #0x3f5
    1680: 94000000     	bl	0x1680 <cont_brk_time_store+0x28>
		0000000000001680:  R_AARCH64_CALL26	kstrtou8
    1684: 37f80180     	tbnz	w0, #0x1f, 0x16b4 <cont_brk_time_store+0x5c>
    1688: 910922a0     	add	x0, x21, #0x248
    168c: d102a2b4     	sub	x20, x21, #0xa8
    1690: 94000000     	bl	0x1690 <cont_brk_time_store+0x38>
		0000000000001690:  R_AARCH64_CALL26	mutex_lock
    1694: 910fd6a2     	add	x2, x21, #0x3f5
    1698: aa1403e0     	mov	x0, x20
    169c: 52800421     	mov	w1, #0x21               // =33
    16a0: 52800023     	mov	w3, #0x1                // =1
    16a4: 94000000     	bl	0x16a4 <cont_brk_time_store+0x4c>
		00000000000016a4:  R_AARCH64_CALL26	i2c_w_bytes
    16a8: 910922a0     	add	x0, x21, #0x248
    16ac: 94000000     	bl	0x16ac <cont_brk_time_store+0x54>
		00000000000016ac:  R_AARCH64_CALL26	mutex_unlock
    16b0: 14000002     	b	0x16b8 <cont_brk_time_store+0x60>
    16b4: 93407c13     	sxtw	x19, w0
    16b8: aa1303e0     	mov	x0, x19
    16bc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    16c0: f9400bf5     	ldr	x21, [sp, #0x10]
    16c4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    16c8: d50323bf     	autiasp
    16cc: d65f03c0     	ret
