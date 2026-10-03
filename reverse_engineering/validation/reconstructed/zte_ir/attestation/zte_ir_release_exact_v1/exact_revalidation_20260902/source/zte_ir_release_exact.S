.section .text,"ax",@progbits
.align 2
.global zte_ir_release
.type zte_ir_release, %function
    .word 0x9829071d
zte_ir_release:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list_lock
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list_lock
    .inst 0xaa0103f3
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x104
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x104
    .inst 0xf900127f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1f03e0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size zte_ir_release, .-zte_ir_release
