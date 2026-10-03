#define ZTE_TPD_AARCH64_INPUT 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct syna_tcm;
typedef struct ztp_device ztp_device;
extern int printk(const char *format, ...);
extern void msleep(unsigned int milliseconds);
extern const char unk_34878[];
extern const char unk_37B3D[];
extern const char unk_3C397[];
extern const char unk_38BA1[];
extern const char unk_36936[];
extern int syna_dev_set_display_rotation(struct syna_tcm *tcm,
                                          int rotation,
                                          unsigned int delay_ms);
#include "../../../reconstructed/zte_tpd/tpd_set_display_rotation.c"
