#ifndef ZTE_TPD_SET_PLAY_GAME_HOST_COMPAT_H
#define ZTE_TPD_SET_PLAY_GAME_HOST_COMPAT_H

struct ztp_device;
struct syna_tcm;
extern int printk(const char *format, ...);
extern int syna_dev_set_play_game(struct syna_tcm *cdev, int mode,
                                  unsigned long long limit);

#define __int64 long long
#define __fastcall
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define unk_34878 "\0016[info ] %s: enter\n"
#define unk_32D58 "\0016[info ] %s: play no need reset"
#define unk_34BC7 "\0013[error] %s: set play_game mode failed!"
#define unk_3B5E0 "\0013[error] %s: error, change set in suspend!"

#endif
