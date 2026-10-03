
/out/tpd_test_cmd_show.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_test_cmd_show>:
       0: d503233f     	paciasp
       4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       8: f9000bf3     	str	x19, [sp, #0x10]
       c: 90000000     	adrp	x0, 0x0 <tpd_test_cmd_show>
      10: aa0103f3     	mov	x19, x1
      14: f9400000     	ldr	x0, [x0]
      18: 90000001     	adrp	x1, 0x0 <tpd_test_cmd_show>
      1c: 91000021     	add	x1, x1, #0x0
      20: 910003fd     	mov	x29, sp
      24: 94000000     	bl	0x24 <tpd_test_cmd_show+0x24>
      28: 90000002     	adrp	x2, 0x0 <tpd_test_cmd_show>
      2c: 91000042     	add	x2, x2, #0x0
      30: aa1303e0     	mov	x0, x19
      34: 52820001     	mov	w1, #0x1000             // =4096
      38: 2a1f03e3     	mov	w3, wzr
      3c: 52800204     	mov	w4, #0x10               // =16
      40: 528004a5     	mov	w5, #0x25               // =37
      44: 2a1f03e6     	mov	w6, wzr
      48: 94000000     	bl	0x48 <tpd_test_cmd_show+0x48>
      4c: f9400bf3     	ldr	x19, [sp, #0x10]
      50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      54: d50323bf     	autiasp
      58: d65f03c0     	ret
