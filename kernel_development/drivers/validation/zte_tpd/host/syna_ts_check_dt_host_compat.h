#ifndef ZTE_TPD_SYNA_TS_CHECK_DT_HOST_COMPAT_H
#define ZTE_TPD_SYNA_TS_CHECK_DT_HOST_COMPAT_H

typedef unsigned long long _QWORD;
typedef __SIZE_TYPE__ size_t;

struct device {
  unsigned char padding[744];
  void *of_node;
};

extern int printk(const char *format, ...);
extern int of_count_phandle_with_args(long long node, const char *name, int cells);
extern int _of_parse_phandle_with_args(long long node, const char *name,
                                       int index, int flags,
                                       unsigned int phandle_index, void *out);
extern unsigned long long of_drm_find_panel(const char **node);
extern void *memset(void *dest, int value, size_t count);
extern char *strncpy(char *dest, const char *src, size_t count);
extern unsigned long long host_read_status_reg(unsigned long long reg);
extern char device_node_name[100];
extern unsigned long long active_panel;

#define __int64 long long
#define __fastcall
#define _QWORD unsigned long long
#define nullptr 0
#define SP_EL0 0
#define _ReadStatusReg(reg) host_read_status_reg((unsigned long long)(reg))
#define DEVICE_NODE_NAME device_node_name
#define unk_31E60 "\0016[info ] %s: %s: node = %s\n"
#define unk_33BEE "\0016[info ] %s: %s: no device!\n"
#define unk_3351C "\0016[info ] %s: %s: device has not been probed yet\n"

#endif
