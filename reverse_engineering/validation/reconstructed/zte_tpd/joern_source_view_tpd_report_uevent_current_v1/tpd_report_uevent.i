/* Analysis-only declarations for partial recovered kernel translation units. */
#ifndef NX809J_JOERN_KERNEL_COMPAT_H
#define NX809J_JOERN_KERNEL_COMPAT_H
#define __user
#define __fastcall
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
typedef long ssize_t;
typedef long long loff_t;
typedef _Bool bool;
struct file;
struct inode;
struct kobject;
struct device;
struct platform_device;
#endif

#line 1 "tpd_report_uevent.c"
void tpd_report_uevent(char value)
{
  __int64 v3; // x19
  const char *v4; // x8
  _QWORD v6[2]; // [xsp+8h] [xbp-18h] BYREF

  v3 = tpd_cdev;
  v6[0] = 0;
  v6[1] = 0;
#ifdef ZTE_TPD_HOST_TEST
  if ( value == 2 )
    goto pen_capacity_low;
  if ( value == 1 )
    goto double_tap;
  if ( value )
    goto unknown_event;
#else
  __asm__ goto(
    "and w8, w0, #0xff\n"
    "cmp w8, #2\n"
    "b.eq %l[pen_capacity_low]\n"
    "cmp w8, #1\n"
    "b.eq %l[double_tap]\n"
    "cbnz w8, %l[unknown_event]\n"
    : : : "x8", "cc"
    : double_tap, pen_capacity_low, unknown_event);
#endif
  printk(unk_3912B, "tpd_report_uevent");
  __asm__ volatile("/* tpd_report_uevent single tap */" ::: "memory");
  v4 = "single_tap=true";
  goto emit_uevent;
pen_capacity_low:
  printk(unk_380AB, "tpd_report_uevent");
  __asm__ volatile("/* tpd_report_uevent pen capacity */" ::: "memory");
  v4 = "pen_capacity_low=true";
  goto emit_uevent;
double_tap:
  printk(unk_38BFD, "tpd_report_uevent");
  __asm__ volatile("/* tpd_report_uevent double tap */" ::: "memory");
  v4 = "double_tap=true";
  goto emit_uevent;
unknown_event:
  printk(unk_396D3, "tpd_report_uevent", (unsigned char)value);
  goto LABEL_9;
emit_uevent:
  v6[0] = v4;
  kobject_uevent_env(*(_QWORD *)(v3 + 0xdd0) + 16LL, 2, v6);
LABEL_9:
  _ReadStatusReg(SP_EL0);
}
