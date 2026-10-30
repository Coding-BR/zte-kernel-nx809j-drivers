#define ZTE_TPD_AARCH64_INPUT 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct syna_tcm;
typedef struct ztp_device ztp_device;
extern int printk(const char *format, ...);
extern const char unk_34878[];
extern const char unk_3220D[];
extern const char unk_3B5E0[];
extern int syna_dev_set_display_rotation(struct syna_tcm *tcm,
                                          unsigned int rotation,
                                          unsigned int value);
#include "../../../reconstructed/zte_tpd/tpd_set_rotation_limit_level.c"
