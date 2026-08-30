
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011adc <syna_request_managed_device>:
   11adc: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011adc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x890
   11ae0: f9400108     	ldr	x8, [x8]
		0000000000011ae0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   11ae4: b4000068     	cbz	x8, 0x11af0 <syna_request_managed_device+0x14>
   11ae8: f9403900     	ldr	x0, [x8, #0x70]
   11aec: d65f03c0     	ret
   11af0: aa1f03e0     	mov	x0, xzr
   11af4: d65f03c0     	ret
