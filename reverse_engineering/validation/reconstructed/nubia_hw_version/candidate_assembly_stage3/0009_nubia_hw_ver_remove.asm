
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a68 <nubia_hw_ver_remove>:
     a68: d503233f     	paciasp
     a6c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a70: a9014ff4     	stp	x20, x19, [sp, #0x10]
     a74: 910003fd     	mov	x29, sp
     a78: f9405413     	ldr	x19, [x0, #0xa8]
     a7c: aa0003f4     	mov	x20, x0
     a80: b4000093     	cbz	x19, 0xa90 <nubia_hw_ver_remove+0x28>
     a84: f9400260     	ldr	x0, [x19]
     a88: b4000040     	cbz	x0, 0xa90 <nubia_hw_ver_remove+0x28>
     a8c: 94000000     	bl	0xa8c <nubia_hw_ver_remove+0x24>
		0000000000000a8c:  R_AARCH64_CALL26	devm_pinctrl_put
     a90: 91004280     	add	x0, x20, #0x10
     a94: aa1303e1     	mov	x1, x19
     a98: 94000000     	bl	0xa98 <nubia_hw_ver_remove+0x30>
		0000000000000a98:  R_AARCH64_CALL26	devm_kfree
     a9c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     aa0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     aa4: d50323bf     	autiasp
     aa8: d65f03c0     	ret
