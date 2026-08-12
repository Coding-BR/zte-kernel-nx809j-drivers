#define ZTE_TPD_AARCH64_INPUT 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct work_struct;
struct syna_tcm;
extern __int64 syna_get_charger_status_batt_psy;
extern int syna_work_charger_detect_work_status;
extern int syna_usb_detect_flag;
extern int syna_dev_set_charger_mode(struct syna_tcm *tcm, int value,
                                      unsigned int delay_ms);
extern int printk(const char *format, ...);
extern const char unk_35219[];
extern const char unk_3A676[];
#define _ReadStatusReg(reg) ((void)0)
#define __break(value) __builtin_trap()
#include "../../../reconstructed/zte_tpd/syna_work_charger_detect_work.c"
