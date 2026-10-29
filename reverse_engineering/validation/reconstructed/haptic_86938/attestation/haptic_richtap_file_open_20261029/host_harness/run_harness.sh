#!/bin/sh
set -eu

cd /harness
gcc -std=c11 -Wall -Wextra -Werror -I include -I /candidate \
	-DCANDIDATE_FUNCTION=richtap_file_open \
	-o /tmp/haptic_open_candidate main.c stock_model.c \
	/candidate/haptic_86938_fn_035_richtap_file_open.c \
	/candidate/haptic_86938_globals.c
/tmp/haptic_open_candidate

gcc -std=c11 -Wall -Wextra -Werror -I include -I /candidate \
	-DCANDIDATE_FUNCTION=richtap_file_open_mutant \
	-o /tmp/haptic_open_mutant_no_ref main.c stock_model.c \
	mutant_omit_try_module_get.c /candidate/haptic_86938_globals.c
if /tmp/haptic_open_mutant_no_ref; then
	echo "FAIL: omitted-try_module_get mutant was accepted" >&2
	exit 1
else
	echo "PASS: omitted-try_module_get mutant rejected"
fi

gcc -std=c11 -Wall -Wextra -Werror -I include -I /candidate \
	-DCANDIDATE_FUNCTION=richtap_file_open_mutant \
	-o /tmp/haptic_open_mutant_no_store main.c stock_model.c \
	mutant_skip_private_data.c /candidate/haptic_86938_globals.c
if /tmp/haptic_open_mutant_no_store; then
	echo "FAIL: missing-private_data-store mutant was accepted" >&2
	exit 1
else
	echo "PASS: missing-private_data-store mutant rejected"
fi

gcc -std=c11 -Wall -Wextra -Werror -I include -I /candidate \
	-DCANDIDATE_FUNCTION=richtap_file_open_mutant \
	-o /tmp/haptic_open_mutant_wrong_error main.c stock_model.c \
	mutant_wrong_error.c /candidate/haptic_86938_globals.c
if /tmp/haptic_open_mutant_wrong_error; then
	echo "FAIL: wrong-error mutant was accepted" >&2
	exit 1
else
	echo "PASS: wrong-error mutant rejected"
fi
