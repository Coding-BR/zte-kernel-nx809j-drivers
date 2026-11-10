
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001104 <gpio_keys_quiesce_key>:
    1104: d503233f     	paciasp
    1108: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    110c: 910003fd     	mov	x29, sp
    1110: f9400808     	ldr	x8, [x0, #0x10]
    1114: b4000088     	cbz	x8, 0x1124 <gpio_keys_quiesce_key+0x20>
    1118: 91014000     	add	x0, x0, #0x50
    111c: 94000000     	bl	0x111c <gpio_keys_quiesce_key+0x18>
		000000000000111c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1120: 14000003     	b	0x112c <gpio_keys_quiesce_key+0x28>
    1124: 91008000     	add	x0, x0, #0x20
    1128: 94000000     	bl	0x1128 <gpio_keys_quiesce_key+0x24>
		0000000000001128:  R_AARCH64_CALL26	timer_delete_sync
    112c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1130: d50323bf     	autiasp
    1134: d65f03c0     	ret
