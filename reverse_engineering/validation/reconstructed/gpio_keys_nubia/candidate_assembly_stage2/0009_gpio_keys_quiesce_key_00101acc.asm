
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001368 <gpio_keys_quiesce_key>:
    1368: d503233f     	paciasp
    136c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1370: 910003fd     	mov	x29, sp
    1374: f9400808     	ldr	x8, [x0, #0x10]
    1378: b4000088     	cbz	x8, 0x1388 <gpio_keys_quiesce_key+0x20>
    137c: 91014000     	add	x0, x0, #0x50
    1380: 94000000     	bl	0x1380 <gpio_keys_quiesce_key+0x18>
		0000000000001380:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1384: 14000003     	b	0x1390 <gpio_keys_quiesce_key+0x28>
    1388: 91008000     	add	x0, x0, #0x20
    138c: 94000000     	bl	0x138c <gpio_keys_quiesce_key+0x24>
		000000000000138c:  R_AARCH64_CALL26	timer_delete_sync
    1390: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1394: d50323bf     	autiasp
    1398: d65f03c0     	ret
