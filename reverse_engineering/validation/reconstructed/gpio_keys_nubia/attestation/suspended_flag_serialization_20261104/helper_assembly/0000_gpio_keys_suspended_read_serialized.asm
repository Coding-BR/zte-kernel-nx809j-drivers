
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f50 <gpio_keys_suspended_read_serialized>:
    1f50: d503233f     	paciasp
    1f54: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1f58: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1f5c: 910003fd     	mov	x29, sp
    1f60: d1001814     	sub	x20, x0, #0x6
    1f64: aa0003f3     	mov	x19, x0
    1f68: aa1403e0     	mov	x0, x20
    1f6c: 94000000     	bl	0x1f6c <gpio_keys_suspended_read_serialized+0x1c>
		0000000000001f6c:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    1f70: 39400273     	ldrb	w19, [x19]
    1f74: aa0003e1     	mov	x1, x0
    1f78: aa1403e0     	mov	x0, x20
    1f7c: 94000000     	bl	0x1f7c <gpio_keys_suspended_read_serialized+0x2c>
		0000000000001f7c:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1f80: 2a1303e0     	mov	w0, w19
    1f84: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1f88: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1f8c: d50323bf     	autiasp
    1f90: d65f03c0     	ret
