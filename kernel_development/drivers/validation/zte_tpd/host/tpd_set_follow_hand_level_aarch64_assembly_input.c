#define ZTE_TPD_AARCH64_INPUT 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct syna_tcm;
typedef struct ztp_device ztp_device;
extern int printk(const char *format, ...);
extern const char unk_34878[];
extern const char unk_3585A[];
extern const char unk_3B5E0[];
extern int syna_dev_set_follow_hand_level(struct syna_tcm *tcm, int level, int value);
#include "../../../reconstructed/zte_tpd/tpd_set_follow_hand_level.c"
