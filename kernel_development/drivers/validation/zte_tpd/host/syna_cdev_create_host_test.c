#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef int64_t loff_t;
typedef int64_t ssize_t;
typedef uint32_t dev_t;
typedef uint16_t umode_t;

#define __int64 long long
#define __user
#define _QWORD uint64_t
#define _DWORD uint32_t
#define LODWORD(value) (*(uint32_t *)&(value))
#define LOBYTE(value) (*(uint8_t *)&(value))
#define THIS_MODULE (&test_module)
#define IS_ERR(value) ((intptr_t)(value) < 0 && (intptr_t)(value) >= -4095)
#define ERR_PTR(value) ((void *)(intptr_t)(value))
#define PTR_ERR(value) ((long)(intptr_t)(value))

struct file;
struct inode;
struct vm_area_struct;
struct poll_table_struct;
struct platform_device;
struct device;
struct class;
struct lock_class_key { uint8_t opaque; };
struct list_head { struct list_head *next; struct list_head *prev; };
struct wait_queue_head { uint8_t opaque[0x18]; };
typedef struct wait_queue_head wait_queue_head_t;

struct file_operations {
    void *owner;
    int (*open)(struct inode *, struct file *);
    int (*release)(struct inode *, struct file *);
    ssize_t (*read)(struct file *, char *, size_t, loff_t *);
    ssize_t (*write)(struct file *, const char *, size_t, loff_t *);
    loff_t (*llseek)(struct file *, loff_t, int);
    long (*unlocked_ioctl)(struct file *, unsigned int, unsigned long);
    long (*compat_ioctl)(struct file *, unsigned int, unsigned long);
    unsigned int (*poll)(struct file *, struct poll_table_struct *);
    int (*mmap)(struct file *, struct vm_area_struct *);
};

struct cdev {
    uint8_t reserved_0000[0x60];
    void *owner;
};

struct class {
    char *(*devnode)(const struct device *device, umode_t *mode);
};

struct device { uint8_t opaque; };

struct syna_tcm {
    uint8_t reserved_0000[0x2f8];
    struct cdev cdev;
    uint8_t reserved_0360[0x20];
    dev_t cdev_num;
    uint32_t cdev_frame_count;
    struct class *cdev_class;
    struct device *cdev_device;
    uint8_t reserved_0398_to_04f8[0x160];
    struct list_head frame_list;
    wait_queue_head_t wait_frame;
};

struct syna_cdev_global_state {
    __int64 g_cdev_data;
    uint64_t qword_31658;
    uint64_t qword_31660;
    uint64_t qword_31668;
    uint64_t qword_31670;
    uint64_t qword_31678;
    uint64_t qword_31680;
    uint64_t qword_31688;
    uint64_t qword_31690;
    uint64_t qword_31698;
    uint64_t qword_316A0;
    uint64_t qword_316A8;
    uint64_t qword_316B0;
    uint64_t qword_316B8;
    uint64_t qword_316C0;
    uint64_t qword_316C8;
    uint64_t qword_316D0;
    uint64_t qword_316D8;
    uint64_t qword_316E0;
    uint64_t qword_316E8;
    uint64_t qword_316F0;
    uint64_t qword_316F8;
    union {
        uint64_t qword_31700;
        struct {
            uint32_t qword_31700_low;
            uint32_t qword_31700_high;
        };
    };
    uint64_t qword_31708;
    uint64_t qword_31710;
};

static int test_module;
static struct syna_cdev_global_state syna_cdev_global_state;

#define g_cdev_data syna_cdev_global_state.g_cdev_data
#define qword_31658 syna_cdev_global_state.qword_31658
#define qword_31660 syna_cdev_global_state.qword_31660
#define qword_31668 syna_cdev_global_state.qword_31668
#define qword_31698 syna_cdev_global_state.qword_31698
#define qword_316A0 syna_cdev_global_state.qword_316A0
#define qword_316D0 syna_cdev_global_state.qword_316D0
#define qword_31700 syna_cdev_global_state.qword_31700

static int alloc_result;
static int register_result;
static int cdev_add_result;
static struct class *class_result;
static struct device *device_result;
static struct class test_class;
static struct device test_device;
static unsigned int alloc_calls;
static unsigned int register_calls;
static unsigned int cdev_init_calls;
static unsigned int cdev_add_calls;
static unsigned int cdev_del_calls;
static unsigned int class_create_calls;
static unsigned int class_destroy_calls;
static unsigned int device_create_calls;
static unsigned int unregister_calls;
static unsigned int printk_calls;
static const char *last_printk_format;
static const char *last_printk_name;
static const char *wait_name;
static struct lock_class_key *wait_key;
static dev_t last_registered_dev;
static dev_t last_unregistered_dev;

static int printk(const char *format, const char *name)
{
    printk_calls++;
    last_printk_format = format;
    last_printk_name = name;
    return 0;
}

static void _mutex_init(void *mutex, const char *name, struct lock_class_key *key)
{
    (void)mutex;
    (void)name;
    (void)key;
}

static int alloc_chrdev_region(dev_t *dev, unsigned int first_minor,
                               unsigned int count, const char *name)
{
    (void)first_minor;
    (void)count;
    (void)name;
    alloc_calls++;
    if (!alloc_result)
        *dev = UINT32_C(0x2ab00000);
    return alloc_result;
}

static int register_chrdev_region(dev_t dev, unsigned int count, const char *name)
{
    (void)count;
    (void)name;
    register_calls++;
    last_registered_dev = dev;
    return register_result;
}

static void cdev_init(struct cdev *cdev, const struct file_operations *fops)
{
    (void)cdev;
    (void)fops;
    cdev_init_calls++;
}

static int cdev_add(struct cdev *cdev, dev_t dev, unsigned int count)
{
    (void)cdev;
    (void)dev;
    (void)count;
    cdev_add_calls++;
    return cdev_add_result;
}

static void cdev_del(struct cdev *cdev)
{
    (void)cdev;
    cdev_del_calls++;
}

static struct class *class_create(const char *name)
{
    (void)name;
    class_create_calls++;
    return class_result;
}

static void class_destroy(struct class *class)
{
    (void)class;
    class_destroy_calls++;
}

static struct device *device_create(struct class *class, void *parent, dev_t dev,
                                    void *drvdata, const char *format, unsigned int minor)
{
    (void)class;
    (void)parent;
    (void)dev;
    (void)drvdata;
    (void)format;
    (void)minor;
    device_create_calls++;
    qword_31700 = UINT64_C(0xdeadbeefa5a5a5a5);
    return device_result;
}

static void unregister_chrdev_region(dev_t dev, unsigned int count)
{
    (void)count;
    unregister_calls++;
    last_unregistered_dev = dev;
}

static void init_list_head(struct list_head *head)
{
    head->next = head;
    head->prev = head;
}

#define INIT_LIST_HEAD(head) init_list_head(head)

static void _init_waitqueue_head(wait_queue_head_t *head, const char *name,
                                 struct lock_class_key *key)
{
    (void)head;
    wait_name = name;
    wait_key = key;
}

static int syna_cdev_open(struct inode *inode, struct file *file)
{
    (void)inode;
    (void)file;
    return 0;
}

static int syna_cdev_release(struct inode *inode, struct file *file)
{
    (void)inode;
    (void)file;
    return 0;
}

static unsigned int syna_poll(struct file *file, struct poll_table_struct *wait)
{
    (void)file;
    (void)wait;
    return 0;
}

static __int64 syna_cdev_read(__int64 a1, __int64 a2, __int64 a3)
{
    (void)a1;
    (void)a2;
    (void)a3;
    return 0;
}

static __int64 syna_cdev_write(__int64 a1, __int64 a2, __int64 a3)
{
    (void)a1;
    (void)a2;
    (void)a3;
    return 0;
}

static loff_t syna_cdev_llseek(struct file *file, loff_t offset, int whence)
{
    (void)file;
    (void)offset;
    (void)whence;
    return 0;
}

static __int64 syna_cdev_ioctls(__int64 a1, unsigned char a2, unsigned __int64 a3)
{
    (void)a1;
    (void)a2;
    (void)a3;
    return 0;
}

static int syna_mmap(struct file *file, struct vm_area_struct *vma)
{
    (void)file;
    (void)vma;
    return 0;
}

static char *syna_cdev_devnode(const struct device *device, umode_t *mode)
{
    (void)device;
    (void)mode;
    return NULL;
}

#include "../../../reconstructed/zte_tpd/syna_cdev_create.c"

static void reset_environment(void)
{
    alloc_result = 0;
    register_result = 0;
    cdev_add_result = 0;
    class_result = &test_class;
    device_result = &test_device;
    alloc_calls = 0;
    register_calls = 0;
    cdev_init_calls = 0;
    cdev_add_calls = 0;
    cdev_del_calls = 0;
    class_create_calls = 0;
    class_destroy_calls = 0;
    device_create_calls = 0;
    unregister_calls = 0;
    printk_calls = 0;
    last_printk_format = NULL;
    last_printk_name = NULL;
    wait_name = NULL;
    wait_key = NULL;
    last_registered_dev = 0;
    last_unregistered_dev = 0;
    memset(&test_class, 0, sizeof(test_class));
    memset(&syna_cdev_global_state, 0xa5, sizeof(syna_cdev_global_state));
}

static int expect(int condition, const char *message)
{
    if (condition)
        return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}

static int expect_error_log(const char *format)
{
    return expect(printk_calls == 1 && last_printk_format != NULL &&
                  strcmp(last_printk_format, format) == 0 &&
                  strcmp(last_printk_name, "syna_cdev_create") == 0,
                  "unexpected error log");
}

static int test_allocate_failure(void)
{
    struct syna_tcm tcm = {0};
    struct platform_device *data = (struct platform_device *)(uintptr_t)0x1234;

    reset_environment();
    alloc_result = -12;
    if (expect(syna_cdev_create(&tcm, data) == -12, "alloc failure return"))
        return 1;
    if (expect(alloc_calls == 1 && register_calls == 0 && cdev_add_calls == 0,
               "alloc failure call sequence"))
        return 1;
    return expect_error_log("\0013[error] %s: Fail to allocate char device\n");
}

static int test_success(void)
{
    struct syna_tcm tcm = {0};
    struct platform_device *data = (struct platform_device *)(uintptr_t)0x5678;

    reset_environment();
    if (expect(syna_cdev_create(&tcm, data) == 0, "success return"))
        return 1;
    if (expect(alloc_calls == 1 && register_calls == 0 && cdev_init_calls == 1 &&
               cdev_add_calls == 1 && class_create_calls == 1 && device_create_calls == 1,
               "success call sequence"))
        return 1;
    if (expect(tcm.cdev_class == &test_class && tcm.cdev_device == &test_device &&
               tcm.cdev.owner == THIS_MODULE && tcm.cdev_frame_count == 0 &&
               tcm.frame_list.next == &tcm.frame_list && tcm.frame_list.prev == &tcm.frame_list,
               "success state"))
        return 1;
    if (expect(g_cdev_data == (__int64)data && test_class.devnode == syna_cdev_devnode &&
               wait_name != NULL && strcmp(wait_name, "&tcm->wait_frame") == 0 && wait_key != NULL,
               "success globals"))
        return 1;
    return expect(qword_31700 == 0x00000000a5a5a5a5ULL,
                  "high word clear must preserve low word");
}

static int test_register_failure(void)
{
    struct syna_tcm tcm = {0};

    reset_environment();
    register_result = -17;
    if (expect(syna_cdev_create(&tcm, NULL) == -17, "register failure return"))
        return 1;
    if (expect(alloc_calls == 0 && register_calls == 1 && cdev_add_calls == 0 &&
               unregister_calls == 0, "register failure cleanup"))
        return 1;
    return expect_error_log("\0013[error] %s: Fail to register char device\n");
}

static int test_cdev_add_failure(void)
{
    struct syna_tcm tcm = {0};

    reset_environment();
    cdev_add_result = -19;
    if (expect(syna_cdev_create(&tcm, NULL) == -19, "cdev_add failure return"))
        return 1;
    if (expect(cdev_del_calls == 0 && unregister_calls == 1 &&
               last_unregistered_dev == last_registered_dev, "cdev_add cleanup"))
        return 1;
    return expect_error_log("\0013[error] %s: Fail to add cdev_add\n");
}

static int test_class_failure(void)
{
    struct syna_tcm tcm = {0};

    reset_environment();
    class_result = ERR_PTR(-22);
    if (expect(syna_cdev_create(&tcm, NULL) == -22, "class failure return"))
        return 1;
    if (expect(cdev_del_calls == 1 && class_destroy_calls == 0 && unregister_calls == 1,
               "class failure cleanup"))
        return 1;
    return expect_error_log("\0013[error] %s: Fail to create device class\n");
}

static int test_device_failure(void)
{
    struct syna_tcm tcm = {0};

    reset_environment();
    device_result = ERR_PTR(-99);
    if (expect(syna_cdev_create(&tcm, NULL) == -2, "device failure fixed return"))
        return 1;
    if (expect(cdev_del_calls == 1 && class_destroy_calls == 1 && unregister_calls == 1,
               "device failure cleanup"))
        return 1;
    return expect_error_log("\0013[error] %s: Fail to create character device\n");
}

int main(void)
{
    if (test_allocate_failure() || test_success() || test_register_failure() ||
        test_cdev_add_failure() || test_class_failure() || test_device_failure())
        return 1;
    puts("PASS syna_cdev_create host tests (6 cases)");
    return 0;
}
