
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010b8 <gpio_keys_gpio_work_func>:
    10b8: d503233f     	paciasp
    10bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    10c0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    10c4: 910003fd     	mov	x29, sp
    10c8: aa0003f3     	mov	x19, x0
    10cc: d1014014     	sub	x20, x0, #0x50
    10d0: 91020000     	add	x0, x0, #0x80
    10d4: 94000000     	bl	0x10d4 <gpio_keys_gpio_work_func+0x1c>
		00000000000010d4:  R_AARCH64_CALL26	mutex_lock
    10d8: aa1403e0     	mov	x0, x20
    10dc: 97ffff91     	bl	0xf20 <gpio_keys_gpio_report_event>
    10e0: f85b0268     	ldur	x8, [x19, #-0x50]
    10e4: b9401d08     	ldr	w8, [x8, #0x1c]
    10e8: 34000088     	cbz	w8, 0x10f8 <gpio_keys_gpio_work_func+0x40>
    10ec: f85b8268     	ldur	x8, [x19, #-0x48]
    10f0: f9414900     	ldr	x0, [x8, #0x290]
    10f4: 94000000     	bl	0x10f4 <gpio_keys_gpio_work_func+0x3c>
		00000000000010f4:  R_AARCH64_CALL26	pm_relax
    10f8: 91020260     	add	x0, x19, #0x80
    10fc: 94000000     	bl	0x10fc <gpio_keys_gpio_work_func+0x44>
		00000000000010fc:  R_AARCH64_CALL26	mutex_unlock
    1100: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1104: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1108: d50323bf     	autiasp
    110c: d65f03c0     	ret
