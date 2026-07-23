#ifndef SYNA_TCM_GET_EVENT_DATA_EXTERNAL_BUF_COPY
static int syna_tcm_buf_copy(struct tcm_buffer *dst,
			     struct tcm_buffer *src);

#define syna_tcm_buf_copy_2 syna_tcm_buf_copy
#endif

int syna_tcm_get_event_data(struct tcm_dev *tcm_dev, u8 *code,
			    struct tcm_buffer *event_data)
{
	int retval;

	if (!tcm_dev) {
		printk("\0013[error] %s: Invalid tcm device handle\n", __func__);
		return -241;
	}

	if (!code) {
		printk("\0013[error] %s: Invalid parameter\n", __func__);
		return -241;
	}

	retval = tcm_dev->read_message(tcm_dev, code);
	if (retval < 0) {
		printk("\0013[error] %s: Fail to read messages\n", __func__);
		return retval;
	}

	if (!event_data)
		return retval;

	if (*code >= 0x10 && *code < 0xff) {
		if (!tcm_dev->report_buf.data_length)
			return retval;

		retval = syna_tcm_buf_copy_2(event_data, &tcm_dev->report_buf);
		if (retval < 0) {
			printk("\0013[error] %s: Fail to copy data, report type: %x\n",
			       __func__, *code);
			return retval;
		}

		retval = 0;
	}

	if (*code > 0 && *code < 0x10) {
		if (!tcm_dev->resp_buf.data_length)
			return retval;

		retval = syna_tcm_buf_copy_2(event_data, &tcm_dev->resp_buf);
		if (retval < 0) {
			printk("\0013[error] %s: Fail to copy data, status code: %x\n",
			       __func__, *code);
			return retval;
		}

		retval = 0;
	}

	return retval;
}

#ifndef SYNA_TCM_GET_EVENT_DATA_EXTERNAL_BUF_COPY
#define SYNA_TCM_BUF_COPY_STORAGE static
#include "syna_tcm_buf_copy_2.c"
#undef SYNA_TCM_BUF_COPY_STORAGE
#undef syna_tcm_buf_copy_2
#endif
