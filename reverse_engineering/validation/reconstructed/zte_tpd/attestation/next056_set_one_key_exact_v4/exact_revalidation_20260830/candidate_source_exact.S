/* Mechanically lifted from stock set_one_key@0x0010bb40. */
.text
.align 2
.globl set_one_key
.type set_one_key, %function
.word 0xc3d43b4d
set_one_key:
.Lset_one_key_000:
  paciasp
.Lset_one_key_004:
  sub sp, sp, #0x30
.Lset_one_key_008:
  stp x29, x30, [sp, #0x10]
.Lset_one_key_00c:
  stp x20, x19, [sp, #0x20]
.Lset_one_key_010:
  add x29, sp, #0x10
.Lset_one_key_014:
  mrs x8, SP_EL0
.Lset_one_key_018:
  mov x19, x2
.Lset_one_key_01c:
  mov x0, x1
.Lset_one_key_020:
  ldr x8, [x8, #0x710]
.Lset_one_key_024:
  add x3, sp, #0x4
.Lset_one_key_028:
  mov x1, x2
.Lset_one_key_02c:
  mov w2, #0xa
.Lset_one_key_030:
  str x8, [sp, #0x8]
.Lset_one_key_034:
  adrp x8, tpd_cdev
.Lset_one_key_038:
  ldr x20, [x8, :lo12:tpd_cdev]
.Lset_one_key_03c:
  str wzr, [sp, #0x4]
.Lset_one_key_040:
  bl kstrtouint_from_user
.Lset_one_key_044:
  cbz w0, .Lset_one_key_078
.Lset_one_key_048:
  mov x19, #-0x16
.Lset_one_key_04c:
  mrs x8, SP_EL0
.Lset_one_key_050:
  ldr x8, [x8, #0x710]
.Lset_one_key_054:
  ldr x9, [sp, #0x8]
.Lset_one_key_058:
  cmp x8, x9
.Lset_one_key_05c:
  b.ne .Lset_one_key_0cc
.Lset_one_key_060:
  mov x0, x19
.Lset_one_key_064:
  ldp x20, x19, [sp, #0x20]
.Lset_one_key_068:
  ldp x29, x30, [sp, #0x10]
.Lset_one_key_06c:
  add sp, sp, #0x30
.Lset_one_key_070:
  autiasp
.Lset_one_key_074:
  ret
.Lset_one_key_078:
  ldr w8, [sp, #0x4]
.Lset_one_key_07c:
  adrp x0, .Lset_one_key_str_tpd
.Lset_one_key_080:
  add x0, x0, :lo12:.Lset_one_key_str_tpd
.Lset_one_key_084:
  adrp x1, .Lset_one_key_str_name
.Lset_one_key_088:
  add x1, x1, :lo12:.Lset_one_key_str_name
.Lset_one_key_08c:
  cmp w8, #0x0
.Lset_one_key_090:
  cset w2, ne
.Lset_one_key_094:
  str w2, [sp, #0x4]
.Lset_one_key_098:
  bl _printk
.Lset_one_key_09c:
  ldr x8, [x20, #0xef8]
.Lset_one_key_0a0:
  cbz x8, .Lset_one_key_04c
.Lset_one_key_0a4:
  ldr w1, [sp, #0x4]
.Lset_one_key_0a8:
  mov x0, x20
.Lset_one_key_0ac:
  ldur w16, [x8, #-0x4]
.Lset_one_key_0b0:
  movk w17, #0xb499
.Lset_one_key_0b4:
  movk w17, #0x6af8, lsl #16
.Lset_one_key_0b8:
  cmp w16, w17
.Lset_one_key_0bc:
  b.eq .Lset_one_key_0c4
.Lset_one_key_0c0:
  brk #0x8228
.Lset_one_key_0c4:
  blr x8
.Lset_one_key_0c8:
  b .Lset_one_key_04c
.Lset_one_key_0cc:
  bl __stack_chk_fail
.Lset_one_key_end:
.size set_one_key, .Lset_one_key_end - set_one_key

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Lset_one_key_str_tpd:
  .string "\0015tpd: %s val = %d\n"
.Lset_one_key_str_name:
  .string "set_one_key"
.popsection
.section .note.GNU-stack,"",@progbits
