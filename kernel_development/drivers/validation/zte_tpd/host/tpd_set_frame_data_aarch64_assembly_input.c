#define ZTE_TPD_AARCH64_INPUT 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct syna_tcm;
typedef struct ztp_device ztp_device;
extern int printk(const char *format, ...);
extern const char unk_34878[];
extern const char unk_345B2[];
extern const char unk_3B5E0[];
extern void zte_reset_frame_list(struct syna_tcm *tcm);
extern int syna_dev_get_frame_data(struct syna_tcm *tcm, int value,
                                   unsigned int delay_ms);
#include "../../../reconstructed/zte_tpd/tpd_set_frame_data.c"
