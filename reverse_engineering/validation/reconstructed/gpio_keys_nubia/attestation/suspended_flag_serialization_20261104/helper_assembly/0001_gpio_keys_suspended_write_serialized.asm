
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f98 <gpio_keys_suspended_write_serialized>:
    1f98: d503233f     	paciasp
    1f9c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1fa0: f9000bf5     	str	x21, [sp, #0x10]
    1fa4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1fa8: 910003fd     	mov	x29, sp
    1fac: d1001815     	sub	x21, x0, #0x6
    1fb0: aa0003f4     	mov	x20, x0
    1fb4: 2a0103f3     	mov	w19, w1
    1fb8: aa1503e0     	mov	x0, x21
    1fbc: 94000000     	bl	0x1fbc <gpio_keys_suspended_write_serialized+0x24>
		0000000000001fbc:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    1fc0: aa0003e1     	mov	x1, x0
    1fc4: aa1503e0     	mov	x0, x21
    1fc8: 39000293     	strb	w19, [x20]
    1fcc: 94000000     	bl	0x1fcc <gpio_keys_suspended_write_serialized+0x34>
		0000000000001fcc:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1fd0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1fd4: f9400bf5     	ldr	x21, [sp, #0x10]
    1fd8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1fdc: d50323bf     	autiasp
    1fe0: d65f03c0     	ret
