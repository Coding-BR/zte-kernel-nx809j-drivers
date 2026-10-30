#define __int64 long long
#define __exit
struct platform_driver { unsigned long marker; };
extern struct platform_driver zte_touch_device_driver;
extern void platform_driver_unregister(struct platform_driver *);

extern void syna_dev_module_exit(void);
extern __int64 zte_touch_deinit(__int64, __int64, __int64);

void __exit cleanup_module(void)
{
  syna_dev_module_exit();
  zte_touch_deinit(0, 0, 0);
  platform_driver_unregister(&zte_touch_device_driver);
}
