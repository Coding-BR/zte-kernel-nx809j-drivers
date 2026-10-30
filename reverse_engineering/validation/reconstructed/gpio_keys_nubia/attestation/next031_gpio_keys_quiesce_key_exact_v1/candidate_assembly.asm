
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001090 <gpio_keys_quiesce_key>:
    1090: d503233f     	paciasp
    1094: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1098: 910003fd     	mov	x29, sp
    109c: f9400808     	ldr	x8, [x0, #0x10]
    10a0: b4000088     	cbz	x8, 0x10b0 <gpio_keys_quiesce_key+0x20>
    10a4: 91014000     	add	x0, x0, #0x50
    10a8: 94000000     	bl	0x10a8 <gpio_keys_quiesce_key+0x18>
		00000000000010a8:  R_AARCH64_CALL26	cancel_delayed_work_sync
    10ac: 14000003     	b	0x10b8 <gpio_keys_quiesce_key+0x28>
    10b0: 91008000     	add	x0, x0, #0x20
    10b4: 94000000     	bl	0x10b4 <gpio_keys_quiesce_key+0x24>
		00000000000010b4:  R_AARCH64_CALL26	timer_delete_sync
    10b8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    10bc: d50323bf     	autiasp
    10c0: d65f03c0     	ret
