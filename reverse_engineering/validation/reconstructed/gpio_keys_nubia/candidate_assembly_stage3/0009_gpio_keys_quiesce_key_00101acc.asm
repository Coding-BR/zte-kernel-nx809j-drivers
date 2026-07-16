
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013bc <gpio_keys_quiesce_key>:
    13bc: d503233f     	paciasp
    13c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    13c4: 910003fd     	mov	x29, sp
    13c8: f9400808     	ldr	x8, [x0, #0x10]
    13cc: b4000088     	cbz	x8, 0x13dc <gpio_keys_quiesce_key+0x20>
    13d0: 91014000     	add	x0, x0, #0x50
    13d4: 94000000     	bl	0x13d4 <gpio_keys_quiesce_key+0x18>
		00000000000013d4:  R_AARCH64_CALL26	cancel_delayed_work_sync
    13d8: 14000003     	b	0x13e4 <gpio_keys_quiesce_key+0x28>
    13dc: 91008000     	add	x0, x0, #0x20
    13e0: 94000000     	bl	0x13e0 <gpio_keys_quiesce_key+0x24>
		00000000000013e0:  R_AARCH64_CALL26	timer_delete_sync
    13e4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    13e8: d50323bf     	autiasp
    13ec: d65f03c0     	ret
