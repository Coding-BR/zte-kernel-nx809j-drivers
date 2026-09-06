#ifndef ZTE_TPD_CONFIG_TIMINGS_HOST_COMPAT_H
#define ZTE_TPD_CONFIG_TIMINGS_HOST_COMPAT_H

typedef unsigned char u8;
typedef unsigned int u32;

struct tcm_timings {
  u32 value_00;
  u32 value_04;
  u32 value_08;
  u32 value_0c;
  u32 value_10;
  u8 reserved_14[0x0c];
  u32 value_20;
  u32 value_24;
};

struct tcm_dev {
  u8 reserved_0000[0x1e8];
  u32 timing_01e8;
  u32 timing_01ec;
  u8 reserved_01f0[0x18];
  u32 timing_0208;
  u32 command_delay_ms;
  u32 timing_0210;
  u32 timing_0214;
  u32 timing_0218;
};

extern int printk(const char *format, ...);

#endif
