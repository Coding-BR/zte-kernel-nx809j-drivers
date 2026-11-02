
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007e40 <aw9620x_i2c_remove>:
    7e40: d503233f     	paciasp
    7e44: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7e48: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7e4c: 910003fd     	mov	x29, sp
    7e50: f9405c14     	ldr	x20, [x0, #0xb8]
    7e54: aa0003f3     	mov	x19, x0
    7e58: f9410288     	ldr	x8, [x20, #0x200]
    7e5c: f9400500     	ldr	x0, [x8, #0x8]
    7e60: 94000000     	bl	0x7e60 <aw9620x_i2c_remove+0x20>
		0000000000007e60:  R_AARCH64_CALL26	input_unregister_device
    7e64: f9410288     	ldr	x8, [x20, #0x200]
    7e68: f9400500     	ldr	x0, [x8, #0x8]
    7e6c: b4000060     	cbz	x0, 0x7e78 <aw9620x_i2c_remove+0x38>
    7e70: 94000000     	bl	0x7e70 <aw9620x_i2c_remove+0x30>
		0000000000007e70:  R_AARCH64_CALL26	input_free_device
    7e74: f9410288     	ldr	x8, [x20, #0x200]
    7e78: f9401d00     	ldr	x0, [x8, #0x38]
    7e7c: 94000000     	bl	0x7e7c <aw9620x_i2c_remove+0x3c>
		0000000000007e7c:  R_AARCH64_CALL26	input_unregister_device
    7e80: f9410288     	ldr	x8, [x20, #0x200]
    7e84: f9401d00     	ldr	x0, [x8, #0x38]
    7e88: b4000060     	cbz	x0, 0x7e94 <aw9620x_i2c_remove+0x54>
    7e8c: 94000000     	bl	0x7e8c <aw9620x_i2c_remove+0x4c>
		0000000000007e8c:  R_AARCH64_CALL26	input_free_device
    7e90: f9410288     	ldr	x8, [x20, #0x200]
    7e94: f9403500     	ldr	x0, [x8, #0x68]
    7e98: 94000000     	bl	0x7e98 <aw9620x_i2c_remove+0x58>
		0000000000007e98:  R_AARCH64_CALL26	input_unregister_device
    7e9c: f9410288     	ldr	x8, [x20, #0x200]
    7ea0: f9403500     	ldr	x0, [x8, #0x68]
    7ea4: b4000060     	cbz	x0, 0x7eb0 <aw9620x_i2c_remove+0x70>
    7ea8: 94000000     	bl	0x7ea8 <aw9620x_i2c_remove+0x68>
		0000000000007ea8:  R_AARCH64_CALL26	input_free_device
    7eac: f9410288     	ldr	x8, [x20, #0x200]
    7eb0: f9404d00     	ldr	x0, [x8, #0x98]
    7eb4: 94000000     	bl	0x7eb4 <aw9620x_i2c_remove+0x74>
		0000000000007eb4:  R_AARCH64_CALL26	input_unregister_device
    7eb8: f9410288     	ldr	x8, [x20, #0x200]
    7ebc: f9404d00     	ldr	x0, [x8, #0x98]
    7ec0: b4000060     	cbz	x0, 0x7ecc <aw9620x_i2c_remove+0x8c>
    7ec4: 94000000     	bl	0x7ec4 <aw9620x_i2c_remove+0x84>
		0000000000007ec4:  R_AARCH64_CALL26	input_free_device
    7ec8: f9410288     	ldr	x8, [x20, #0x200]
    7ecc: f9406500     	ldr	x0, [x8, #0xc8]
    7ed0: 94000000     	bl	0x7ed0 <aw9620x_i2c_remove+0x90>
		0000000000007ed0:  R_AARCH64_CALL26	input_unregister_device
    7ed4: f9410288     	ldr	x8, [x20, #0x200]
    7ed8: f9406500     	ldr	x0, [x8, #0xc8]
    7edc: b4000060     	cbz	x0, 0x7ee8 <aw9620x_i2c_remove+0xa8>
    7ee0: 94000000     	bl	0x7ee0 <aw9620x_i2c_remove+0xa0>
		0000000000007ee0:  R_AARCH64_CALL26	input_free_device
    7ee4: f9410288     	ldr	x8, [x20, #0x200]
    7ee8: f9407d00     	ldr	x0, [x8, #0xf8]
    7eec: 94000000     	bl	0x7eec <aw9620x_i2c_remove+0xac>
		0000000000007eec:  R_AARCH64_CALL26	input_unregister_device
    7ef0: f9410288     	ldr	x8, [x20, #0x200]
    7ef4: f9407d00     	ldr	x0, [x8, #0xf8]
    7ef8: b4000060     	cbz	x0, 0x7f04 <aw9620x_i2c_remove+0xc4>
    7efc: 94000000     	bl	0x7efc <aw9620x_i2c_remove+0xbc>
		0000000000007efc:  R_AARCH64_CALL26	input_free_device
    7f00: f9410288     	ldr	x8, [x20, #0x200]
    7f04: f9409500     	ldr	x0, [x8, #0x128]
    7f08: 94000000     	bl	0x7f08 <aw9620x_i2c_remove+0xc8>
		0000000000007f08:  R_AARCH64_CALL26	input_unregister_device
    7f0c: f9410288     	ldr	x8, [x20, #0x200]
    7f10: f9409500     	ldr	x0, [x8, #0x128]
    7f14: b4000060     	cbz	x0, 0x7f20 <aw9620x_i2c_remove+0xe0>
    7f18: 94000000     	bl	0x7f18 <aw9620x_i2c_remove+0xd8>
		0000000000007f18:  R_AARCH64_CALL26	input_free_device
    7f1c: f9410288     	ldr	x8, [x20, #0x200]
    7f20: f940ad00     	ldr	x0, [x8, #0x158]
    7f24: 94000000     	bl	0x7f24 <aw9620x_i2c_remove+0xe4>
		0000000000007f24:  R_AARCH64_CALL26	input_unregister_device
    7f28: f9410288     	ldr	x8, [x20, #0x200]
    7f2c: f940ad00     	ldr	x0, [x8, #0x158]
    7f30: b4000040     	cbz	x0, 0x7f38 <aw9620x_i2c_remove+0xf8>
    7f34: 94000000     	bl	0x7f34 <aw9620x_i2c_remove+0xf4>
		0000000000007f34:  R_AARCH64_CALL26	input_free_device
    7f38: 90000001     	adrp	x1, 0x7000 <aw9620x_i2c_probe+0x8c>
		0000000000007f38:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_data_base+0x110
    7f3c: 91000021     	add	x1, x1, #0x0
		0000000000007f3c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_data_base+0x110
    7f40: 91008260     	add	x0, x19, #0x20
    7f44: 94000000     	bl	0x7f44 <aw9620x_i2c_remove+0x104>
		0000000000007f44:  R_AARCH64_CALL26	sysfs_remove_group
    7f48: 39400688     	ldrb	w8, [x20, #0x1]
    7f4c: 340000a8     	cbz	w8, 0x7f60 <aw9620x_i2c_remove+0x120>
    7f50: f940fe80     	ldr	x0, [x20, #0x1f8]
    7f54: 94000000     	bl	0x7f54 <aw9620x_i2c_remove+0x114>
		0000000000007f54:  R_AARCH64_CALL26	regulator_disable
    7f58: f940fe80     	ldr	x0, [x20, #0x1f8]
    7f5c: 94000000     	bl	0x7f5c <aw9620x_i2c_remove+0x11c>
		0000000000007f5c:  R_AARCH64_CALL26	regulator_put
    7f60: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7f64: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7f68: d50323bf     	autiasp
    7f6c: d65f03c0     	ret
