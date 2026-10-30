int syna_dev_connect(struct syna_tcm *tcm)
{
  struct syna_dev_connect_hw_view {
    unsigned char reserved_0000[0x180];
    int (*power_on)(struct syna_hw_interface *, bool);
    void (*hw_reset)(struct syna_hw_interface *);
  };
  __int64 *a1 = (__int64 *)tcm;
  __int64 v3; // x20
  __int64 v5; // x21
  int (*v6)(struct syna_hw_interface *, bool); // x8
  int v12; // w0
  const char *v14; // x8
  int v15; // w19
  unsigned char v16; // w2
  int v19; // w0
  __int64 v21; // x21
  __int64 v22; // x0
  int v24; // w20
  const char *v25; // x0
  int v26; // w8
  __int64 v27; // x20
  void *v28; // x0
  unsigned int v29; // w0
  unsigned int v31; // w0
  const char *v34; // x2

  v3 = *a1;
  if ( !*a1 )
  {
    printk("\0013[error] %s: Invalid tcm_dev\n", "syna_dev_connect");
    return -22;
  }
  if ( *((_BYTE *)a1 + 1410) == 1 )
  {
    printk("\0016[info ] %s: Device %s already connected\n",
           "syna_dev_connect", "synaptics_tcm");
    return 0;
  }

  v5 = a1[78];
  v6 = ((struct syna_dev_connect_hw_view *)v5)->power_on;
  if ( v6 )
  {
    if ( (v6((struct syna_hw_interface *)v5, true) & 0x80000000) != 0 )
      return -19;
    if ( *(int *)(v5 + 340) >= 1 )
      msleep(*(int *)(v5 + 340));
  }
  {
    void (*hw_reset)(struct syna_hw_interface *) =
        ((struct syna_dev_connect_hw_view *)v5)->hw_reset;
    if ( hw_reset )
      hw_reset((struct syna_hw_interface *)v5);
  }

  v12 = syna_tcm_detect_device(*a1, 1, 0);
  if ( (int)v12 < 0 )
  {
    v14 = "\0013[error] %s: Fail to detect the device\n";
    v15 = v12;
    printk(v14, "syna_dev_connect");
    return v15;
  }
  v16 = *(unsigned char *)(v3 + 9);
  if ( v16 == 1 )
  {
    v12 = syna_dev_set_up_app_fw(tcm);
    if ( __builtin_expect((int)v12 < 0, 1) )
    {
      printk("\0013[error] %s: Fail to set up application firmware\n",
             "syna_dev_connect");
      printk("\0016[info ] %s: Switch device to bootloader mode instead\n",
             "syna_dev_connect");
      syna_tcm_switch_fw_mode(v3, 11, *(unsigned int *)(v3 + 488));
    }
    else
    {
      v12 = syna_dev_set_up_input_device(tcm);
      if ( (int)v12 < 0 )
      {
        v14 = "\0013[error] %s: Fail to set up input device\n";
        v15 = v12;
        printk(v14, "syna_dev_connect");
        return v15;
      }
    }
  }
  else
  {
    printk("\0015[info ] %s: Application firmware not running, current mode: %02x\n",
           "syna_dev_connect", v16);
    if ( *(unsigned char *)(v3 + 9) == 11
      && (syna_tcm_get_boot_info((struct tcm_dev *)v3, NULL, 20) & 0x80000000) == 0 )
      printk("\0016[info ] %s: Bootloader status: 0x%x\n",
             "syna_dev_connect", *(unsigned char *)(v3 + 225));
  }
  v19 = syna_tcm_set_report_dispatcher(
      (struct tcm_dev *)v3, 16, syna_dev_process_unexpected_reset, a1);
  if ( (v19 & 0x80000000) != 0 )
    printk("\0013[error] %s: Fail to register the handling function of unexpected reset\n",
           "syna_dev_connect");

  v21 = a1[78];
  v22 = syna_request_managed_device();
  if ( v22 )
  {
    v26 = *(_DWORD *)(v21 + 168);
    if ( (int)v26 >= 0 )
    {
      v27 = v22;
      v28 = gpio_to_desc(v26);
      v29 = gpiod_to_irq(v28);
      *(_DWORD *)(v21 + 184) = v29;
      v31 = devm_request_threaded_irq(
          v27, v29, 0, syna_dev_isr, *(_QWORD *)(v21 + 176),
          "synaptics_tcm", a1);
      if ( (int)v31 >= 0 )
      {
        *(_BYTE *)(v21 + 188) = 1;
        printk("\0016[info ] %s: Interrupt handler registered\n",
               "syna_dev_request_irq");
        a1[134] = (__int64)alloc_workqueue("%s", 393226, 1, "syna_reflash");
        a1[121] = 0xFFFFFFFE00000LL;
        a1[122] = (__int64)(a1 + 122);
        a1[123] = (__int64)(a1 + 122);
        a1[124] = (__int64)syna_dev_reflash_startup_work;
        init_timer_key(a1 + 125, &delayed_work_timer_fn, 0x200000, 0, 0);
        queue_delayed_work_on(32, a1[134], a1 + 121, 50);
        *((_DWORD *)a1 + 351) = 1;
        *((_BYTE *)a1 + 1410) = 1;
        printk("\0016[info ] %s: Config: max. write size(%d), max. read size(%d)\n",
               "syna_dev_show_info", *(unsigned int *)(v3 + 56),
               *(unsigned int *)(v3 + 60));
        v34 = *(_QWORD *)(v21 + 392) ? "yes" : "no";
        printk("\0016[info ] %s: Config: startup reflash(%s), hw reset(%s), rst on resume(%s)\n",
               "syna_dev_show_info", "yes", v34, "yes");
        v34 = *((_BYTE *)a1 + 1409) ? "yes" : "no";
        printk("\0016[info ] %s: Config: lpwg mode(%s), custom tp config(%s) helper work(%s)\n",
               "syna_dev_show_info", v34, "no", "yes");
        printk("\0016[info ] %s: Device %s connected\n",
               "syna_dev_connect", "synaptics_tcm");
        return 0;
      }
      v24 = v31;
      v25 = "\0013[error] %s: Fail to request threaded irq\n";
    }
    else
    {
      v24 = -22;
      v25 = "\0013[error] %s: Invalid IRQ GPIO\n";
    }
  }
  else
  {
    v24 = -22;
    v25 = "\0013[error] %s: Invalid managed device\n";
  }
  printk(v25, "syna_dev_request_irq");
  printk("\0013[error] %s: Fail to request the interrupt line\n",
         "syna_dev_connect");
  if ( a1[118] )
  {
    input_unregister_device((struct input_dev *)a1[118]);
    a1[118] = 0;
  }
  return v24;
}
