/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_SYNA_DEVICE_API_H
#define _ZTE_TPD_SYNA_DEVICE_API_H

struct device;
struct syna_tcm;
struct platform_device;

typedef int (*syna_report_dispatch_fn)(unsigned char report_code,
					      const unsigned char *payload,
					      unsigned int length,
					      void *context);

int syna_dev_resume(struct device *dev);
int syna_dev_suspend(struct device *dev);
int syna_pm_resume(struct device *dev);
int syna_pm_suspend(struct device *dev);
int syna_ts_check_dt(struct device *dev);

void syna_cdev_remove(struct syna_tcm *tcm);
int syna_cdev_create(struct syna_tcm *tcm, struct platform_device *data);
void syna_dev_free_input_events(struct syna_tcm *tcm);
void syna_sysfs_remove_dir(struct syna_tcm *tcm);
int syna_sysfs_create_dir(struct syna_tcm *tcm,
                          struct platform_device *parent);
void syna_testing_remove_dir(struct syna_tcm *tcm);
void syna_tpd_register_fw_class(struct syna_tcm *tcm);
void zte_reset_frame_list(struct syna_tcm *tcm);

int syna_dev_connect(struct syna_tcm *tcm);
int syna_dev_disconnect(struct syna_tcm *tcm);
int syna_dev_set_up_app_fw(struct syna_tcm *tcm);
int syna_recovery_game_mode_after_reset(struct syna_tcm *tcm);
int syna_testing_create_dir(struct syna_tcm *tcm);
int syna_testing_pt01_zte(struct syna_tcm *tcm);
int syna_testing_pt05_zte(struct syna_tcm *tcm);
int syna_testing_pt0a_zte(struct syna_tcm *tcm);

int syna_dev_get_frame_data(struct syna_tcm *tcm, int value,
			    unsigned int delay_ms);
int syna_dev_set_charger_mode(struct syna_tcm *tcm, int value,
			      unsigned int delay_ms);
int syna_dev_set_display_rotation(struct syna_tcm *tcm, int value,
				  unsigned int delay_ms);
int syna_dev_set_follow_hand_level(struct syna_tcm *tcm, int value,
				   unsigned int delay_ms);
int syna_dev_set_play_game(struct syna_tcm *tcm, int value,
			   unsigned int delay_ms);
int syna_dev_set_sensibility_level(struct syna_tcm *tcm, int value,
				    unsigned int delay_ms);
int syna_dev_set_stability_level(struct syna_tcm *tcm, int value,
				  unsigned int delay_ms);
int syna_dev_set_tp_report_rate(struct syna_tcm *tcm, int value,
				unsigned int delay_ms);

int syna_cdev_process_reports(unsigned char report_code,
				      const unsigned char *payload,
				      unsigned int length, void *context);
int syna_dev_process_touch_report(unsigned char report_code,
					 const unsigned char *payload,
					 unsigned int length, void *context);
int syna_dev_process_unexpected_reset(unsigned char report_code,
					      const unsigned char *payload,
					      unsigned int length, void *context);

#endif
