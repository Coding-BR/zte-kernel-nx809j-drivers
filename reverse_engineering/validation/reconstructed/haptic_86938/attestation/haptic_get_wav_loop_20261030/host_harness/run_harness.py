#!/usr/bin/env python3
from pathlib import Path
import hashlib, json, subprocess, sys
here=Path(__file__).resolve().parent
repo=next(p for p in here.parents if (p/'.git').exists())
script=here/'run_harness_container.sh'
source=repo/'kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_128_aw8693x_get_wav_loop.c'
cmd=['docker','run','--rm','-v',str(repo).replace('\\','/')+':/work','-w','/work','nubia-sm8850-kernel-builder:nx809j-repro','bash','/work/'+str(script.relative_to(repo)).replace('\\','/')]
r=subprocess.run(cmd,text=True,capture_output=True)
report={'schema_version':'1.0','status':'PASS' if r.returncode==0 else 'FAIL','returncode':r.returncode,'candidate_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((here/'aw8693x_get_wav_loop_harness.c').read_bytes()).hexdigest(),'docker_image':'nubia-sm8850-kernel-builder:nx809j-repro','sanitizers':['AddressSanitizer','UndefinedBehaviorSanitizer'],'command':cmd,'stdout':r.stdout,'stderr':r.stderr}
(here/'harness_result.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(r.stdout,end='')
if r.stderr: print(r.stderr,file=sys.stderr,end='')
raise SystemExit(r.returncode)
