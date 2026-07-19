static const char *const tppower_to_str[] = {
    "TP_POWER_STATUS=2",
    "TP_POWER_STATUS=1",
    "TP_POWER_STATUS=3",
};

extern int current_lcd_state;
extern __int64 tpd_cdev;
void report_ufp_uevent(int val)
{
    static char area_meet_down;
    char *envp[3];
    const char *event;
    const char *lcd_state;

    if (val && !(area_meet_down & 1)) {
        area_meet_down = 1;
        if (current_lcd_state == 0) {
            if (!ufp_tp_ops.pdev) {
                printk(KERN_ERR "tpd_ufp_err: uevent pdev is null!\n\n");
            } else {
                event = "areameet_down=true";
                lcd_state = tppower_to_str[current_lcd_state];
                envp[0] = (char *)event;
                envp[1] = (char *)lcd_state;
                envp[2] = NULL;
                kobject_uevent_env(&ufp_tp_ops.pdev->dev.kobj,
                                   KOBJ_CHANGE, envp);
                printk(KERN_INFO "tpd_ufp_info: %s,lcd state=%s\n",
                       event, lcd_state);
            }
            ufp_tp_ops.field_a1 = 1;
        } else {
            if (!ufp_tp_ops.pdev) {
                printk(KERN_ERR "tpd_ufp_err: uevent pdev is null!\n\n");
            } else {
                ufp_report_gesture_uevent("single_tap=true");
                event = "aod_areameet_down=true";
                lcd_state = tppower_to_str[current_lcd_state];
                envp[0] = (char *)event;
                envp[1] = (char *)lcd_state;
                envp[2] = NULL;
                kobject_uevent_env(&ufp_tp_ops.pdev->dev.kobj,
                                   KOBJ_CHANGE, envp);
                printk(KERN_INFO "tpd_ufp_info: %s,lcd state=%s\n",
                       event, lcd_state);
            }
            ufp_tp_ops.field_a0 = 1;
        }
    } else if (!val && area_meet_down == 1) {
        area_meet_down = 0;
        if (!ufp_tp_ops.pdev) {
            printk(KERN_ERR "tpd_ufp_err: uevent pdev is null!\n\n");
        } else {
            event = "areameet_up=true";
            lcd_state = tppower_to_str[current_lcd_state];
            envp[0] = (char *)event;
            envp[1] = (char *)lcd_state;
            envp[2] = NULL;
            kobject_uevent_env(&ufp_tp_ops.pdev->dev.kobj, KOBJ_CHANGE, envp);
            printk(KERN_INFO "tpd_ufp_info: %s,lcd state=%s\n",
                   event, lcd_state);
        }

        if (*(int *)(tpd_cdev + 0x458)) {
            if (ufp_tp_ops.field_a0 && !(ufp_tp_ops.field_a2 & 1)) {
                complete(&ufp_tp_ops.gesture_complete);
                ufp_tp_ops.field_a0 = 0;
            }
            if (ufp_tp_ops.field_a1 == 1 && !(ufp_tp_ops.field_a2 & 1)) {
                ufp_tp_ops.field_a1 = 0;
                printk(KERN_INFO "tpd_ufp_info: areameet_down_flag is false\n");
            }
        } else if (ufp_tp_ops.field_a0) {
                complete(&ufp_tp_ops.gesture_complete);
                ufp_tp_ops.field_a0 = 0;
        }
    }
}
