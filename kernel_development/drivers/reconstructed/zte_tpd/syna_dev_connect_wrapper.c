#include "defs.h"

int syna_dev_connect(struct syna_tcm *tcm)
{
	int ret = syna_dev_connect_stock_exact(tcm);

	if (ret < 0)
		syna_input_agent_deregister_misc(tcm);

	return ret;
}