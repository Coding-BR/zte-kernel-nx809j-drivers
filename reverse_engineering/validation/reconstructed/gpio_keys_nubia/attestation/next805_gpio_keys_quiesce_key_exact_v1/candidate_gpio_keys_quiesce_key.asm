
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005ec <gpio_keys_quiesce_key>:
     5ec: d503233f     	paciasp
     5f0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     5f4: 910003fd     	mov	x29, sp
     5f8: f9400808     	ldr	x8, [x0, #0x10]
     5fc: b4000088     	cbz	x8, 0x60c <gpio_keys_quiesce_key+0x20>
     600: 91014000     	add	x0, x0, #0x50
     604: 94000000     	bl	0x604 <gpio_keys_quiesce_key+0x18>
		0000000000000604:  R_AARCH64_CALL26	cancel_delayed_work_sync
     608: 14000003     	b	0x614 <gpio_keys_quiesce_key+0x28>
     60c: 91008000     	add	x0, x0, #0x20
     610: 94000000     	bl	0x610 <gpio_keys_quiesce_key+0x24>
		0000000000000610:  R_AARCH64_CALL26	timer_delete_sync
     614: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     618: d50323bf     	autiasp
     61c: d65f03c0     	ret
