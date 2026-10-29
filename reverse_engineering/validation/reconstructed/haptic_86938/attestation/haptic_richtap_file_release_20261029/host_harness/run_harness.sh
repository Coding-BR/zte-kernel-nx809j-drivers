#!/bin/sh
set -eu

cd /harness
gcc -std=c11 -Wall -Wextra -Werror -I include \
	-DCANDIDATE_FUNCTION=richtap_file_release \
	-o /tmp/haptic_release_candidate main.c stock_model.c /candidate.c
/tmp/haptic_release_candidate

gcc -std=c11 -Wall -Wextra -Werror -I include \
	-DCANDIDATE_FUNCTION=richtap_file_release_mutant_omit \
	-o /tmp/haptic_release_mutant_omit main.c stock_model.c mutant_omit_module_put.c
if /tmp/haptic_release_mutant_omit; then
	echo "FAIL: omitted-module_put mutant was accepted" >&2
	exit 1
else
	echo "PASS: omitted-module_put mutant rejected"
fi

gcc -std=c11 -Wall -Wextra -Werror -I include \
	-DCANDIDATE_FUNCTION=richtap_file_release_mutant_nonzero \
	-o /tmp/haptic_release_mutant_nonzero main.c stock_model.c mutant_nonzero_return.c
if /tmp/haptic_release_mutant_nonzero; then
	echo "FAIL: nonzero-return mutant was accepted" >&2
	exit 1
else
	echo "PASS: nonzero-return mutant rejected"
fi
