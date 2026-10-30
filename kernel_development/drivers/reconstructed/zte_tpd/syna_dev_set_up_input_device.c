#ifdef ZTE_TPD_HOST_TEST
#define SYNA_SET_UP_INPUT_MODE_FORMAT unk_32EDC
#define SYNA_SET_UP_INVALID_MANAGED_FORMAT unk_3BE43
#define SYNA_SET_UP_ALLOCATE_FORMAT unk_375CB
#define SYNA_SET_UP_REGISTER_FORMAT unk_375F8
#define SYNA_SET_UP_CREATE_FORMAT unk_3C485
#define SYNA_SET_UP_DISPATCHER_FORMAT unk_35F92
#define SYNA_SET_UP_PARAMS_LOW_FORMAT unk_3CB57
#define SYNA_SET_UP_PARAMS_HIGH_FORMAT unk_3BE7D
#else
#define SYNA_SET_UP_INPUT_MODE_FORMAT "\0015[info ] %s: Application firmware not running, current mode: %02x\n"
#define SYNA_SET_UP_INVALID_MANAGED_FORMAT "\0013[error] %s: Invalid managed device\n"
#define SYNA_SET_UP_ALLOCATE_FORMAT "\0013[error] %s: Fail to allocate input device\n"
#define SYNA_SET_UP_REGISTER_FORMAT "\0013[error] %s: Fail to register input device\n"
#define SYNA_SET_UP_CREATE_FORMAT "\0013[error] %s: Fail to create input device\n"
#define SYNA_SET_UP_DISPATCHER_FORMAT "\0013[error] %s: Fail to register the touch report handling function\n"
#define SYNA_SET_UP_PARAMS_LOW_FORMAT "\0014[warn ] %s: Out of max num objects defined, in app_info: %d\n"
#define SYNA_SET_UP_PARAMS_HIGH_FORMAT "\0015[info ] %s: Input parameters non-changed\n"
#endif

int __fastcall syna_dev_set_up_input_device(struct syna_tcm *tcm)
{
  __int64 a1 = (__int64)tcm;
#ifdef ZTE_TPD_HOST_TEST
  unsigned int v1; // w2
#else
  register unsigned int v1 asm("w2");
#endif
  __int64 v3; // x8
  int v4; // w9
#ifdef ZTE_TPD_HOST_TEST
  __int64 v5; // x2
#else
  register unsigned int v5 asm("w2");
#endif
  __int64 v6; // x0
  unsigned int *v7; // x21
  __int64 v8; // x2
  __int64 device; // x0
  __int64 v10; // x2
  __int64 v11; // x20
  __int64 v12; // x8
  unsigned int v13; // w0
  __int64 v14; // x2
  unsigned int *v15; // x0
  __int64 v16; // x2
  __int64 v18; // x2
  unsigned int v19; // w21
  unsigned __int64 v26; // x9
  unsigned __int64 v29; // x9
  unsigned __int64 v32; // x9
  unsigned __int64 v35; // x9
  unsigned __int64 v38; // x9
  unsigned __int64 v41; // x9
  unsigned __int64 v44; // x9

  v1 = *(unsigned __int8 *)(*(_QWORD *)a1 + 9LL);
#ifndef ZTE_TPD_HOST_TEST
  asm volatile("" : "+r"(v1));
#endif
  if ( (_DWORD)v1 != 1 )
  {
    printk(SYNA_SET_UP_INPUT_MODE_FORMAT, "syna_dev_set_up_input_device", v1);
    return 0;
  }
  syna_dev_free_input_events((struct syna_tcm *)a1);
  v3 = *(_QWORD *)a1;
  v4 = *(_DWORD *)(*(_QWORD *)a1 + 16LL);
  if ( !v4 && !*(_DWORD *)(v3 + 20) )
    return 0;
  if ( *(_DWORD *)(a1 + 952) == v4 && *(_DWORD *)(a1 + 956) == *(_DWORD *)(v3 + 20) )
  {
    v5 = *(unsigned int *)(a1 + 960);
#ifndef ZTE_TPD_HOST_TEST
    asm volatile("" : "+r"(v5));
#endif
    if ( (_DWORD)v5 == *(_DWORD *)(v3 + 24) )
    {
      if ( (unsigned int)v5 >= 0xB )
      {
#ifndef ZTE_TPD_HOST_TEST
        asm volatile("" ::: "memory");
#endif
        printk(SYNA_SET_UP_PARAMS_LOW_FORMAT, "syna_dev_check_input_params", v5);
#ifndef ZTE_TPD_HOST_TEST
        asm volatile("" ::: "memory");
#endif
      }
      else
      {
#ifndef ZTE_TPD_HOST_TEST
        asm volatile("" ::: "memory");
#endif
        printk(SYNA_SET_UP_PARAMS_HIGH_FORMAT, "syna_dev_check_input_params");
      }
      return 0;
    }
  }
  mutex_lock(a1 + 632);
  v6 = *(_QWORD *)(a1 + 944);
  if ( v6 )
  {
    input_unregister_device((struct input_dev *)v6);
    *(_QWORD *)(a1 + 944) = 0;
  }
  v7 = *(unsigned int **)a1;
  struct device *managed_dev =
    (struct device *)syna_request_managed_device();
  if ( managed_dev )
  {
    device = devm_input_allocate_device(managed_dev);
    if ( device )
    {
      struct input_dev *input_dev = (struct input_dev *)device;
      struct platform_device *pdev;
      struct device *parent_dev;
      v11 = device;

      input_dev->name = "synaptics_tcm_touch";
      input_dev->phys = "synaptics_tcm/touch_input";
      *(unsigned int *)((unsigned char *)input_dev + 0x1c) = 0x00010001;

      pdev = *(struct platform_device **)(a1 + 8);
      parent_dev = pdev->dev.parent;
      input_set_drvdata(input_dev, (void *)a1);
      input_dev->dev.parent = parent_dev;

      set_bit(EV_SYN, input_dev->evbit);
      set_bit(EV_KEY, input_dev->evbit);
      set_bit(EV_ABS, input_dev->evbit);

      set_bit(BTN_TOUCH, input_dev->keybit);
      set_bit(BTN_TOOL_FINGER, input_dev->keybit);
      set_bit(INPUT_PROP_DIRECT, input_dev->propbit);
      set_bit(KEY_WAKEUP, input_dev->keybit);

      input_set_capability(input_dev, EV_KEY, KEY_WAKEUP);
      input_set_abs_params(input_dev, 53, 0, v7[4], 0, 0);
      input_set_abs_params(input_dev, 54, 0, v7[5], 0, 0);
      input_mt_init_slots(input_dev, v7[6], 2);
      input_set_abs_params(input_dev, 48, 0, 255, 0, 0);
      input_set_abs_params(input_dev, 49, 0, 255, 0, 0);
      *(_DWORD *)(a1 + 952) = v7[4];
      *(_DWORD *)(a1 + 956) = v7[5];
      *(_DWORD *)(a1 + 960) = v7[6];
      v13 = input_register_device(input_dev);
      if ( (v13 & 0x80000000) == 0 )
      {
        v15 = *(unsigned int **)a1;
        *(_QWORD *)(a1 + 944) = v11;
        if ( (syna_tcm_set_report_dispatcher(
                  (struct tcm_dev *)v15, 17,
                  syna_dev_process_touch_report, (void *)a1) & 0x80000000) != 0 )
        printk(SYNA_SET_UP_DISPATCHER_FORMAT, "syna_dev_set_up_input_device");
        mutex_unlock(a1 + 632);
        return 0;
      }
      v19 = v13;
      printk(SYNA_SET_UP_REGISTER_FORMAT, "syna_dev_create_input_device");
      input_free_device(v11);
    }
    else
    {
      printk(SYNA_SET_UP_ALLOCATE_FORMAT, "syna_dev_create_input_device");
      v19 = -19;
    }
  }
  else
  {
    printk(SYNA_SET_UP_INVALID_MANAGED_FORMAT, "syna_dev_create_input_device");
    v19 = -22;
  }
  printk(SYNA_SET_UP_CREATE_FORMAT, "syna_dev_set_up_input_device");
  mutex_unlock(a1 + 632);
  return v19;
}
