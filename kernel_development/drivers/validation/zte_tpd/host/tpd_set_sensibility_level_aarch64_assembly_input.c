#define ZTE_TPD_AARCH64_INPUT 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct syna_tcm;
struct syna_hw_interface;
typedef struct ztp_device ztp_device;
extern int printk(const char *format, ...);
extern const char unk_34878[];
extern const char unk_36905[];
extern const char unk_3B5E0[];
extern int syna_dev_set_sensibility_level(struct syna_tcm *tcm,
                                           unsigned int level,
                                           unsigned int value);
#include "../../../reconstructed/zte_tpd/tpd_set_sensibility_level.c"
