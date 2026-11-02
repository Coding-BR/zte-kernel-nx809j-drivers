#include <linux/fs.h>
#include <linux/cdev.h>

#undef syna_cdev_create___key

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

static const struct file_operations device_fops = {
    .owner = THIS_MODULE,
    .llseek = syna_cdev_llseek,
    .read = syna_cdev_read,
    .write = syna_cdev_write,
    .unlocked_ioctl = syna_cdev_ioctls,
    .open = syna_cdev_open,
    .release = syna_cdev_release,
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
  g_cdev_data = (__int64)data;
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
  struct device *dev = device_create(cl, NULL, tcm->cdev_num, NULL, "tcm%d", tcm->cdev_num & 0xFFFFF);
  if ( IS_ERR(dev) )
  {
    printk("\0013[error] %s: Fail to create character device\n",
            "syna_cdev_create");
    class_destroy(cl);
    LODWORD(v5) = -2;
    goto LABEL_14;
  }
  tcm->cdev_device = dev;
  syna_cdev_global_state.qword_31700_high = 0;
  tcm->cdev_class = cl;

  tcm->cdev_frame_count = 0;
  INIT_LIST_HEAD(&tcm->frame_list);
  _init_waitqueue_head(&tcm->wait_frame, "&tcm->wait_frame", &__key);
  LODWORD(v5) = 0;
  return (unsigned int)v5;

log_error:
  printk(v6, "syna_cdev_create");
  return (unsigned int)v5;
}
