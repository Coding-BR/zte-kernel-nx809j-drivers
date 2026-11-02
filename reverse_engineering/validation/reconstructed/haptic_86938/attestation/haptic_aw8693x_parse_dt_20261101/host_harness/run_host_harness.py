#!/usr/bin/env python3
# Build and run the bounded host oracle with sanitizers; require a seeded mutant to fail.
from __future__ import annotations
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path
HERE = Path(__file__).resolve().parent
REPO = HERE.parents[6]
IMAGE = "nubia-sm8850-kernel-builder:nx809j-repro"
PARSER_REL = "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_140_aw8693x_parse_dt.c"
HARNESS_REL = HERE.relative_to(REPO).as_posix() + "/parse_dt_host_test.c"
INCLUDE_REL = HERE.relative_to(REPO).as_posix() + "/include"
script = r'''set -u
work=$(mktemp -d /tmp/aw8693x-parse-dt.XXXXXX)
trap 'rm -rf "$work"' EXIT
cp /repo/PARSER_REL $work/parser_under_test.c
cp /repo/HARNESS_REL $work/parse_dt_host_test.c
gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -Wno-unused-parameter -fsanitize=address,undefined -fno-omit-frame-pointer -I /repo/INCLUDE_REL $work/parser_under_test.c $work/parse_dt_host_test.c -o $work/parse_dt_host_test
ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 $work/parse_dt_host_test > $work/candidate.out 2>&1
candidate_rc=$?
printf 'CANDIDATE_RC=%s\n' "$candidate_rc"
cat $work/candidate.out
cp $work/parser_under_test.c $work/parser_mutant.c
python3 - "$work/parser_mutant.c" <<'PY'
import sys
p=sys.argv[1]
s=open(p).read()
old='memcpy(object + 0x464, duration_time, sizeof(duration_time));'
new='memcpy(object + 0x465, duration_time, sizeof(duration_time));'
assert s.count(old) == 1
open(p,'w').write(s.replace(old,new))
PY
if gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -Wno-unused-parameter -fsanitize=address,undefined -fno-omit-frame-pointer -I /repo/INCLUDE_REL $work/parser_mutant.c $work/parse_dt_host_test.c -o $work/parse_dt_mutant > "$work/mutant_build.out" 2>&1; then
  mutant_build_rc=0
else
  mutant_build_rc=$?
fi
cat $work/mutant_build.out
printf 'MUTANT_BUILD_RC=%s\n' "$mutant_build_rc"
if [ "$mutant_build_rc" -ne 0 ]; then exit 8; fi
set +e
ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 $work/parse_dt_mutant > $work/mutant.out 2>&1
mutant_rc=$?
set -e
printf 'MUTANT_RC=%s\n' "$mutant_rc"
sed -n '1,8p' $work/mutant.out
if [ "$candidate_rc" -ne 0 ] || [ "$mutant_rc" -eq 0 ]; then exit 9; fi
'''
script=script.replace('PARSER_REL',PARSER_REL).replace('HARNESS_REL',HARNESS_REL).replace('INCLUDE_REL',INCLUDE_REL)
cmd=["docker","run","--rm","--entrypoint","sh","-v",f"{REPO}:/repo:ro",IMAGE,"-lc",script]
result=subprocess.run(cmd,text=True,capture_output=True,timeout=180,check=False)
out=result.stdout+result.stderr
candidate_line=next((x for x in out.splitlines() if x.startswith("CANDIDATE_RC=")),"")
mutant_build_line=next((x for x in out.splitlines() if x.startswith("MUTANT_BUILD_RC=")),"")
mutant_build_rc=int(mutant_build_line.split("=",1)[1]) if mutant_build_line else None
mutant_line=next((x for x in out.splitlines() if x.startswith("MUTANT_RC=")),"")
candidate_rc=int(candidate_line.split("=",1)[1]) if candidate_line else None
mutant_rc=int(mutant_line.split("=",1)[1]) if mutant_line else None
mutant_compiled=mutant_build_rc==0
support_files={p.relative_to(REPO).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((REPO/INCLUDE_REL).rglob("*")) if p.is_file()}
report={"schema_version":"1.0","generated_utc":datetime.now(timezone.utc).isoformat(),"target":"aw8693x_parse_dt@00104d80","compiler":"Docker image gcc; AddressSanitizer and UndefinedBehaviorSanitizer","command":cmd,"source_sha256":hashlib.sha256((REPO/PARSER_REL).read_bytes()).hexdigest(),"harness_source_sha256":hashlib.sha256((HERE/"parse_dt_host_test.c").read_bytes()).hexdigest(),"runner_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),"support_files_sha256":support_files,"candidate_returncode":candidate_rc,"candidate_passed":candidate_rc==0,"seeded_mutation":"change duration_time destination from aw+0x464 to aw+0x465","mutant_build_returncode":mutant_build_rc,"mutant_compiled":mutant_compiled,"mutant_returncode":mutant_rc,"mutant_detected":mutant_rc is not None and mutant_rc!=0,"docker_returncode":result.returncode,"output":out[-6000:],"passed":result.returncode==0 and candidate_rc==0 and mutant_build_rc==0 and mutant_rc is not None and mutant_rc!=0}
(HERE/"harness_result.json").write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
print(json.dumps({k:report[k] for k in ("candidate_passed","mutant_detected","passed","candidate_returncode","mutant_build_returncode","mutant_compiled","mutant_returncode")}))
if not report["passed"]: raise SystemExit(result.returncode or 1)
