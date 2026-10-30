
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026118 <syna_request_managed_device>:
   26118: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026118:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   2611c: f9400108     	ldr	x8, [x8]
		000000000002611c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   26120: b4000068     	cbz	x8, 0x2612c <syna_request_managed_device+0x14>
   26124: f9403900     	ldr	x0, [x8, #0x70]
   26128: d65f03c0     	ret
   2612c: aa1f03e0     	mov	x0, xzr
   26130: d65f03c0     	ret
