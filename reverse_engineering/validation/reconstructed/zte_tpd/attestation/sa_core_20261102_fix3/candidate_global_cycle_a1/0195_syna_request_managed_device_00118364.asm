
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026174 <syna_request_managed_device>:
   26174: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026174:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   26178: f9400108     	ldr	x8, [x8]
		0000000000026178:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   2617c: b4000068     	cbz	x8, 0x26188 <syna_request_managed_device+0x14>
   26180: f9403900     	ldr	x0, [x8, #0x70]
   26184: d65f03c0     	ret
   26188: aa1f03e0     	mov	x0, xzr
   2618c: d65f03c0     	ret
