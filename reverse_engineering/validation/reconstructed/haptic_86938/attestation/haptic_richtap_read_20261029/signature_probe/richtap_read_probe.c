struct file;
typedef unsigned long size_t;
typedef signed long ssize_t;
typedef signed long long loff_t;
ssize_t probe_richtap_read(struct file *file, char *buf, size_t count, loff_t *pos)
{
    (void)file;
    (void)buf;
    (void)count;
    (void)pos;
    return 0;
}
