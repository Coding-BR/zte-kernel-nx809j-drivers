
void syna_dev_probe(long param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  long lVar5;
  long *plVar6;
  ulong uVar7;
  long lVar8;
  long local_68;
  undefined8 local_60;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 uStack_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  long local_38;
  
  lVar8 = sp_el0;
  local_38 = *(long *)(lVar8 + 0x710);
  local_68 = 0;
  _printk(&DAT_001370f9,"syna_dev_probe");
  lVar8 = *(long *)(param_1 + 0xa0);
  if (lVar8 == 0) {
    _printk(&DAT_00137b1f,"syna_dev_probe");
    iVar2 = -0x16;
    goto LAB_001120e4;
  }
  lVar5 = syna_request_managed_device();
  if (lVar5 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
  }
  else {
    plVar6 = (long *)devm_kmalloc(lVar5,0x6d0,0xdc0);
    if (plVar6 != (long *)0x0) {
      *(undefined4 *)(plVar6 + 0xb1) = 0;
      __init_swait_queue_head(plVar6 + 0xb2,"&x->wait",&init_completion___key);
      iVar1 = syna_tcm_allocate_device(&local_68,lVar8 + 8,plVar6);
      if ((iVar1 < 0) || (local_68 == 0)) {
        iVar3 = 0x136a31;
        iVar2 = iVar1;
LAB_001121dc:
        _printk(iVar1,iVar3,"syna_dev_probe");
      }
      else {
        *plVar6 = local_68;
        plVar6[1] = param_1;
        plVar6[0x4e] = lVar8;
        local_60 = *(undefined8 *)(lVar8 + 0x158);
        local_58 = *(undefined4 *)(lVar8 + 0x160);
        local_4c = *(undefined4 *)(lVar8 + 0x170);
        uStack_50 = *(undefined4 *)(lVar8 + 0x168);
        local_54 = *(undefined4 *)(lVar8 + 0x164);
        local_3c = *(undefined4 *)(lVar8 + 0xf8);
        uStack_40 = *(undefined4 *)(lVar8 + 0x16c);
        local_48 = *(undefined4 *)(lVar8 + 0x174);
        local_44 = *(undefined4 *)(lVar8 + 0x178);
        iVar2 = syna_tcm_config_timings(local_68,&local_60,0,0xffff);
        if (iVar2 < 0) {
          _printk(&DAT_0013209c,"syna_dev_probe");
        }
        else {
          *(undefined1 *)(plVar6 + 0x5d) = 0;
          plVar6[0x55] = 0;
          plVar6[0x56] = 0;
          __mutex_init(plVar6 + 0x57,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
          __mutex_init(plVar6 + 0x4f,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
          *(undefined1 *)((long)plVar6 + 0x2f4) = 0;
          *(undefined2 *)((long)plVar6 + 0x581) = 1;
          plVar6[0xd5] = (long)syna_dev_connect;
          plVar6[0xd6] = (long)syna_dev_disconnect;
          plVar6[0xd7] = (long)syna_dev_set_up_app_fw;
          plVar6[0xd8] = (long)syna_dev_resume;
          *(undefined4 *)((long)plVar6 + 0x57c) = 0;
          plVar6[0xd9] = (long)syna_dev_suspend;
          lVar8 = __kmalloc_large_noprof(0x32000,0xcc0);
          plVar6[0x8c] = lVar8;
          __mutex_init(plVar6 + 0x8e,"&tcm->frame_mutex",&syna_dev_probe___key);
          __init_waitqueue_head
                    (plVar6 + 0x89,"&(tcm->frame_mmap_list.wait)",&syna_dev_probe___key_53);
          *(undefined4 *)(plVar6 + 0x8d) = 0;
          *(undefined4 *)(plVar6 + 0x94) = 0xff;
          plVar6[0x95] = (long)"input_agent";
          plVar6[0x96] = (long)zte_fops;
          plVar6[0x99] = 0;
          iVar2 = misc_register(plVar6 + 0x94);
          if (iVar2 != 0) {
            iVar1 = 0x1394f3;
            iVar3 = iVar1;
            goto LAB_001121dc;
          }
          plVar6[0xb5] = 0;
          *(long **)(param_1 + 0xa8) = plVar6;
          device_set_wakeup_capable(param_1 + 0x10,1);
          device_wakeup_enable(param_1 + 0x10);
          iVar2 = syna_dev_connect(plVar6);
          if (iVar2 < 0) {
            _printk(&DAT_00138e1a,"syna_dev_probe");
          }
          else {
            iVar2 = syna_cdev_create(plVar6,param_1);
            if (iVar2 < 0) {
              _printk(&DAT_0013269b,"syna_dev_probe");
            }
            else {
              iVar1 = syna_sysfs_create_dir(plVar6,param_1);
              if (-1 < iVar1) {
                syna_ts_register_for_panel_events(plVar6);
                _printk(&DAT_0013a0d0,"tpd_resume_suspend_register");
                lVar8 = tpd_cdev;
                *(code **)(tpd_cdev + 0xe08) = tpd_goodix_ts_resume;
                *(long **)(lVar8 + 0xdd8) = plVar6;
                *(code **)(lVar8 + 0xe10) = tpd_goodix_ts_suspend;
                *(undefined4 *)(plVar6 + 0xab) = 0;
                __init_swait_queue_head(plVar6 + 0xac,"&x->wait",&init_completion___key);
                *(undefined1 *)(plVar6 + 0xaf) = 0;
                *(undefined4 *)(plVar6 + 0xa4) = 0;
                lVar8 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"synaptics_tcm_helper");
                plVar6[0xa9] = lVar8;
                plVar6[0xa5] = 0xfffffffe00000;
                plVar6[0xa6] = (long)(plVar6 + 0xa6);
                plVar6[0xa7] = (long)(plVar6 + 0xa6);
                plVar6[0xa8] = (long)syna_dev_helper_work;
                plVar6[0xc0] = 0x200000002;
                *(undefined4 *)((long)plVar6 + 0x60c) = 2;
                plVar6[0xb6] = 0;
                *(undefined4 *)(plVar6 + 0xb7) = 0;
                *(undefined4 *)((long)plVar6 + 0x5c4) = 0;
                *(undefined4 *)((long)plVar6 + 0x5d4) = 0;
                *(undefined4 *)((long)plVar6 + 0x5dc) = 0;
                plVar6[0xbf] = 0x200000001;
                plVar6[0xbd] = 0;
                plVar6[0xbe] = 0;
                uVar4 = zte_get_boot_mode();
                *(undefined4 *)(plVar6 + 0xc3) = uVar4;
                _printk(&DAT_00137b52,"syna_dev_probe",uVar4);
                _printk(&DAT_001320c6,"syna_dev_probe","synaptics_tcm",1,&DAT_0013a013);
                lVar8 = tpd_cdev;
                *(undefined1 *)((long)plVar6 + 0x583) = 1;
                *(undefined1 *)(lVar8 + 0x1d) = 1;
                *(undefined1 *)(lVar8 + 0x446) = 1;
                uVar7 = completion_done(plVar6 + 0xb1);
                iVar2 = 0;
                if ((uVar7 & 1) == 0) {
                  complete(plVar6 + 0xb1);
                  iVar2 = 0;
                }
                goto LAB_001120e4;
              }
              _printk(&DAT_001326ca,"syna_dev_probe");
              syna_cdev_remove(plVar6);
              iVar2 = -0x14;
            }
            syna_dev_disconnect(plVar6);
          }
          kfree(plVar6[0x8c]);
          if ((char)plVar6[0x5d] != '\0') {
            _printk(&DAT_00135294,"syna_tcm_buf_release");
          }
          lVar5 = plVar6[0x55];
          lVar8 = syna_request_managed_device();
          if (lVar8 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          else if (lVar5 != 0) {
            devm_kfree(lVar8,lVar5);
          }
          plVar6[0x56] = 0;
          *(undefined1 *)(plVar6 + 0x5d) = 0;
        }
        syna_tcm_remove_device(local_68);
      }
      goto LAB_001120e4;
    }
  }
  _printk(&DAT_0013cc7e,"syna_dev_probe");
  iVar2 = -0xc;
LAB_001120e4:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}

