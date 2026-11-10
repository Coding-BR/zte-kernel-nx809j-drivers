
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e44 <gpio_keys_gpio_work_func>:
     e44: d503233f     	paciasp
     e48: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e4c: a9014ff4     	stp	x20, x19, [sp, #0x10]
     e50: 910003fd     	mov	x29, sp
     e54: aa0003f3     	mov	x19, x0
     e58: d1014014     	sub	x20, x0, #0x50
     e5c: 91020000     	add	x0, x0, #0x80
     e60: 94000000     	bl	0xe60 <gpio_keys_gpio_work_func+0x1c>
		0000000000000e60:  R_AARCH64_CALL26	mutex_lock
     e64: aa1403e0     	mov	x0, x20
     e68: 94000000     	bl	0xe68 <gpio_keys_gpio_work_func+0x24>
		0000000000000e68:  R_AARCH64_CALL26	gpio_keys_gpio_report_event
     e6c: f85b0268     	ldur	x8, [x19, #-0x50]
     e70: b9401d08     	ldr	w8, [x8, #0x1c]
     e74: 34000088     	cbz	w8, 0xe84 <gpio_keys_gpio_work_func+0x40>
     e78: f85b8268     	ldur	x8, [x19, #-0x48]
     e7c: f9414900     	ldr	x0, [x8, #0x290]
     e80: 94000000     	bl	0xe80 <gpio_keys_gpio_work_func+0x3c>
		0000000000000e80:  R_AARCH64_CALL26	pm_relax
     e84: 91020260     	add	x0, x19, #0x80
     e88: 94000000     	bl	0xe88 <gpio_keys_gpio_work_func+0x44>
		0000000000000e88:  R_AARCH64_CALL26	mutex_unlock
     e8c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e90: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e94: d50323bf     	autiasp
     e98: d65f03c0     	ret
