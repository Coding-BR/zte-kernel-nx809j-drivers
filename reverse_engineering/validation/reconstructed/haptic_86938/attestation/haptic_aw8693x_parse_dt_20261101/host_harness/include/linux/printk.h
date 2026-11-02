#ifndef PARSE_DT_HOST_PRINTK_H
#define PARSE_DT_HOST_PRINTK_H
#define KERN_INFO "\001" "6"
int printk(const char *format, ...);
#endif
