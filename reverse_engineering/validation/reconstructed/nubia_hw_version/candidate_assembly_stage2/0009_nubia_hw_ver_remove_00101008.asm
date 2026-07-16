
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a40 <nubia_hw_ver_remove>:
     a40: d503233f     	paciasp
     a44: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a48: a9014ff4     	stp	x20, x19, [sp, #0x10]
     a4c: 910003fd     	mov	x29, sp
     a50: f9405413     	ldr	x19, [x0, #0xa8]
     a54: aa0003f4     	mov	x20, x0
     a58: b4000093     	cbz	x19, 0xa68 <nubia_hw_ver_remove+0x28>
     a5c: f9400260     	ldr	x0, [x19]
     a60: b4000040     	cbz	x0, 0xa68 <nubia_hw_ver_remove+0x28>
     a64: 94000000     	bl	0xa64 <nubia_hw_ver_remove+0x24>
		0000000000000a64:  R_AARCH64_CALL26	devm_pinctrl_put
     a68: 91004280     	add	x0, x20, #0x10
     a6c: aa1303e1     	mov	x1, x19
     a70: 94000000     	bl	0xa70 <nubia_hw_ver_remove+0x30>
		0000000000000a70:  R_AARCH64_CALL26	devm_kfree
     a74: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     a78: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a7c: d50323bf     	autiasp
     a80: d65f03c0     	ret
