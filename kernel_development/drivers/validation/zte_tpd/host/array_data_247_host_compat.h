#ifndef ZTE_TPD_ARRAY_DATA_247_HOST_COMPAT_H
#define ZTE_TPD_ARRAY_DATA_247_HOST_COMPAT_H

extern int printk(const char *format, ...);
extern int syna_tcm_testing_0100_check_data(long long fw,
                                             long long expected,
                                             long long bit_index);

#define __int8 char
#define __int64 long long
#define __fastcall
#define LOBYTE(x) ((unsigned char *)&(x))[0]
#define unk_3380A "\0013[error] %s: Invalid parameters to check frame data\n"

#endif
