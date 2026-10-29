struct file;
typedef unsigned long size_t;
typedef signed long ssize_t;
typedef signed long long loff_t;
ssize_t probe_richtap_write(struct file *file, const char *buf, size_t count, loff_t *pos)
{
    (void)file;
    (void)buf;
    (void)pos;
    return (ssize_t)count;
}
