// Alternative name is 'init_module'
int __init zte_touch_init(void)
{
  printk("\0015tpd: %s into\n", "zte_touch_init");
  return _platform_driver_register(&zte_touch_device_driver, THIS_MODULE);
}
module_init(zte_touch_init);
