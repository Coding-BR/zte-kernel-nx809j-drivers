// SPDX-License-Identifier: GPL-2.0
#include <linux/delay.h>
#include <linux/jiffies.h>
#include <linux/ktime.h>
#include <linux/mutex.h>
#include <linux/pm_qos.h>
#include <linux/printk.h>
#include <linux/time.h>
#include <linux/timekeeping.h>
#include <linux/types.h>
#include <linux/workqueue.h>

struct aw_haptic;

struct richtap_fifo_node {
	volatile u8 state;
	u8 bit;
	s16 data_size;
	u32 reserved_04;
	struct richtap_fifo_node *next;
	u8 reserved_10[8];
	volatile u8 payload[];
};

struct aw_haptic_func {
	u8 reserved_00[0x60];
	void (*play_go)(struct aw_haptic *aw, u8 enable);
	u8 reserved_068[0x30];
	void (*play_mode)(struct aw_haptic *aw, u8 mode);
	u8 reserved_0a0[0x30];
	void (*set_rtp_data)(struct aw_haptic *aw, u8 *data, u32 length);
	u8 reserved_0d8[0x40];
	void (*upload_lra)(struct aw_haptic *aw, unsigned int mode);
	u8 reserved_120[0x40];
	u8 (*get_glb_state)(struct aw_haptic *aw);
	u8 reserved_168[0x10];
	u8 (*rtp_get_fifo_aes)(struct aw_haptic *aw);
};

struct aw_haptic {
	u8 reserved_000[0x5c8];
	struct aw_haptic_func *func;
	u8 reserved_5d0[0x38];
	u8 *rtp_data;
	struct richtap_fifo_node *rtp_fifo_head;
	volatile u8 tiktap_stop;
	volatile u8 tiktap_started;
	u8 reserved_61a[0x0e];
	struct work_struct tiktap_work;
};

_Static_assert(__builtin_offsetof(struct richtap_fifo_node, data_size) == 0x2,
	       "TikTap FIFO length offset");
_Static_assert(__builtin_offsetof(struct richtap_fifo_node, next) == 0x8,
	       "TikTap FIFO link offset");
_Static_assert(__builtin_offsetof(struct richtap_fifo_node, payload) == 0x18,
	       "TikTap FIFO payload offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, play_go) == 0x60,
	       "play_go callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, play_mode) == 0x98,
	       "play_mode callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, set_rtp_data) == 0xd0,
	       "set_rtp_data callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, upload_lra) == 0x118,
	       "upload_lra callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, get_glb_state) == 0x160,
	       "get_glb_state callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, rtp_get_fifo_aes) == 0x178,
	       "rtp_get_fifo_aes callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, func) == 0x5c8,
	       "aw_haptic function table offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_fifo_head) == 0x610,
	       "TikTap FIFO head offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, tiktap_stop) == 0x618,
	       "TikTap stop flag offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, tiktap_started) == 0x619,
	       "TikTap started flag offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, tiktap_work) == 0x628,
	       "TikTap work item offset");

extern struct pm_qos_request aw_pm_qos_req_vb;

static __always_inline u32 tiktap_clock_msecs(void)
{
	struct timespec64 now = {};

	ktime_get_coarse_real_ts64(&now);
	return jiffies_to_msecs(timespec64_to_jiffies(&now));
}

void tiktap_work_routine(struct work_struct *work)
{
	char *work_base = (char *)work;
	struct aw_haptic *aw = (struct aw_haptic *)(work_base - 0x628);
	struct richtap_fifo_node *node =
		*(struct richtap_fifo_node **)(work_base - 0x18);
	struct mutex *work_mutex = (struct mutex *)(work_base - 0x338);
	struct aw_haptic_func *func;
	register int retry_or_count asm("w22") = 99;
	register u32 elapsed_anchor asm("w23");
	u32 now_msecs;
	u8 fifo_almost_empty;
	u8 glb_state;
	u8 node_state;
	u8 stop_requested;
	s16 logged_length;
	u8 logged_state;
	u8 data_0;
	u8 data_1;
	u8 data_10;
	u8 data_12;

	mutex_lock(work_mutex);
	func = *(struct aw_haptic_func **)(work_base - 0x60);
	aw->tiktap_stop = 0;
	func->play_mode(aw, 2);
	func = *(struct aw_haptic_func **)(work_base - 0x60);
	func->upload_lra(aw, 2);

	do {
		if (node->state == (u8)'U') {
			func = *(struct aw_haptic_func **)(work_base - 0x60);
			func->play_go(aw, 1);
			udelay(1000);
			/* Match the stock cold timeout fallthrough and taken QoS edge. */
			if (__builtin_expect(retry_or_count > 0, 0))
				goto qos_start;
			break;
		}

		if (aw->tiktap_stop & 1U)
			goto work_unlock_only;
		udelay(1000);
		retry_or_count--;
	} while (retry_or_count != -1);

	printk(KERN_ERR
	       "[%s][%04d]%s: wait 100 ms but start_buf->status != VALID! status = 0x%02x\n",
	       "haptic_hv", 0xe7e, __func__, node->state);
	goto work_cleanup;

qos_start:
	elapsed_anchor = 1;
	aw->tiktap_started = (u8)elapsed_anchor;
	mutex_unlock(work_mutex);
	work_mutex = (struct mutex *)(work_base - 0x2b8);
	mutex_lock(work_mutex);
	if (!cpu_latency_qos_request_active(&aw_pm_qos_req_vb))
		cpu_latency_qos_add_request(&aw_pm_qos_req_vb, 0);

	elapsed_anchor = tiktap_clock_msecs();
	now_msecs = tiktap_clock_msecs();
	if (now_msecs <= elapsed_anchor + 800U)
		goto processing_loop;
	goto processing_timeout;

processing_loop:
	retry_or_count = 0;
	for (;;) {
		func = *(struct aw_haptic_func **)(work_base - 0x60);
		fifo_almost_empty = func->rtp_get_fifo_aes(aw);
		func = *(struct aw_haptic_func **)(work_base - 0x60);
		glb_state = func->get_glb_state(aw);
		if ((glb_state & 0x0fU) == 0U)
			goto glb_state_error;

		stop_requested = aw->tiktap_stop;
		node_state = node->state;
		if (stop_requested & 1U)
			goto node_state_exit;

		if (node_state == (u8)'U') {
			if (!(fifo_almost_empty & 1U))
				goto wait_for_fifo;

			printk(KERN_INFO
			       "[%s][%04d]%s: buf_cnt = %d, bit = %d, length = %d!\n",
			       "haptic_hv", 0xea7, __func__, retry_or_count,
			       node->bit, (int)node->data_size);
			logged_length = node->data_size;
			logged_state = node->state;
			data_0 = node->payload[0];
			data_1 = node->payload[1];
			data_10 = node->payload[0x0a];
			data_12 = node->payload[0x0c];
			printk(KERN_INFO
			       "[%s][%04d]%s: length:%02x,status:%02x,data:0:0x%02x,1:0x%02x,10:0x%02x,12:0x%02x\n",
			       "haptic_hv", 0xeab, __func__,
			       (int)logged_length, logged_state, data_0,
			       data_1, data_10, data_12);
			func = *(struct aw_haptic_func **)(work_base - 0x60);
			func->set_rtp_data(aw, (u8 *)node->payload,
					   (u32)node->data_size);
			node->state = 0xaaU;
			node = node->next;
			elapsed_anchor = tiktap_clock_msecs();
			retry_or_count++;
			goto sample_time;
		}

		if (node_state == 0xffU)
			goto node_state_exit;
		/* Keep the stock ordered status tests in the emitted control flow. */
		asm volatile("" : : : "cc");
		if (node_state == 0xaaU)
			goto node_state_exit;

wait_for_fifo:
		udelay(1000);

sample_time:
		now_msecs = tiktap_clock_msecs();
		if (now_msecs <= elapsed_anchor + 800U)
			continue;

processing_timeout:
		printk(KERN_ERR
		       "[%s][%04d]%s: Failed! tiktap endless loop\n",
		       "haptic_hv", 0xe96, __func__);
		goto processing_cleanup;
	}

glb_state_error:
	printk(KERN_ERR
	       "[%s][%04d]%s: tiktap glb_state != RTP_GO!, glb_state = 0x%02x\n",
	       "haptic_hv", 0xe9d, __func__, glb_state);
	goto processing_cleanup;

node_state_exit:
	printk(KERN_ERR
	       "[%s][%04d]%s: tiktap exit! tiktap_buf->status = 0x%02x\n",
	       "haptic_hv", 0xea3, __func__, node_state);
	goto processing_cleanup;

processing_cleanup:
	if (cpu_latency_qos_request_active(&aw_pm_qos_req_vb))
		cpu_latency_qos_remove_request(&aw_pm_qos_req_vb);

work_cleanup:
	aw->tiktap_stop = 1;

work_unlock_only:
	/* Preserve the stock order: publish stop, then load mutex_unlock's x0. */
	asm volatile("" : : : "x0");
	mutex_unlock(work_mutex);
}
