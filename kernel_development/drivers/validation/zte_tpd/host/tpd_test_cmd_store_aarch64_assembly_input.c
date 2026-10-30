#define ZTE_TPD_AARCH64_INPUT 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
struct syna_tcm;
struct syna_hw_interface;
typedef struct ztp_device ztp_device;
extern int printk(const char *format, ...);
extern const char unk_3458E[];
extern const char unk_34878[];
extern const char unk_38B8E[];
extern const char unk_3A6C6[];
extern const char unk_3B5E0[];
extern const char unk_3C89A[];
extern int syna_testing_pt01_zte(struct syna_tcm *tcm);
extern int syna_testing_pt05_zte(struct syna_tcm *tcm);
extern int syna_testing_pt0a_zte(struct syna_tcm *tcm);
extern void syna_spi_hw_reset(struct syna_hw_interface *hw_if);
#include "../../../reconstructed/zte_tpd/tpd_test_cmd_store.c"
