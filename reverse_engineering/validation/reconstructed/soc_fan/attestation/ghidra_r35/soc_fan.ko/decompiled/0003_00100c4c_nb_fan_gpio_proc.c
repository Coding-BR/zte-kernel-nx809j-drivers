
int nb_fan_gpio_proc(long *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined8 uVar3;
  
  if (param_1[1] != 0) {
    uVar3 = *(undefined8 *)(*param_1 + 0x2e8);
    uVar1 = of_get_named_gpio(uVar3,"fan,speed-gpio",0);
    *(undefined4 *)(param_1[1] + 0x14) = uVar1;
    if (*(int *)(param_1[1] + 0x14) < 0) {
      _printk(&DAT_00101ac1,"NB_FAN","nb_fan_gpio_proc",0x343);
      iVar2 = *(int *)(param_1[1] + 0x14);
    }
    else {
      iVar2 = gpio_request(*(int *)(param_1[1] + 0x14),"fan_speed_gpio");
      if (iVar2 == 0) {
        gpio_to_desc(*(undefined4 *)(param_1[1] + 0x14));
        uVar1 = gpiod_to_irq();
        *(undefined4 *)(param_1[1] + 0x1c) = uVar1;
        iVar2 = request_threaded_irq
                          (*(undefined4 *)(param_1[1] + 0x1c),fan_speed_irq_proc,0,0x200002,
                           "fan_speed_int",param_1);
        if (iVar2 < 0) {
          _printk(&DAT_001020b5);
        }
        else {
          disable_irq(*(undefined4 *)(param_1[1] + 0x1c));
          uVar1 = of_get_named_gpio(uVar3,"fan,pwm-gpio",0);
          *(undefined4 *)(param_1[1] + 0x10) = uVar1;
          if (*(int *)(param_1[1] + 0x10) < 0) {
            _printk(&DAT_001021ae,"NB_FAN","nb_fan_gpio_proc",0x355);
            iVar2 = *(int *)(param_1[1] + 0x10);
          }
          else {
            gpio_to_desc();
            uVar1 = gpiod_get_raw_value();
            _printk(&DAT_00102405,"NB_FAN","nb_fan_gpio_proc",0x358,uVar1);
            iVar2 = 0;
          }
        }
      }
      else {
        _printk(&DAT_00102388,"NB_FAN","nb_fan_gpio_proc",0x348);
      }
    }
    return iVar2;
  }
  return -0x13;
}

