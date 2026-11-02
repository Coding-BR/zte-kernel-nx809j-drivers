#!/usr/bin/env python3
from pathlib import Path
import hashlib,json,subprocess,sys
here=Path(__file__).resolve().parent
root=next(p for p in here.parents if (p/".git").exists())
mount=str(root).replace("\\","/")
container_script=here/"run_harness_container.sh"
container_script.write_bytes(container_script.read_bytes().replace(bytes([13,10]),bytes([10])))
cmd=["docker","run","--rm","-v",f"{mount}:/work","-w","/work",
 "nubia-sm8850-kernel-builder:nx809j-repro","bash",
 "/work/"+str((here/"run_harness_container.sh").relative_to(root)).replace("\\","/")]
p=subprocess.run(cmd,text=True,capture_output=True)
source=root/"kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_127_aw8693x_container_update.c"
report={"schema_version":"1.0","status":"PASS" if p.returncode==0 else "FAIL",
 "returncode":p.returncode,"candidate_sha256":hashlib.sha256(source.read_bytes()).hexdigest(),
 "docker_image":"nubia-sm8850-kernel-builder:nx809j-repro","stdout":p.stdout,"stderr":p.stderr}
(here/"harness_result.json").write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
print(p.stdout,end="")
if p.stderr:print(p.stderr,file=sys.stderr,end="")
raise SystemExit(p.returncode)
