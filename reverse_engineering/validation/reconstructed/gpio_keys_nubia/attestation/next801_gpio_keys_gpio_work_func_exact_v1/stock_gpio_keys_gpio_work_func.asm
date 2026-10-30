
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001104 <gpio_keys_gpio_work_func>:
    1104: d503233f     	paciasp
    1108: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    110c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1110: 910003fd     	mov	x29, sp
    1114: aa0003f3     	mov	x19, x0
    1118: d1014014     	sub	x20, x0, #0x50
    111c: 91020000     	add	x0, x0, #0x80
    1120: 94000000     	bl	0x1120 <gpio_keys_gpio_work_func+0x1c>
		0000000000001120:  R_AARCH64_CALL26	mutex_lock
    1124: aa1403e0     	mov	x0, x20
    1128: 97ffff91     	bl	0xf6c <gpio_keys_gpio_report_event>
    112c: f85b0268     	ldur	x8, [x19, #-0x50]
    1130: b9401d08     	ldr	w8, [x8, #0x1c]
    1134: 34000088     	cbz	w8, 0x1144 <gpio_keys_gpio_work_func+0x40>
    1138: f85b8268     	ldur	x8, [x19, #-0x48]
    113c: f9414900     	ldr	x0, [x8, #0x290]
    1140: 94000000     	bl	0x1140 <gpio_keys_gpio_work_func+0x3c>
		0000000000001140:  R_AARCH64_CALL26	pm_relax
    1144: 91020260     	add	x0, x19, #0x80
    1148: 94000000     	bl	0x1148 <gpio_keys_gpio_work_func+0x44>
		0000000000001148:  R_AARCH64_CALL26	mutex_unlock
    114c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1150: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1154: d50323bf     	autiasp
    1158: d65f03c0     	ret
