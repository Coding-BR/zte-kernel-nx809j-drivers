
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000edc <aw_remove>:
     edc: d503233f     	paciasp
     ee0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ee4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     ee8: 910003fd     	mov	x29, sp
     eec: f9405c13     	ldr	x19, [x0, #0xb8]
     ef0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e
     ef4: 91000000     	add	x0, x0, #0x0
		0000000000000ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e
     ef8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     efc: 91000021     	add	x1, x1, #0x0
		0000000000000efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     f00: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc60
     f04: 91000063     	add	x3, x3, #0x0
		0000000000000f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc60
     f08: 52809042     	mov	w2, #0x482              // =1154
     f0c: 94000000     	bl	0xf0c <aw_remove+0x30>
		0000000000000f0c:  R_AARCH64_CALL26	_printk
     f10: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000f10:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     f14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf86
     f18: 91000000     	add	x0, x0, #0x0
		0000000000000f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf86
     f1c: f9400281     	ldr	x1, [x20]
		0000000000000f1c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     f20: 94000000     	bl	0xf20 <aw_remove+0x44>
		0000000000000f20:  R_AARCH64_CALL26	remove_proc_entry
     f24: f9400281     	ldr	x1, [x20]
		0000000000000f24:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     f28: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x588
     f2c: 91000000     	add	x0, x0, #0x0
		0000000000000f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x588
     f30: 94000000     	bl	0xf30 <aw_remove+0x54>
		0000000000000f30:  R_AARCH64_CALL26	remove_proc_entry
     f34: f9400281     	ldr	x1, [x20]
		0000000000000f34:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     f38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x923
     f3c: 91000000     	add	x0, x0, #0x0
		0000000000000f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x923
     f40: 94000000     	bl	0xf40 <aw_remove+0x64>
		0000000000000f40:  R_AARCH64_CALL26	remove_proc_entry
     f44: f9400281     	ldr	x1, [x20]
		0000000000000f44:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     f48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28a
     f4c: 91000000     	add	x0, x0, #0x0
		0000000000000f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28a
     f50: 94000000     	bl	0xf50 <aw_remove+0x74>
		0000000000000f50:  R_AARCH64_CALL26	remove_proc_entry
     f54: f9400281     	ldr	x1, [x20]
		0000000000000f54:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     f58: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9af
     f5c: 91000000     	add	x0, x0, #0x0
		0000000000000f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9af
     f60: 94000000     	bl	0xf60 <aw_remove+0x84>
		0000000000000f60:  R_AARCH64_CALL26	remove_proc_entry
     f64: f9400281     	ldr	x1, [x20]
		0000000000000f64:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     f68: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e5
     f6c: 91000000     	add	x0, x0, #0x0
		0000000000000f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e5
     f70: 94000000     	bl	0xf70 <aw_remove+0x94>
		0000000000000f70:  R_AARCH64_CALL26	remove_proc_entry
     f74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x279
     f78: 91000000     	add	x0, x0, #0x0
		0000000000000f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x279
     f7c: aa1f03e1     	mov	x1, xzr
     f80: 94000000     	bl	0xf80 <aw_remove+0xa4>
		0000000000000f80:  R_AARCH64_CALL26	remove_proc_entry
     f84: 91098260     	add	x0, x19, #0x260
     f88: 94000000     	bl	0xf88 <aw_remove+0xac>
		0000000000000f88:  R_AARCH64_CALL26	cancel_delayed_work_sync
     f8c: 910b2260     	add	x0, x19, #0x2c8
     f90: 94000000     	bl	0xf90 <aw_remove+0xb4>
		0000000000000f90:  R_AARCH64_CALL26	cancel_delayed_work_sync
     f94: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     f98: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     f9c: d50323bf     	autiasp
     fa0: d65f03c0     	ret
