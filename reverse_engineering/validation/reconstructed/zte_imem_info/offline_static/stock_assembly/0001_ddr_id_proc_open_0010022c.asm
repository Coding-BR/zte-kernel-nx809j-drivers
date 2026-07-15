
/input/zte_imem_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000009c <ddr_id_proc_open>:
      9c: d503233f     	paciasp
      a0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      a4: 910003fd     	mov	x29, sp
      a8: aa0103e0     	mov	x0, x1
      ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000ac:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xcc
      b0: 91000021     	add	x1, x1, #0x0
		00000000000000b0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xcc
      b4: aa1f03e2     	mov	x2, xzr
      b8: 94000000     	bl	0xb8 <ddr_id_proc_open+0x1c>
		00000000000000b8:  R_AARCH64_CALL26	single_open
      bc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      c0: d50323bf     	autiasp
      c4: d65f03c0     	ret
