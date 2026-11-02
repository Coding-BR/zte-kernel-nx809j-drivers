#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/errno.h>
#include <linux/atomic.h>
#include <linux/mutex.h>
#include <linux/wait.h>

#undef syna_cdev_create___key

DEFINE_MUTEX(syna_cdev_lifecycle_mutex);
bool syna_cdev_lifecycle_online;
unsigned long syna_cdev_lifecycle_generation;
static atomic_t syna_cdev_active_operations = ATOMIC_INIT(0);
static DECLARE_WAIT_QUEUE_HEAD(syna_cdev_active_wait);
static struct syna_tcm *syna_cdev_lifecycle_tcm;
static bool syna_cdev_waitqueue_initialized;

static void syna_cdev_operation_put(void)
{
    if (atomic_dec_and_test(&syna_cdev_active_operations))
        wake_up_all(&syna_cdev_active_wait);
}

static bool syna_cdev_operation_get(struct file *filp,
                                    unsigned long *generation)
{
    bool valid;

    mutex_lock(&syna_cdev_lifecycle_mutex);
    valid = READ_ONCE(syna_cdev_lifecycle_online) && g_cdev_data &&
            (!filp || filp->private_data ==
                          (void *)(unsigned long)
                              syna_cdev_lifecycle_generation);
    if (valid) {
        atomic_inc(&syna_cdev_active_operations);
        if (generation)
            *generation = syna_cdev_lifecycle_generation;
    }
    mutex_unlock(&syna_cdev_lifecycle_mutex);
    return valid;
}

void syna_cdev_quiesce(void)
{
    struct syna_tcm *tcm;

    mutex_lock(&syna_cdev_lifecycle_mutex);
    if (READ_ONCE(syna_cdev_lifecycle_online)) {
        WRITE_ONCE(syna_cdev_lifecycle_online, false);
        ++syna_cdev_lifecycle_generation;
        if (!syna_cdev_lifecycle_generation)
            ++syna_cdev_lifecycle_generation;
    }
    tcm = syna_cdev_waitqueue_initialized ? syna_cdev_lifecycle_tcm : NULL;
    mutex_unlock(&syna_cdev_lifecycle_mutex);

    if (tcm)
        wake_up_all(&tcm->wait_frame);
    wait_event(syna_cdev_active_wait,
               atomic_read(&syna_cdev_active_operations) == 0);
}

void syna_cdev_clear_global_data(void)
{
    syna_cdev_quiesce();
    mutex_lock(&syna_cdev_lifecycle_mutex);
    g_cdev_data = 0;
    syna_cdev_lifecycle_tcm = NULL;
    syna_cdev_waitqueue_initialized = false;
    mutex_unlock(&syna_cdev_lifecycle_mutex);
}

extern ssize_t syna_cdev_read(struct file *file, char __user *buffer,
                              size_t count, loff_t *offset);
extern ssize_t syna_cdev_write(struct file *file, const char __user *buffer,
                               size_t count, loff_t *offset);
extern loff_t syna_cdev_llseek(struct file *file, loff_t offset, int whence);
extern long syna_cdev_ioctls(struct file *file, unsigned int cmd,
                             unsigned long arg);
extern int syna_cdev_open(struct inode *inode, struct file *filp);
extern int syna_cdev_release(struct inode *inode, struct file *filp);
extern char *syna_cdev_devnode(const struct device *device, umode_t *mode);

static int device_open(struct inode *inode, struct file *filp)
{
    int ret;
    unsigned long generation;

    filp->private_data = NULL;
    if (!syna_cdev_operation_get(NULL, &generation))
        return -ENODEV;
    ret = syna_cdev_open(inode, filp);
    if (!ret)
        filp->private_data = (void *)(unsigned long)generation;
    syna_cdev_operation_put();
    return ret;
}

static int device_release(struct inode *inode, struct file *filp)
{
    int ret = 0;

    if (syna_cdev_operation_get(filp, NULL)) {
        ret = syna_cdev_release(inode, filp);
        syna_cdev_operation_put();
    }
    filp->private_data = NULL;
    return ret;
}

static ssize_t device_read(struct file *filp, char __user *buffer,
                           size_t count, loff_t *offset)
{
    ssize_t ret;

    if (!syna_cdev_operation_get(filp, NULL))
        return -ENODEV;
    ret = syna_cdev_read(filp, buffer, count, offset);
    syna_cdev_operation_put();
    return ret;
}

static ssize_t device_write(struct file *filp, const char __user *buffer,
                            size_t count, loff_t *offset)
{
    ssize_t ret;

    if (!syna_cdev_operation_get(filp, NULL))
        return -ENODEV;
    ret = syna_cdev_write(filp, buffer, count, offset);
    syna_cdev_operation_put();
    return ret;
}

static long device_ioctl(struct file *filp, unsigned int cmd,
                         unsigned long arg)
{
    long ret;

    if (!syna_cdev_operation_get(filp, NULL))
        return -ENODEV;
    ret = syna_cdev_ioctls(filp, cmd, arg);
    syna_cdev_operation_put();
    return ret;
}

static const struct file_operations device_fops = {
    .owner = THIS_MODULE,
    .llseek = syna_cdev_llseek,
    .read = device_read,
    .write = device_write,
    .unlocked_ioctl = device_ioctl,
    .open = device_open,
    .release = device_release,
};

int syna_cdev_create(struct syna_tcm *tcm, struct platform_device *data)
{
  static int cdev_major_num;
  static struct lock_class_key mutex_key;
  static struct lock_class_key __key;
  int v3; // w0
  unsigned __int64 v5; // x20
  void *v6; // x0
  int v7; // w0
  __int64 v8; // x1
  int v9; // w0

  __builtin_memset(&syna_cdev_global_state, 0, sizeof(syna_cdev_global_state));
  mutex_lock(&syna_cdev_lifecycle_mutex);
  WRITE_ONCE(syna_cdev_lifecycle_online, false);
  ++syna_cdev_lifecycle_generation;
  if (!syna_cdev_lifecycle_generation)
    ++syna_cdev_lifecycle_generation;
  g_cdev_data = (__int64)data;
  syna_cdev_lifecycle_tcm = tcm;
  syna_cdev_waitqueue_initialized = false;
  mutex_unlock(&syna_cdev_lifecycle_mutex);
  tcm->cdev_class = NULL;
  tcm->cdev_device = NULL;
  _mutex_init(&qword_316A0, "(struct mutex *)ptr", &mutex_key);
  _mutex_init(&qword_316D0, "(struct mutex *)ptr", &mutex_key);
  LOBYTE(qword_31698) = 0;
  qword_31658 = 0;
  qword_31660 = 0;
  _mutex_init(&qword_31668, "(struct mutex *)ptr", &mutex_key);
  if ( !cdev_major_num )
    goto allocate_cdev;

  tcm->cdev_num = cdev_major_num << 20;
  v3 = register_chrdev_region(tcm->cdev_num, 1, "synaptics_tcm");
  if ( v3 < 0 )
  {
    LODWORD(v5) = v3;
    v6 = "\0013[error] %s: Fail to register char device\n";
    goto log_error;
  }
  goto cdev_ready;

allocate_cdev:
  v7 = alloc_chrdev_region(&tcm->cdev_num, 0, 1, "synaptics_tcm");
  if ( v7 < 0 )
  {
    LODWORD(v5) = v7;
    v6 = "\0013[error] %s: Fail to allocate char device\n";
    goto log_error;
  }
  cdev_major_num = tcm->cdev_num >> 20;

cdev_ready:
  cdev_init(&tcm->cdev, &device_fops);
  v8 = tcm->cdev_num;
  tcm->cdev.owner = THIS_MODULE;
  v9 = cdev_add(&tcm->cdev, v8, 1);
  if ( v9 < 0 )
  {
    LODWORD(v5) = v9;
    printk("\0013[error] %s: Fail to add cdev_add\n",
           "syna_cdev_create");
LABEL_15:
    unregister_chrdev_region(tcm->cdev_num, 1);
    syna_cdev_clear_global_data();
    return (unsigned int)v5;
  }

  struct class *cl = class_create("synaptics_tcm");
  if ( IS_ERR(cl) )
  {
    LODWORD(v5) = PTR_ERR(cl);
    printk("\0013[error] %s: Fail to create device class\n",
           "syna_cdev_create");
LABEL_14:
    cdev_del(&tcm->cdev);
    goto LABEL_15;
  }
  cl->devnode = syna_cdev_devnode;
  tcm->cdev_class = cl;
  tcm->cdev_frame_count = 0;
  INIT_LIST_HEAD(&tcm->frame_list);
  _init_waitqueue_head(&tcm->wait_frame, "&tcm->wait_frame", &__key);
  syna_cdev_global_state.qword_31700_high = 0;
  mutex_lock(&syna_cdev_lifecycle_mutex);
  syna_cdev_waitqueue_initialized = true;
  WRITE_ONCE(syna_cdev_lifecycle_online, true);
  mutex_unlock(&syna_cdev_lifecycle_mutex);
  struct device *dev = device_create(cl, NULL, tcm->cdev_num, NULL, "tcm%d", tcm->cdev_num & 0xFFFFF);
  if ( IS_ERR(dev) )
  {
    syna_cdev_quiesce();
    tcm->cdev_class = NULL;
    printk("\0013[error] %s: Fail to create character device\n",
            "syna_cdev_create");
    class_destroy(cl);
    LODWORD(v5) = -2;
    goto LABEL_14;
  }
  tcm->cdev_device = dev;
  LODWORD(v5) = 0;
  return (unsigned int)v5;

log_error:
  syna_cdev_clear_global_data();
  printk(v6, "syna_cdev_create");
  return (unsigned int)v5;
}
