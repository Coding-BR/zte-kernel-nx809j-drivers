
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000110c <gpio_keys_gpio_work_func>:
    110c: d503233f     	paciasp
    1110: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1114: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1118: 910003fd     	mov	x29, sp
    111c: aa0003f3     	mov	x19, x0
    1120: d1014014     	sub	x20, x0, #0x50
    1124: 91020000     	add	x0, x0, #0x80
    1128: 94000000     	bl	0x1128 <gpio_keys_gpio_work_func+0x1c>
		0000000000001128:  R_AARCH64_CALL26	mutex_lock
    112c: aa1403e0     	mov	x0, x20
    1130: 97ffff91     	bl	0xf74 <gpio_keys_gpio_report_event>
    1134: f85b0268     	ldur	x8, [x19, #-0x50]
    1138: b9401d08     	ldr	w8, [x8, #0x1c]
    113c: 34000088     	cbz	w8, 0x114c <gpio_keys_gpio_work_func+0x40>
    1140: f85b8268     	ldur	x8, [x19, #-0x48]
    1144: f9414900     	ldr	x0, [x8, #0x290]
    1148: 94000000     	bl	0x1148 <gpio_keys_gpio_work_func+0x3c>
		0000000000001148:  R_AARCH64_CALL26	pm_relax
    114c: 91020260     	add	x0, x19, #0x80
    1150: 94000000     	bl	0x1150 <gpio_keys_gpio_work_func+0x44>
		0000000000001150:  R_AARCH64_CALL26	mutex_unlock
    1154: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1158: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    115c: d50323bf     	autiasp
    1160: d65f03c0     	ret
