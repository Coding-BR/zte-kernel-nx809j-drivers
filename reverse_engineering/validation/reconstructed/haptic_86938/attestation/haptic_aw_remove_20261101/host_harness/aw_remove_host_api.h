#ifndef AW_REMOVE_HOST_API_H
#define AW_REMOVE_HOST_API_H

#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef unsigned char u8;

#define KERN_INFO "\0016"

struct device { unsigned int marker; };
struct i2c_client { struct device dev; void *driver_data; };
struct delayed_work { unsigned int marker; };
struct work_struct { unsigned int marker; };
struct hrtimer { unsigned int marker; };
struct gpio_desc { unsigned int marker; };
struct page { unsigned long flags; };
struct miscdevice { unsigned int marker; };

u8 *i2c_get_clientdata(const struct i2c_client *client);
int printk(const char *format, ...);
int cancel_delayed_work_sync(struct delayed_work *work);
int cancel_work_sync(struct work_struct *work);
int hrtimer_cancel(struct hrtimer *timer);
struct gpio_desc *gpio_to_desc(int gpio);
int gpiod_to_irq(const struct gpio_desc *desc);
int devm_free_irq(struct device *device, int irq, void *dev_id);
void gpio_free(unsigned int gpio);
void kfree(const void *pointer);
struct page *virt_to_page(const void *address);
void clear_bit(unsigned int bit, volatile unsigned long *address);
void free_pages(unsigned long address, unsigned int order);
int misc_deregister(struct miscdevice *misc);

#endif
