
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000988 <nubia_hw_ver_remove>:
     988: d503233f     	paciasp
     98c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     990: a9014ff4     	stp	x20, x19, [sp, #0x10]
     994: 910003fd     	mov	x29, sp
     998: f9405413     	ldr	x19, [x0, #0xa8]
     99c: aa0003f4     	mov	x20, x0
     9a0: b4000093     	cbz	x19, 0x9b0 <nubia_hw_ver_remove+0x28>
     9a4: f9400260     	ldr	x0, [x19]
     9a8: b4000040     	cbz	x0, 0x9b0 <nubia_hw_ver_remove+0x28>
     9ac: 94000000     	bl	0x9ac <nubia_hw_ver_remove+0x24>
		00000000000009ac:  R_AARCH64_CALL26	devm_pinctrl_put
     9b0: 91004280     	add	x0, x20, #0x10
     9b4: aa1303e1     	mov	x1, x19
     9b8: 94000000     	bl	0x9b8 <nubia_hw_ver_remove+0x30>
		00000000000009b8:  R_AARCH64_CALL26	devm_kfree
     9bc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     9c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     9c4: d50323bf     	autiasp
     9c8: d65f03c0     	ret
