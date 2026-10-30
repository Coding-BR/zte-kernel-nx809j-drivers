/* Mechanically lifted from stock get_one_key@0x0010ba4c. */
.text
.align 2
.globl get_one_key
.type get_one_key, %function
.word 0xf4e9d97c
get_one_key:
.Lget_one_key_000:
  paciasp
.Lget_one_key_004:
  sub sp, sp, #0x50
.Lget_one_key_008:
  stp x29, x30, [sp, #0x20]
.Lget_one_key_00c:
  stp x22, x21, [sp, #0x30]
.Lget_one_key_010:
  stp x20, x19, [sp, #0x40]
.Lget_one_key_014:
  add x29, sp, #0x20
.Lget_one_key_018:
  mrs x8, SP_EL0
.Lget_one_key_01c:
  mov x0, xzr
.Lget_one_key_020:
  ldr x8, [x8, #0x710]
.Lget_one_key_024:
  stur x8, [x29, #-0x8]
.Lget_one_key_028:
  ldr x8, [x3]
.Lget_one_key_02c:
  strh wzr, [sp, #0x10]
.Lget_one_key_030:
  str xzr, [sp, #0x8]
.Lget_one_key_034:
  cbz x8, .Lget_one_key_064
.Lget_one_key_038:
  mrs x8, SP_EL0
.Lget_one_key_03c:
  ldr x8, [x8, #0x710]
.Lget_one_key_040:
  ldur x9, [x29, #-0x8]
.Lget_one_key_044:
  cmp x8, x9
.Lget_one_key_048:
  b.ne .Lget_one_key_0ec
.Lget_one_key_04c:
  ldp x20, x19, [sp, #0x40]
.Lget_one_key_050:
  ldp x22, x21, [sp, #0x30]
.Lget_one_key_054:
  ldp x29, x30, [sp, #0x20]
.Lget_one_key_058:
  add sp, sp, #0x50
.Lget_one_key_05c:
  autiasp
.Lget_one_key_060:
  ret
.Lget_one_key_064:
  adrp x8, tpd_cdev
.Lget_one_key_068:
  mov x21, x1
.Lget_one_key_06c:
  mov x20, x2
.Lget_one_key_070:
  ldr x22, [x8, :lo12:tpd_cdev]
.Lget_one_key_074:
  mov x19, x3
.Lget_one_key_078:
  ldr x8, [x22, #0xef0]
.Lget_one_key_07c:
  cbz x8, .Lget_one_key_0a0
.Lget_one_key_080:
  mov x0, x22
.Lget_one_key_084:
  ldur w16, [x8, #-0x4]
.Lget_one_key_088:
  movk w17, #0xd79
.Lget_one_key_08c:
  movk w17, #0x73fc, lsl #16
.Lget_one_key_090:
  cmp w16, w17
.Lget_one_key_094:
  b.eq .Lget_one_key_09c
.Lget_one_key_098:
  brk #0x8228
.Lget_one_key_09c:
  blr x8
.Lget_one_key_0a0:
  ldr w2, [x22, #0x458]
.Lget_one_key_0a4:
  adrp x0, .Lget_one_key_str_tpd
.Lget_one_key_0a8:
  add x0, x0, :lo12:.Lget_one_key_str_tpd
.Lget_one_key_0ac:
  adrp x1, .Lget_one_key_str_name
.Lget_one_key_0b0:
  add x1, x1, :lo12:.Lget_one_key_str_name
.Lget_one_key_0b4:
  bl _printk
.Lget_one_key_0b8:
  ldr w3, [x22, #0x458]
.Lget_one_key_0bc:
  adrp x2, .Lget_one_key_str_format
.Lget_one_key_0c0:
  add x2, x2, :lo12:.Lget_one_key_str_format
.Lget_one_key_0c4:
  add x0, sp, #0x8
.Lget_one_key_0c8:
  mov w1, #0xa
.Lget_one_key_0cc:
  bl snprintf
.Lget_one_key_0d0:
  sxtw x4, w0
.Lget_one_key_0d4:
  add x3, sp, #0x8
.Lget_one_key_0d8:
  mov x1, x20
.Lget_one_key_0dc:
  mov x0, x21
.Lget_one_key_0e0:
  mov x2, x19
.Lget_one_key_0e4:
  bl simple_read_from_buffer
.Lget_one_key_0e8:
  b .Lget_one_key_038
.Lget_one_key_0ec:
  bl __stack_chk_fail
.Lget_one_key_end:
.size get_one_key, .Lget_one_key_end - get_one_key

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Lget_one_key_str_tpd:
  .string "\0015tpd: %s val:%d.\n"
.Lget_one_key_str_name:
  .string "get_one_key"
.Lget_one_key_str_format:
  .string "%u\n"
.popsection
.section .note.GNU-stack,"",@progbits
