.section .data,"aw",@progbits
.align 3
.global zte_ir_exact_data_base
.type zte_ir_exact_data_base, %object
zte_ir_exact_data_base:

.global device_list_lock
.set device_list_lock, zte_ir_exact_data_base
.global device_list
.set device_list, zte_ir_exact_data_base + 0x30

.section .bss,"aw",@nobits
.align 3
.global zte_ir_exact_bss_base
.type zte_ir_exact_bss_base, %object
zte_ir_exact_bss_base:

.global spidev_major
.set spidev_major, zte_ir_exact_bss_base
.global zte_ir_class
.set zte_ir_class, zte_ir_exact_bss_base + 0x8
.global zte_ir_probe.__key
.set zte_ir_probe.__key, zte_ir_exact_bss_base + 0x10
.global minors
.set minors, zte_ir_exact_bss_base + 0x18

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.global zte_ir_exact_codetag_base
.type zte_ir_exact_codetag_base, %object
zte_ir_exact_codetag_base:
.global zte_ir_probe._alloc_tag
.set zte_ir_probe._alloc_tag, zte_ir_exact_codetag_base

.section .rodata.str1.1,"a",@progbits
.align 1
.global zte_ir_exact_rodata_str_base
zte_ir_exact_rodata_str_base:
.incbin "exact_stock_sections/stock_rodata_str.bin"

.section .note.GNU-stack,"",@progbits
