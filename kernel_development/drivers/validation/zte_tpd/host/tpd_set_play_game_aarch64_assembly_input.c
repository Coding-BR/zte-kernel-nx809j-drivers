#define ZTE_TPD_AARCH64_INPUT 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct syna_tcm;
typedef struct ztp_device ztp_device;
extern int printk(const char *format, ...);
extern const char unk_34878[];
extern const char unk_32D58[];
extern const char unk_34BC7[];
extern const char unk_3B5E0[];
extern int syna_dev_set_play_game(struct syna_tcm *tcm, int value,
                                  unsigned int delay_ms);
#include "../../../reconstructed/zte_tpd/tpd_set_play_game.c"
