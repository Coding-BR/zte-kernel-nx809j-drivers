
/input/zlog_common_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000076c <zlog_register_client>:
     76c: d503233f     	paciasp
     770: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     774: a9014ff4     	stp	x20, x19, [sp, #0x10]
     778: 910003fd     	mov	x29, sp
     77c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     780: 91000294     	add	x20, x20, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     784: aa0003f3     	mov	x19, x0
     788: aa1403e0     	mov	x0, x20
     78c: 94000000     	bl	0x78c <zlog_register_client+0x20>
		000000000000078c:  R_AARCH64_CALL26	mutex_lock
     790: aa1303e0     	mov	x0, x19
     794: 94000000     	bl	0x794 <zlog_register_client+0x28>
		0000000000000794:  R_AARCH64_CALL26	zlog_register_client_stock
     798: aa0003f3     	mov	x19, x0
     79c: aa1403e0     	mov	x0, x20
     7a0: 94000000     	bl	0x7a0 <zlog_register_client+0x34>
		00000000000007a0:  R_AARCH64_CALL26	mutex_unlock
     7a4: aa1303e0     	mov	x0, x19
     7a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     7ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     7b0: d50323bf     	autiasp
     7b4: d65f03c0     	ret
