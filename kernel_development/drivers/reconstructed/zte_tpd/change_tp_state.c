static const char * const lcdstate_to_str[] = {
    "screen_on",
    "screen_off",
    "screen_in_doze",
};

static const char * const lcdchange_to_str[] = {
    "lcd_exit_lp",
    "lcd_enter_lp",
    "lcd_on",
    "lcd_off",
};

void change_tp_state(enum lcdchange state)
{
    struct mutex *state_lock = (struct mutex *)(tpd_cdev + 0xcc0);
    struct workqueue_struct *workqueue;

    mutex_lock(state_lock);
    if (state > LCDCHANGE_OFF || (unsigned int)current_lcd_state > 2U) {
#if defined(ZTE_TPD_HOST_TEST)
        /* The host harness cannot continue past the stock non-returning BRK. */
        __break(0x5512u);
        mutex_unlock(state_lock);
        return;
#else
        ZTE_TPD_BRK_5512();
        __builtin_unreachable();
#endif
    }

    pr_info("tpd_ufp_info: current_lcd_state:%s, lcd change:%s\n\n",
            lcdstate_to_str[current_lcd_state], lcdchange_to_str[state]);

    workqueue = *(struct workqueue_struct **)(tpd_cdev + 0x4b0);

    if (current_lcd_state == 2) {
        if (state == LCDCHANGE_EXIT_LP)
            goto unlock;
        if (state == LCDCHANGE_ON) {
            current_lcd_state = 0;
            queue_work_on(WORK_CPU_UNBOUND, workqueue,
                          (struct work_struct *)(tpd_cdev + 0x9c0));
            ufp_tp_ops.field_8 = 0;
            goto unlock;
        }
        if (state == LCDCHANGE_OFF) {
            current_lcd_state = 1;
            ufp_tp_ops.field_8 = 0;
            queue_work_on(WORK_CPU_UNBOUND, workqueue,
                          (struct work_struct *)(tpd_cdev + 0x9a0));
            goto unlock;
        }
        goto invalid_change;
    }

    if (current_lcd_state == 1) {
        if (state == LCDCHANGE_ENTER_LP) {
            current_lcd_state = 2;
            goto enter_low_power;
        }
        if (state == LCDCHANGE_ON)
            goto switch_on;
        goto invalid_change;
    }

    if (current_lcd_state == 0) {
        if (state == LCDCHANGE_OFF)
            goto switch_off;
        if (state == LCDCHANGE_ENTER_LP)
            goto enter_low_power;
        goto invalid_change;
    }

    current_lcd_state = 0;
    queue_work_on(WORK_CPU_UNBOUND, workqueue,
                  (struct work_struct *)(tpd_cdev + 0x9c0));
    ufp_tp_ops.field_8 = 0;
    pr_err("tpd_ufp_err: err lcd light change\n");
    goto unlock;

enter_low_power:
    ufp_tp_ops.field_8 = 0;
    queue_work_on(WORK_CPU_UNBOUND, workqueue,
                  (struct work_struct *)(tpd_cdev + 0x9a0));
    goto unlock;

switch_off:
    current_lcd_state = 1;
    ufp_tp_ops.gesture_complete.done = 0;
    ufp_tp_ops.field_8 = 0;
    queue_work_on(WORK_CPU_UNBOUND, workqueue,
                  (struct work_struct *)(tpd_cdev + 0x9a0));
    goto unlock;

switch_on:
    current_lcd_state = 0;
    queue_work_on(WORK_CPU_UNBOUND, workqueue,
                  (struct work_struct *)(tpd_cdev + 0x9c0));
    ufp_tp_ops.field_8 = 0;
    goto unlock;

invalid_change:
    pr_err("tpd_ufp_err: ignore err lcd change\n");
unlock:
    mutex_unlock(state_lock);
}
