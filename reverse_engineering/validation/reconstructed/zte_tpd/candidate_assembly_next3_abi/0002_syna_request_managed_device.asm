
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b8e4 <syna_request_managed_device>:
    b8e4: 90000008     	adrp	x8, 0xb000 <syna_hw_interface_init+0xc0>
		000000000000b8e4:  R_AARCH64_ADR_PREL_PG_HI21	p_device
    b8e8: f9400108     	ldr	x8, [x8]
		000000000000b8e8:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
    b8ec: b4000068     	cbz	x8, 0xb8f8 <syna_request_managed_device+0x14>
    b8f0: f9403900     	ldr	x0, [x8, #0x70]
    b8f4: d65f03c0     	ret
    b8f8: aa1f03e0     	mov	x0, xzr
    b8fc: d65f03c0     	ret
