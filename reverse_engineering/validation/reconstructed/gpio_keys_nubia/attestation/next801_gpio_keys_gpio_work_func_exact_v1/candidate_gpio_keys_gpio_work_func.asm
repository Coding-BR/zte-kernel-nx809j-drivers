
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000033c <gpio_keys_gpio_work_func>:
     33c: d503233f     	paciasp
     340: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     344: a9014ff4     	stp	x20, x19, [sp, #0x10]
     348: 910003fd     	mov	x29, sp
     34c: aa0003f3     	mov	x19, x0
     350: d1014014     	sub	x20, x0, #0x50
     354: 91020000     	add	x0, x0, #0x80
     358: 94000000     	bl	0x358 <gpio_keys_gpio_work_func+0x1c>
		0000000000000358:  R_AARCH64_CALL26	mutex_lock
     35c: aa1403e0     	mov	x0, x20
     360: 97ffff91     	bl	0x1a4 <gpio_keys_gpio_report_event>
     364: f85b0268     	ldur	x8, [x19, #-0x50]
     368: b9401d08     	ldr	w8, [x8, #0x1c]
     36c: 34000088     	cbz	w8, 0x37c <gpio_keys_gpio_work_func+0x40>
     370: f85b8268     	ldur	x8, [x19, #-0x48]
     374: f9414900     	ldr	x0, [x8, #0x290]
     378: 94000000     	bl	0x378 <gpio_keys_gpio_work_func+0x3c>
		0000000000000378:  R_AARCH64_CALL26	pm_relax
     37c: 91020260     	add	x0, x19, #0x80
     380: 94000000     	bl	0x380 <gpio_keys_gpio_work_func+0x44>
		0000000000000380:  R_AARCH64_CALL26	mutex_unlock
     384: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     388: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     38c: d50323bf     	autiasp
     390: d65f03c0     	ret
