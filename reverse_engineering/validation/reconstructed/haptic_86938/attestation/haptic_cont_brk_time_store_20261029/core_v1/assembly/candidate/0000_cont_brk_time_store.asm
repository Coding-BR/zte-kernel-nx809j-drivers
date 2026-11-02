
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001658 <cont_brk_time_store>:
    1658: d503233f     	paciasp
    165c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1660: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1664: 910003fd     	mov	x29, sp
    1668: f9404c14     	ldr	x20, [x0, #0x98]
    166c: aa0203e0     	mov	x0, x2
    1670: 2a1f03e1     	mov	w1, wzr
    1674: aa0303f3     	mov	x19, x3
    1678: 910fd682     	add	x2, x20, #0x3f5
    167c: 94000000     	bl	0x167c <cont_brk_time_store+0x24>
		000000000000167c:  R_AARCH64_CALL26	kstrtou8
    1680: 37f80160     	tbnz	w0, #0x1f, 0x16ac <cont_brk_time_store+0x54>
    1684: 91092280     	add	x0, x20, #0x248
    1688: 94000000     	bl	0x1688 <cont_brk_time_store+0x30>
		0000000000001688:  R_AARCH64_CALL26	mutex_lock
    168c: d102a280     	sub	x0, x20, #0xa8
    1690: 910fd682     	add	x2, x20, #0x3f5
    1694: 52800421     	mov	w1, #0x21               // =33
    1698: 52800023     	mov	w3, #0x1                // =1
    169c: 94000000     	bl	0x169c <cont_brk_time_store+0x44>
		000000000000169c:  R_AARCH64_CALL26	i2c_w_bytes
    16a0: 91092280     	add	x0, x20, #0x248
    16a4: 94000000     	bl	0x16a4 <cont_brk_time_store+0x4c>
		00000000000016a4:  R_AARCH64_CALL26	mutex_unlock
    16a8: 14000002     	b	0x16b0 <cont_brk_time_store+0x58>
    16ac: 93407c13     	sxtw	x19, w0
    16b0: aa1303e0     	mov	x0, x19
    16b4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    16b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    16bc: d50323bf     	autiasp
    16c0: d65f03c0     	ret
