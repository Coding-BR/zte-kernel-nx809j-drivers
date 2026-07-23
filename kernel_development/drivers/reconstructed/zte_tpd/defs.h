#ifndef _DEFS_H
#define _DEFS_H

/* Keep the kernel header's static helper distinct from the recovered ELF symbol. */
#define _inline_copy_from_user zte_kernel_inline_copy_from_user

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/soc/qcom/panel_event_notifier.h>
#include <linux/init.h>
#include <linux/platform_device.h>
#include <linux/device.h>
#include <linux/spi/spi.h>
#include <linux/of.h>
#include <linux/of_gpio.h>
#include <linux/gpio.h>
#include <linux/input.h>
#include <linux/delay.h>
#include <linux/slab.h>
#include <linux/interrupt.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/uaccess.h>
#include <linux/kthread.h>
#include <linux/workqueue.h>
#include <linux/input/mt.h>
#include <linux/vmalloc.h>
#include <linux/firmware.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/poll.h>
#include <linux/timekeeping.h>
#include <linux/pm_wakeup.h>
#include <linux/notifier.h>

#include "zte_tpd_tcm_layout.h"
#include "zte_tpd_syna_layout.h"
#include "zte_tpd_testing_layout.h"
#include "zte_tpd_syna_device_api.h"

#undef _inline_copy_from_user



// IDA / Ghidra Decompilation Types
#define __int64 long long
#define __int32 int
#define __int16 short
#define __int8 char


#define __fastcall

typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned short _WORD;
typedef unsigned char _BYTE;

#define _BOOL8 unsigned char
#define _BOOL4 int

struct ztp_device;

int get_tp_chip_id(void);
int suspend_tp_need_awake(void);
int syna_dev_module_init(void);
int syna_hw_interface_init(void);
int tpd_report_work_init(void);
int tpd_workqueue_init(void);
int ufp_get_lcdstate(void);
int ufp_mac_init(void);
int zte_touch_init(void);
int zte_touch_pdev_register(void);

#define BYTEn(x, n)   (*((unsigned char*)&(x)+(n)))
#define BYTE0(x)   BYTEn(x,  0)
#define BYTE1(x)   BYTEn(x,  1)
#define BYTE2(x)   BYTEn(x,  2)
#define BYTE3(x)   BYTEn(x,  3)
#define BYTE4(x)   BYTEn(x,  4)
#define BYTE5(x)   BYTEn(x,  5)
#define BYTE6(x)   BYTEn(x,  6)
#define BYTE7(x)   BYTEn(x,  7)





// Map Ghidra's __break calls to a safe kernel warning instead of panicking
#define __break(x) pr_warn("zte_tpd CFI/assert warning: 0x%x at %s:%d\n", (unsigned int)(x), __FILE__, __LINE__)

// Cast wrappers for standard kernel functions called with __int64 / long long arguments
#undef simple_read_from_buffer
#define simple_read_from_buffer(to, count, ppos, from, available) \
    simple_read_from_buffer((void __user *)(to), (size_t)(count), (loff_t *)(ppos), (const void *)(from), (size_t)(available))

#undef cancel_delayed_work_sync
#define cancel_delayed_work_sync(dwork) cancel_delayed_work_sync((struct delayed_work *)(dwork))

#undef cancel_work_sync
#define cancel_work_sync(work) cancel_work_sync((struct work_struct *)(work))

#undef destroy_workqueue
#define destroy_workqueue(wq) destroy_workqueue((struct workqueue_struct *)(wq))

#undef queue_delayed_work
#define queue_delayed_work(wq, dwork, delay) queue_delayed_work((struct workqueue_struct *)(wq), (struct delayed_work *)(dwork), delay)

#undef queue_work
#define queue_work(wq, work) queue_work((struct workqueue_struct *)(wq), (struct work_struct *)(work))

#undef flush_workqueue
#define flush_workqueue(wq) __flush_workqueue((struct workqueue_struct *)(wq))

// kstrto and check_object_size wrappers
#undef kstrtouint_from_user
#define kstrtouint_from_user(s, count, base, res) kstrtouint_from_user((const char __user *)(s), (size_t)(count), (unsigned int)(base), (unsigned int *)(res))

#undef kstrtouint
#define kstrtouint(s, base, res) kstrtouint((const char *)(s), (unsigned int)(base), (unsigned int *)(res))

#undef _check_object_size
#define _check_object_size(ptr, n, to_user) \
    __check_object_size((const void *)(ptr), (n), (to_user))

// WORD and HIWORD/LOWORD extraction macros
#define WORDn(x, n)   (*((unsigned short*)&(x)+(n)))
#define WORD0(x)   WORDn(x,  0)
#define WORD1(x)   WORDn(x,  1)
#define WORD2(x)   WORDn(x,  2)
#define WORD3(x)   WORDn(x,  3)
#define WORD4(x)   WORDn(x,  4)
#define WORD5(x)   WORDn(x,  5)
#define WORD6(x)   WORDn(x,  6)
#define WORD7(x)   WORDn(x,  7)

#define HIWORD(x)  (*((unsigned short*)&(x)+1))
#define LOWORD(x)  (*((unsigned short*)&(x)+0))

#define HIBYTE(x)   (*((unsigned char*)&(x)+1))
#define LOBYTE(x)   (*((unsigned char*)&(x)+0))

#define LODWORD(x)  (*((unsigned int*)&(x)+0))
#define HIDWORD(x)  (*((unsigned int*)&(x)+1))


// kmalloc decompiler mapping
#undef _kmalloc_cache_noprof
#define _kmalloc_cache_noprof(cache, flags, size) \
    ((__int64)(((flags) == 3520) ? kzalloc(size, GFP_KERNEL) : kmalloc(size, GFP_KERNEL)))

// Decompiler helper macros
#define __PAIR64__(high, low) (((unsigned long long)(high) << 32) | (unsigned int)(low))
#define __rev16(x) __builtin_bswap16(x)
#define __dmb(x) __asm__ __volatile__("dmb ish" : : : "memory")

// Kernel symbol mappings
#define _init_swait_queue_head(q, name, key) __init_swait_queue_head(q, name, key)
#define _kmalloc_large_noprof(size, flags) kmalloc(size, flags)
#define _of_parse_phandle_with_args(np, list_name, cells_name, cell_count, index, out_args) \
    __of_parse_phandle_with_args(np, list_name, cells_name, cell_count, index, out_args)

// Mutex lock wrappers
#undef mutex_lock
#define mutex_lock(lock) mutex_lock((struct mutex *)(lock))

#undef mutex_unlock
#define mutex_unlock(lock) mutex_unlock((struct mutex *)(lock))

#undef mutex_init
#define mutex_init(lock) mutex_init((struct mutex *)(lock))

#define _mutex_init(lock, name, key) __mutex_init((struct mutex *)(lock), name, key)

#undef mutex_lock_interruptible
#define mutex_lock_interruptible(lock) mutex_lock_interruptible((struct mutex *)(lock))

// Input device event reporting wrappers
#undef input_event
#define input_event(dev, type, code, value) input_event((struct input_dev *)(dev), type, code, value)

#undef input_mt_report_slot_state
#define input_mt_report_slot_state(dev, tool_type, active) input_mt_report_slot_state((struct input_dev *)(dev), tool_type, active)

#undef input_report_key
#define input_report_key(dev, code, value) input_report_key((struct input_dev *)(dev), code, value)

#undef input_report_abs
#define input_report_abs(dev, code, value) input_report_abs((struct input_dev *)(dev), code, value)

#undef input_sync
#define input_sync(dev) input_sync((struct input_dev *)(dev))

// Custom copy_from_user wrapper declaration
extern unsigned long zte_inline_copy_from_user(void *to,
                                               const void __user *from,
                                               unsigned long n)
    __asm__("_inline_copy_from_user");

// kfree and vfree casting wrappers
#undef kfree
#define kfree(obj) kfree((const void *)(obj))

#undef vfree
#define vfree(obj) vfree((const void *)(obj))




// Forward declarations of platform drivers used in init/cleanup
extern struct platform_driver zte_touch_device_driver;
extern struct platform_driver syna_dev_driver;
extern struct spi_driver syna_spi_driver;
extern struct platform_device syna_spi_device;
extern __int64 zte_get_boot_mode(void);
extern void report_ufp_uevent(int val);

#define syna_pal_mutex_alloc___key dummy_lock_key
#define syna_pal_mutex_alloc___key_0 dummy_lock_key
#define syna_pal_mutex_alloc___key_1 dummy_lock_key
#define syna_pal_mutex_alloc___key_2 dummy_lock_key
#define syna_pal_mutex_alloc___key_3 dummy_lock_key
#define syna_pal_mutex_alloc___key_4 dummy_lock_key
#define syna_pal_mutex_alloc___key_5 dummy_lock_key
#define syna_pal_mutex_alloc___key_6 dummy_lock_key
#define syna_pal_mutex_alloc___key_7 dummy_lock_key
#define syna_pal_mutex_alloc___key_8 dummy_lock_key
#define syna_cdev_create___key dummy_lock_key
#define zte_touch_probe___key dummy_lock_key
#define zte_touch_probe___key_92 dummy_lock_key
#define zte_touch_probe___key_94 dummy_lock_key
#define init_completion___key dummy_lock_key
#define init_completion___key_1 dummy_lock_key
#define init_completion___key_2 dummy_lock_key
#define syna_dev_probe___key dummy_lock_key
#define syna_dev_probe___key_53 dummy_lock_key

extern __int64 syna_cdev_ioctl_raw_read(__int64 a1, unsigned __int64 a2, __int64 a3, unsigned int a4);
extern __int64 syna_cdev_ioctl_raw_write(__int64 a1, unsigned __int64 a2, __int64 a3, unsigned int a4);
extern int syna_tcm_clear_data_duplicator(struct tcm_dev *tcm);
extern int syna_tcm_set_custom_touch_entity_callback(
    struct tcm_dev *tcm, tcm_custom_touch_callback_fn callback,
    void *callback_data);
extern int syna_tcm_set_custom_gesture_callback(
    struct tcm_dev *tcm, tcm_custom_touch_callback_fn callback,
    void *callback_data);
extern int syna_tcm_set_post_reset_callback(
    struct tcm_dev *tcm, tcm_post_reset_callback_fn callback,
    void *callback_data);
extern int syna_tcm_set_data_duplicator(
    struct tcm_dev *tcm, u8 report_code,
    tcm_data_duplicator_fn callback, void *callback_data);
extern int syna_tcm_set_report_dispatcher(
    struct tcm_dev *tcm, u8 report_code,
    tcm_report_dispatcher_fn callback, void *callback_data);
extern int syna_tcm_config_timings(
    struct tcm_dev *tcm, struct tcm_timings *timings,
    u32 default_value, u32 fields);
extern int syna_tcm_enable_predict_reading(
    struct tcm_dev *tcm, bool enable);
extern int syna_tcm_v1_set_up_max_rw_size(
    struct tcm_dev *tcm, u32 max_read_size, u32 max_write_size);
extern int syna_tcm_v1_check_max_rw_size(struct tcm_dev *tcm);
extern struct device *syna_request_managed_device(void);
extern int syna_tcm_reset(struct tcm_dev *tcm, unsigned int delay_ms);
extern int syna_tcm_rezero(struct tcm_dev *tcm, unsigned int delay_ms);
extern int syna_tcm_erase_mtp_data(struct tcm_dev *tcm,
                                  unsigned int delay_ms);
extern int syna_tcm_preserve_touch_report_config(struct tcm_dev *tcm,
                                                 unsigned int delay_ms);
extern int syna_tcm_read_cs_data(struct tcm_dev *tcm, char *data,
                                 unsigned int length, unsigned int offset,
                                 unsigned int delay_mode);
extern int syna_tcm_read_mtp_data(struct tcm_dev *tcm, char *data,
                                  unsigned int length, unsigned int offset,
                                  unsigned int delay_mode);
extern int syna_tcm_update_cs_config(struct tcm_dev *tcm, char *data,
                                     unsigned int length,
                                     unsigned int offset,
                                     unsigned int delay_mode);
extern int syna_tcm_update_mtp_data(struct tcm_dev *tcm, char *data,
                                    unsigned int length,
                                    unsigned int offset,
                                    unsigned int delay_mode);
extern int syna_tcm_get_static_config(struct tcm_dev *tcm, char *config,
                                      unsigned int length,
                                      unsigned int delay_ms);
extern int syna_tcm_set_static_config(struct tcm_dev *tcm, char *config,
                                      unsigned int length,
                                      unsigned int delay_ms);
extern int syna_tcm_set_touch_report_config(struct tcm_dev *tcm, char *config,
                                             unsigned int length,
                                             unsigned int delay_ms);
extern void syna_tcm_clear_command_processing(struct tcm_dev *tcm);
extern void syna_tcm_remove_device(struct tcm_dev *tcm);
extern void syna_tcm_v1_terminate(struct tcm_dev *tcm);
extern __int64 syna_tcm_buf_unlock(__int64 buffer);
extern int syna_dev_process_touch_report(unsigned char report_code,
                                         const unsigned char *payload,
                                         unsigned int length, void *context);
extern void syna_dev_reflash_startup_work(struct work_struct *work);
extern int syna_tcm_set_dynamic_config(struct tcm_dev *tcm, u8 config_id,
				      u16 value, unsigned int delay_ms);
extern int syna_tcm_get_dynamic_config(struct tcm_dev *tcm, u8 config_id,
				      u16 *value, unsigned int delay_ms);
extern int syna_tcm_enable_report(struct tcm_dev *tcm, u8 report_code,
				  bool enable, unsigned int delay_ms);
extern int syna_tcm_do_fw_update(struct tcm_dev *tcm_dev,
				 const unsigned char *image,
				 unsigned int image_size,
				 unsigned int flash_area,
				 bool force_reflash);
extern int syna_dev_do_reflash(struct syna_tcm *tcm, bool force);
extern __int64 syna_tcm_detect_device(__int64 a1, char a2, __int64 a3);
extern __int64 syna_tcm_parse_fw_image(__int64 a1, _QWORD a2, _QWORD *a3);
extern int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
				   unsigned int delay_ms);
extern __int64 syna_dev_set_up_input_device(__int64 a1);
extern int syna_tcm_get_boot_info(struct tcm_dev *tcm,
                                  struct tcm_boot_info *boot_info,
                                  unsigned int timeout_ms);
extern int syna_tcm_get_app_info(struct tcm_dev *tcm,
                                 struct tcm_application_info *app_info,
                                 unsigned int timeout_ms);
extern int syna_tcm_get_features(struct tcm_dev *tcm,
                                 struct tcm_features_info *features,
                                 unsigned int timeout_ms);
extern int syna_tcm_identify(struct tcm_dev *tcm,
                             struct tcm_identification_info *identify_info,
                             unsigned int timeout_ms);
extern int syna_dev_process_unexpected_reset(unsigned char report_code,
                                             const unsigned char *payload,
                                             unsigned int length, void *context);
extern irqreturn_t syna_dev_isr(int irq, void *data);
extern __poll_t syna_poll(struct file *file,
			  struct poll_table_struct *wait);
extern long syna_ioctl(struct file *file, unsigned int cmd,
		       unsigned long arg);
extern void syna_spi_hw_reset(struct syna_hw_interface *hw_if);
extern int syna_dev_set_screen_on_fp_mode(struct syna_tcm *tcm,
					  unsigned int enable);
extern void ufp_report_gesture_uevent(char *event);

extern int syna_usb_detect_flag;
struct drm_panel;
extern struct drm_panel *active_panel;
extern struct file_operations zte_fops;
extern void syna_dev_helper_work(struct work_struct *work);
extern int tpd_goodix_ts_resume(void *pdev);
extern int tpd_goodix_ts_suspend(void *pdev);
enum flash_area { FLASH_AREA_UNKNOWN = 0 };
extern char *syna_tcm_get_partition_id_string(enum flash_area partition_id);

// _flush_workqueue -> flush_workqueue
#define _flush_workqueue(wq) flush_workqueue((struct workqueue_struct *)(wq))

// Decompiler register stubs - nop on GKI
#define SP_EL0 0
#define DAIF 0
#define TTBR1_EL1 0
#define TTBR0_EL1 0
static inline unsigned long read_sp_el0(void) {
    unsigned long val;
    __asm__ __volatile__("mrs %0, sp_el0" : "=r" (val));
    return val;
}
#define _ReadStatusReg(x) read_sp_el0()
#define _WriteStatusReg(x, y) ((void)0)
#define __isb(x) ((void)0)

// Standard kernel copy wrappers
#define _arch_copy_from_user(to, from, n) raw_copy_from_user((void *)(to), (const void __user *)(from), (n))
#define _arch_copy_to_user(to, from, n) raw_copy_to_user((void __user *)(to), (const void *)(from), (n))

// Ghidra C++ identifier -> C
#define nullptr NULL

// Signed HIDWORD extraction (used by process_reports)
#define SHIDWORD(x) ((int)(*((int*)&(x)+1)))

// Ghidra drops one leading underscore from these exported fortify helpers.
#define _fortify_panic(a, b, c) __fortify_panic((a), (b), (c))
#define _copy_overflow(a, b) __copy_overflow((a), (b))

// Kernel function name mapping (single vs double underscore)
#define _init_waitqueue_head __init_waitqueue_head
#define _this_module __this_module
#define _spi_register_driver __spi_register_driver
#define _platform_driver_register __platform_driver_register
#define _list_del_entry_valid_or_report(entry) list_del((struct list_head *)(entry))
#define _list_add_valid_or_report(new, head) ((void)0)
#define _kmalloc_noprof(size, flags) kmalloc(size, GFP_KERNEL)
#define _wake_up(wq, mode, nr, key) wake_up((struct wait_queue_head *)(wq))

// Ghidra condition flags (zero flag etc.) - must be assignable
extern int _ZF;

// Void-return function wrappers (decompiler assigns void returns to __int64)
// Use GCC statement expressions so they can be used in expression context
static inline __int64 zte_devm_kfree_wrap(void *dev, void *ptr) {
    devm_kfree((struct device *)dev, (const void *)ptr);
    return 0;
}
#undef devm_kfree
#define devm_kfree(dev, ptr) zte_devm_kfree_wrap((void*)(dev), (void*)(ptr))



#undef gpio_free
static inline int wrap_gpio_free(unsigned int gpio) {
    gpio_free(gpio);
    return 0;
}
#define gpio_free(gpio, ...) wrap_gpio_free(gpio)

#undef mutex_unlock
#define mutex_unlock(lock) ({ mutex_unlock((struct mutex *)(lock)); 0LL; })

#undef unregister_chrdev_region
#define unregister_chrdev_region(start, count) ({ unregister_chrdev_region(start, count); 0LL; })

// Missing global variables
extern int syna_cdev_push_data_to_fifo_pre_remaining_frames;
extern void one_key_report(int active, int x, int y, int finger_id);
extern void uf_touch_report(int active, int x, int y, int finger_id);
extern __int64 syna_get_charger_status_batt_psy;
extern char DEVICE_NODE_NAME[100];

// Missing function forward declarations
extern int syna_cdev_process_reports(unsigned char report_code,
                                     const unsigned char *payload,
                                     unsigned int length, void *context);
extern int syna_cdev_open(struct inode *inode, struct file *filp);
extern int syna_cdev_release(struct inode *inode, struct file *filp);
extern int syna_tcm_get_event_data(struct tcm_dev *tcm_dev, u8 *code,
				   struct tcm_buffer *event_data);
extern int syna_tcm_buf_copy_2(struct tcm_buffer *dst,
			       struct tcm_buffer *src);
extern int syna_tcm_run_production_test(struct tcm_dev *tcm_dev,
					unsigned char test_code,
					struct tcm_buffer *test_data,
					unsigned int response_mode);
extern int syna_tcm_sleep(struct tcm_dev *tcm, bool enable,
			  unsigned int delay_ms);
extern __int64 syna_dev_enable_lowpwr_gesture(_QWORD *a1, char a2, unsigned int a3);
extern __int64 tpd_touch_release(__int64 result, unsigned __int16 a2, int a3);
extern struct ufp_tp_ops_struct ufp_tp_ops;

/* KCFI recovered the stock tag as enum lcdchange (0..3). */
enum lcdchange {
    LCDCHANGE_EXIT_LP = 0,
    LCDCHANGE_ENTER_LP = 1,
    LCDCHANGE_ON = 2,
    LCDCHANGE_OFF = 3,
};

extern int current_lcd_state;
extern char panel_enter_low_power;
extern int get_tp_algo_item_id(char *name);
extern void change_tp_state(enum lcdchange state);
extern int set_gpio_mode(u8 mode);
extern void syna_ts_panel_notifier_callback(enum panel_event_notifier_tag tag, struct panel_event_notification *notification, void *client_data);
extern int syna_work_charger_detect_work_status;

struct point_info_struct {
    int x;                         /* 0x00 */
    int y;                         /* 0x04 */
    unsigned char touch_major;     /* 0x08 */
    unsigned char touch_minor;     /* 0x09 */
    unsigned char reserved_000a[14];
    int down_x;                    /* 0x18 */
    int down_y;                    /* 0x1c */
    unsigned char reserved_0020[4];
    int up_x;                      /* 0x24 */
    int up_y;                      /* 0x28 */
    unsigned char reserved_002c[36];
    unsigned char field_80;        /* 0x50 */
    unsigned char reserved_0051[2];
    unsigned char field_83;        /* 0x53 */
    unsigned char field_84;        /* 0x54 */
    unsigned char reserved_0055[7];
    unsigned short ghost_count;    /* 0x5c */
    unsigned short ghost_active;   /* 0x5e */
    unsigned long last_stamp;      /* 0x60 */
    unsigned long reserved_0068;   /* 0x68 */
    unsigned long timestamp;       /* 0x70 */
    unsigned long duration;        /* 0x78 */
    struct input_dev *input;       /* 0x80 */
};

static_assert(offsetof(struct point_info_struct, down_x) == 0x18);
static_assert(offsetof(struct point_info_struct, up_x) == 0x24);
static_assert(offsetof(struct point_info_struct, ghost_count) == 0x5c);
static_assert(offsetof(struct point_info_struct, ghost_active) == 0x5e);
static_assert(sizeof(struct point_info_struct) == 0x88);

struct tpd_firmware_data {
    size_t size;
    void *data;
    u8 reserved_0010[8];
};

static_assert(offsetof(struct tpd_firmware_data, data) == 0x08);
static_assert(sizeof(struct tpd_firmware_data) == 0x18);
extern __int64 edge_long_press_up(struct input_dev *input, int index);

extern int large_area_ignore_count;
extern int large_area_uevent_count;
extern int syna_tcm_v1_read_message(struct tcm_dev *tcm_dev, u8 *code);
extern int syna_tcm_v1_write_message(struct tcm_dev *tcm, u8 command,
				      u8 *payload, u32 length,
				      u8 *response_code, u32 delay_ms);

// Charger & TPD callback functions
extern void syna_work_charger_detect_work(struct work_struct *work);
extern int syna_charger_notify_call(struct notifier_block *notifier,
                                    unsigned long event, void *data);
extern int tpd_init_tpinfo(struct ztp_device *cdev);
extern int tpd_get_wakegesture(struct ztp_device *cdev);
extern int tpd_enable_wakegesture(struct ztp_device *cdev, int value);
extern int tpd_get_singlegamegesture(struct ztp_device *cdev);
extern int tpd_set_singlegamegesture(struct ztp_device *cdev, int value);
extern int tpd_get_singleaodgesture(struct ztp_device *cdev);
extern int tpd_set_singleaodgesture(struct ztp_device *cdev, int value);
extern int tpd_get_singlefpgesture(struct ztp_device *cdev);
extern int tpd_set_singlefpgesture(struct ztp_device *cdev, int value);
extern int tpd_set_one_key(struct ztp_device *cdev, int value);
extern int tpd_get_one_key(struct ztp_device *cdev);
extern int tpd_test_cmd_store(struct ztp_device *cdev);
extern int tpd_test_cmd_show(struct ztp_device *cdev, char *buffer);
extern int tpd_get_tp_report_rate(struct ztp_device *cdev);
extern int tpd_set_tp_report_rate(struct ztp_device *cdev, int value);
extern int tpd_get_sensibility_level(struct ztp_device *cdev);
extern int tpd_set_sensibility_level(struct ztp_device *cdev, unsigned char value);
extern int tpd_get_follow_hand_level(struct ztp_device *cdev);
extern int tpd_set_follow_hand_level(struct ztp_device *cdev, int value);
extern int tpd_get_stability_level(struct ztp_device *cdev);
extern int tpd_set_stability_level(struct ztp_device *cdev, int value);
extern int tpd_get_rotation_limit_level(struct ztp_device *cdev);
extern int tpd_set_rotation_limit_level(struct ztp_device *cdev, int value);
extern int tpd_set_display_rotation(struct ztp_device *cdev, int value);
extern int tpd_get_play_game(struct ztp_device *cdev);
extern int tpd_set_play_game(struct ztp_device *cdev, int value);
extern int tpd_set_game_partition(struct ztp_device *cdev, char *buffer);
extern int tpd_get_frame_data(struct ztp_device *cdev);
extern int tpd_set_frame_data(struct ztp_device *cdev, int value);
extern int tpd_set_fake_sleep(struct ztp_device *cdev, int value);
extern int tpd_get_fake_sleep(struct ztp_device *cdev);
extern int tpd_set_screen_off_awake(struct ztp_device *cdev, int value);
extern int tpd_get_screen_off_awake(struct ztp_device *cdev);
extern int tpd_get_palm_mode(struct ztp_device *cdev);
extern int tpd_set_palm_mode(struct ztp_device *cdev, int value);
extern int syna_ghost_check_reset(struct ztp_device *cdev);

// Testing check and helper functions
bool syna_tcm_testing_0100_check_data(void *data, void *limit,
                                      int column, int row);
bool syna_tcm_testing_0500_check_upper_bound(void *data, void *limit,
                                             int column, int row);
bool syna_tcm_testing_0500_check_lower_bound(void *data, void *limit,
                                             int column, int row);
bool syna_tcm_testing_0A00_check_upper_bound(void *data, void *limit,
                                             int column, int row);
bool syna_tcm_testing_0A00_check_lower_bound(void *data, void *limit,
                                             int column, int row);
__int64 syna_tcm_testing_check_frame_data(__int64 a1, unsigned __int64 a2, __int64 a3, int a4, _DWORD *a5, __int64 a6, unsigned __int64 a7);
__int64 syna_tcm_testing_check_frame_data_0(__int64 a1, unsigned __int64 a2, __int64 a3, int a4, _DWORD *a5, __int64 a6, unsigned __int64 a7);

extern void tpd_id0_report_work(struct work_struct *work);
extern void tpd_id1_report_work(struct work_struct *work);
extern void tpd_id2_report_work(struct work_struct *work);
extern void tpd_id3_report_work(struct work_struct *work);
extern void tpd_id4_report_work(struct work_struct *work);
extern void tpd_id5_report_work(struct work_struct *work);
extern void tpd_id6_report_work(struct work_struct *work);
extern void tpd_id7_report_work(struct work_struct *work);
extern void tpd_id8_report_work(struct work_struct *work);
extern void tpd_id9_report_work(struct work_struct *work);
extern void ztp_probe_work(struct work_struct *work);
extern void tpd_resume_work(struct work_struct *work);
extern void tpd_suspend_work(struct work_struct *work);
extern void ufp_report_lcd_state_work(struct work_struct *work);
extern bool tp_esd_check(void);
extern bool tp_ghost_check(void);
extern int tp_alloc_tp_firmware_data(int size);
extern int tpd_copy_to_tp_firmware_data(char *data);
extern ssize_t tpd_sysfs_fwimage_show(struct file *file, struct kobject *kobj,
                                      struct bin_attribute *attr, char *buffer,
                                      loff_t offset, size_t count);
extern ssize_t tpd_sysfs_fwimage_store(struct file *file, struct kobject *kobj,
                                       struct bin_attribute *attr, char *buffer,
                                       loff_t offset, size_t count);
extern void tp_ghost_check_work(struct work_struct *work);
extern void ufp_single_tap_work(struct work_struct *work);
extern void set_lcd_reset_processing(unsigned char value);
extern void tpd_report_uevent(unsigned char value);
extern void tpd_reset_gpio_output(unsigned char value);


// Stock void(void) callback family recovered from KCFI.
extern void cancel_report_lcd_state_delayed_work(void);
extern void syna_dev_module_exit(void);
extern void syna_hw_interface_exit(void);
extern void tp_free_tp_firmware_data(void);
extern void tpd_clean_all_event(void);
extern void tpd_probe_work_deinit(void);
extern void tpd_probe_work_init(void);
extern void tpd_proc_deinit(void);
extern void tpd_report_work_deinit(void);
extern void tpd_reset_fw_data_pos_and_size(void);
extern void tpd_resume_work_deinit(void);
extern void tpd_resume_work_init(void);
extern void tpd_workqueue_deinit(void);
extern void ufp_mac_exit(void);
extern void ufp_report_lcd_state(void);

// Injected globals
#include "globals.h"
#include "zte_tpd_zlog.h"

#endif // _DEFS_H
