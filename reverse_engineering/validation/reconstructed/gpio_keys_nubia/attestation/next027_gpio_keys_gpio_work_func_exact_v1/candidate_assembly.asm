
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000de0 <gpio_keys_gpio_work_func>:
     de0: d503233f     	paciasp
     de4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     de8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     dec: 910003fd     	mov	x29, sp
     df0: aa0003f3     	mov	x19, x0
     df4: d1014014     	sub	x20, x0, #0x50
     df8: 91020000     	add	x0, x0, #0x80
     dfc: 94000000     	bl	0xdfc <gpio_keys_gpio_work_func+0x1c>
		0000000000000dfc:  R_AARCH64_CALL26	mutex_lock
     e00: aa1403e0     	mov	x0, x20
     e04: 97ffff91     	bl	0xc48 <gpio_keys_gpio_report_event>
     e08: f85b0268     	ldur	x8, [x19, #-0x50]
     e0c: b9401d08     	ldr	w8, [x8, #0x1c]
     e10: 34000088     	cbz	w8, 0xe20 <gpio_keys_gpio_work_func+0x40>
     e14: f85b8268     	ldur	x8, [x19, #-0x48]
     e18: f9414900     	ldr	x0, [x8, #0x290]
     e1c: 94000000     	bl	0xe1c <gpio_keys_gpio_work_func+0x3c>
		0000000000000e1c:  R_AARCH64_CALL26	pm_relax
     e20: 91020260     	add	x0, x19, #0x80
     e24: 94000000     	bl	0xe24 <gpio_keys_gpio_work_func+0x44>
		0000000000000e24:  R_AARCH64_CALL26	mutex_unlock
     e28: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e2c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e30: d50323bf     	autiasp
     e34: d65f03c0     	ret
