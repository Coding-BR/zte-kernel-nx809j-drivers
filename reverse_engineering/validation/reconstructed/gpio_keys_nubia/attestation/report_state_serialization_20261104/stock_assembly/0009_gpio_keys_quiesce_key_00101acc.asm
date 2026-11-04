
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013b4 <gpio_keys_quiesce_key>:
    13b4: d503233f     	paciasp
    13b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    13bc: 910003fd     	mov	x29, sp
    13c0: f9400808     	ldr	x8, [x0, #0x10]
    13c4: b4000088     	cbz	x8, 0x13d4 <gpio_keys_quiesce_key+0x20>
    13c8: 91014000     	add	x0, x0, #0x50
    13cc: 94000000     	bl	0x13cc <gpio_keys_quiesce_key+0x18>
		00000000000013cc:  R_AARCH64_CALL26	cancel_delayed_work_sync
    13d0: 14000003     	b	0x13dc <gpio_keys_quiesce_key+0x28>
    13d4: 91008000     	add	x0, x0, #0x20
    13d8: 94000000     	bl	0x13d8 <gpio_keys_quiesce_key+0x24>
		00000000000013d8:  R_AARCH64_CALL26	timer_delete_sync
    13dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    13e0: d50323bf     	autiasp
    13e4: d65f03c0     	ret
