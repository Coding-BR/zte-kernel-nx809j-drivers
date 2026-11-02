
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000264e0 <tpd_goodix_ts_suspend>:
   264e0: d503233f     	paciasp
   264e4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   264e8: 910003fd     	mov	x29, sp
   264ec: f9400408     	ldr	x8, [x0, #0x8]
   264f0: 91004100     	add	x0, x8, #0x10
   264f4: 97fffa3f     	bl	0x24df0 <tp_wake_gesture_read+0xac>
		00000000000264f4:  R_AARCH64_CALL26	syna_dev_suspend
   264f8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   264fc: d50323bf     	autiasp
   26500: d65f03c0     	ret
