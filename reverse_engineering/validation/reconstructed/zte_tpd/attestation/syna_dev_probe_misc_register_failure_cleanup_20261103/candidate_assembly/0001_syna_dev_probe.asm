
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ad94 <syna_dev_probe>:
    ad94: b4000180     	cbz	x0, 0xadc4 <syna_dev_probe+0x30>
    ad98: d503233f     	paciasp
    ad9c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    ada0: f9000bf3     	str	x19, [sp, #0x10]
    ada4: 910003fd     	mov	x29, sp
    ada8: aa0003f3     	mov	x19, x0
    adac: 94000000     	bl	0xadac <syna_dev_probe+0x18>
		000000000000adac:  R_AARCH64_CALL26	syna_dev_probe_stock_exact
    adb0: 340000e0     	cbz	w0, 0xadcc <syna_dev_probe+0x38>
    adb4: f9400bf3     	ldr	x19, [sp, #0x10]
    adb8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    adbc: d50323bf     	autiasp
    adc0: d65f03c0     	ret
    adc4: 128002a0     	mov	w0, #-0x16              // =-22
    adc8: d65f03c0     	ret
    adcc: f9405668     	ldr	x8, [x19, #0xa8]
    add0: b40000e8     	cbz	x8, 0xadec <syna_dev_probe+0x58>
    add4: f942a509     	ldr	x9, [x8, #0x548]
    add8: f9423108     	ldr	x8, [x8, #0x460]
    addc: b40000c9     	cbz	x9, 0xadf4 <syna_dev_probe+0x60>
    ade0: b40000a8     	cbz	x8, 0xadf4 <syna_dev_probe+0x60>
    ade4: 2a1f03e0     	mov	w0, wzr
    ade8: 17fffff3     	b	0xadb4 <syna_dev_probe+0x20>
    adec: 12800240     	mov	w0, #-0x13              // =-19
    adf0: 17fffff1     	b	0xadb4 <syna_dev_probe+0x20>
    adf4: aa1303e0     	mov	x0, x19
    adf8: 94000000     	bl	0xadf8 <syna_dev_probe+0x64>
		000000000000adf8:  R_AARCH64_CALL26	syna_dev_remove
    adfc: 12800160     	mov	w0, #-0xc               // =-12
    ae00: f900567f     	str	xzr, [x19, #0xa8]
    ae04: 17ffffec     	b	0xadb4 <syna_dev_probe+0x20>
