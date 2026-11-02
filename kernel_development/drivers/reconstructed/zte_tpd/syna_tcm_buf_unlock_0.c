void __fastcall syna_tcm_buf_unlock_0(__int64 buffer)
{
	__int64 depth;
	char next_depth;
	__int64 saved_buffer;

	depth = *(unsigned __int8 *)(buffer + 64);
	if ((_DWORD)depth == 1) {
		next_depth = 0;
	} else {
		saved_buffer = buffer;
		printk("\1" "3[error] %s: Buffer access out-of balance, %d\n",
		       "syna_tcm_buf_unlock", (unsigned int)depth);
		buffer = saved_buffer;
		next_depth = *(_BYTE *)(saved_buffer + 64) - 1;
	}
	*(_BYTE *)(buffer + 64) = next_depth;
	mutex_unlock(buffer + 16);
}
