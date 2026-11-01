from pathlib import Path
import hashlib, json
R=Path('.'); O=R/'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/microproofs'
def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def save(p,d): Path(p).write_text(json.dumps(d,indent=2,ensure_ascii=False)+'\n',encoding='utf-8',newline='\n')
additional=[
'reverse_engineering/validation/reconstructed/haptic_86938/offline_static/stock_assembly/0096_loop_show_0010acc0.asm',
'reverse_engineering/validation/reconstructed/haptic_86938/offline_static/ghidra_stock_repaired/haptic_86938.ko/decompiled/0096_0010acc0_loop_show.c',
'reverse_engineering/validation/reconstructed/haptic_86938/offline_static/ghidra_stock_repaired/haptic_86938.ko/pcode/0096_0010acc0_loop_show.jsonl',
'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/host_harness/aw8693x_get_wav_loop_harness.c',
'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/host_harness/harness_result.json']
inputs=json.loads((O/'microproofs_manifest.json').read_text(encoding='utf-8-sig'))['all_input_hashes']
by={x['path']:x for x in inputs}
for rel in list(by): by[rel]={'path':rel,'sha256':sha(R/rel)}
for rel in additional: by[rel]={'path':rel,'sha256':sha(R/rel)}
inputs=[by[k] for k in sorted(by)]
# Rebind every proof to the complete source set.
for name in ['MP0_IDENTITY','MP1_CALL_SIGNATURE','MP2_STATE_EFFECT_LEDGER','MP3_CONTROL_ERROR_MATRIX','MP4_TEST_ORACLE_DRAFT','MP5_LOCK_LIFETIME_CONTRACT','MP6_REGISTER_OR_BUS_LEDGER']:
 p=O/(name+'.json'); d=json.loads(p.read_text(encoding='utf-8-sig')); d['input_hashes']=inputs
 if name=='MP1_CALL_SIGNATURE':
  h=sha(O/'CALLBACK_TABLE_RELOCATION.json'); d['input_hashes'].append({'path':'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/microproofs/CALLBACK_TABLE_RELOCATION.json','sha256':h})
  d['unknowns'].append('KCFI 0xdffa4199 collides for char * and unsigned char *; char * is selected from the stock wrapper decompilation and string-format use, but the exact nominal pointee spelling is not recoverable from KCFI alone.')
 if name=='MP2_STATE_EFFECT_LEDGER':
  d['observations'].extend([
   {'id':'OBS-012','claim':'Ghidra decompilation omits the %02x vararg on seq1, seq3, seq5 and seq7. Stock assembly sets w4 to the high nibble before each call, proving the value argument is present.','evidence_path':'reverse_engineering/validation/reconstructed/haptic_86938/offline_static/ghidra_stock_repaired/haptic_86938.ko/decompiled/0037_00105df0_aw8693x_get_wav_loop.c','locator':'seq1/3/5/7 calls; assembly 0x302c–0x3044, 0x3074–0x308c, 0x30bc–0x30d4, 0x3104–0x311c'},
   {'id':'OBS-013','claim':'Stores and output are interleaved per byte: byte0 store pair then seq1/2; byte1 store pair then seq3/4; byte2 pair then seq5/6; byte3 pair then seq7/8.','evidence_path':'reverse_engineering/validation/reconstructed/haptic_86938/offline_static/stock_assembly/0037_aw8693x_get_wav_loop_00105df0.asm','locator':'0x3038/0x3040 -> 0x3044/0x3060; 0x3084/0x3088 -> 0x308c/0x30a8; 0x30cc/0x30d0 -> 0x30d4/0x30f0; 0x3114/0x3118 -> 0x311c/0x3138'}])
 if name=='MP4_TEST_ORACLE_DRAFT':
  d['inferences']=[{'claim':'For bytes A5 3C E0 1F, exact output is seq1 loop: 0x0a\\nseq2 loop: 0x05\\nseq3 loop: 0x03\\nseq4 loop: 0x0c\\nseq5 loop: 0x0e\\nseq6 loop: 0x00\\nseq7 loop: 0x01\\nseq8 loop: 0x0f\\n. Each line is 16 bytes; return is 128 and buf[128] is NUL.','basis':'OBS-009/OBS-010/OBS-011; verify with harness.'}]
  d['observations'].append({'id':'OBS-020','claim':'The ASan/UBSan host harness verifies the reference case leaves buf[129..4095] and the surrounding output guards unchanged.','evidence_path':'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/host_harness/aw8693x_get_wav_loop_harness.c','locator':'run_reference_case checks output.data[128], iterates from 129 to 4095, and checks the output guard'})
  d['observations'].extend([
   {'id':'OBS-021','claim':'A negative I2C helper result with no local writes leaves the zero-initialized word intact; the target formats eight zero values.','evidence_path':'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/host_harness/harness_result.json','locator':'negative_helper_result_zero_local PASS'},
   {'id':'OBS-022','claim':'The short-transfer helper case returns -6 and the target still formats zero values when the helper leaves the local word unchanged.','evidence_path':'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/host_harness/harness_result.json','locator':'short_transfer_helper_returns_minus_6 PASS'},
   {'id':'OBS-023','claim':'A negative helper result after partial local writes is ignored; the target formats bytes already written into the local word.','evidence_path':'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/host_harness/harness_result.json','locator':'negative_result_with_partial_writes PASS'}])
  d['unknowns']=['Physical meaning of register 0x12, actuator behavior, timing, and device response are unknown/deferred.']
 if name=='MP5_LOCK_LIFETIME_CONTRACT':
  obs=next(x for x in d['observations'] if x['id']=='OBS-016'); obs.update({'claim':'Stock loop_show loads the callback table and invokes slot +0x138 with the haptic pointer and output buffer; no lock operation appears in this wrapper body.','evidence_path':'reverse_engineering/validation/reconstructed/haptic_86938/offline_static/stock_assembly/0096_loop_show_0010acc0.asm','locator':'0x7eb4–0x7ed8; indirect KCFI guard and blr'})
 if name=='MP6_REGISTER_OR_BUS_LEDGER':
  d['observations'].append({'id':'OBS-019','claim':'Stock i2c_r_bytes maps a nonnegative short transfer result other than 2 to -6 and returns negative transfer errors unchanged.','evidence_path':'reverse_engineering/validation/reconstructed/haptic_86938/offline_static/stock_assembly/0061_i2c_r_bytes_00107014.asm','locator':'cmp w0,#2 at 0x4264; branch 0x4268; mov w0,#-6 at 0x42e4; negative-result branch 0x4260/0x4294'})
 if isinstance(d.get('observations'),list):
  seen=set(); d['observations']=[x for x in d['observations'] if not (x.get('id') in seen or seen.add(x.get('id')))]
 save(p,d)
contract='''# Test contract — aw8693x_get_wav_loop@00105df0

ABI: `unsigned long aw8693x_get_wav_loop(struct aw_haptic *haptic, char *buf)`. The caller supplies a valid haptic pointer and a sysfs buffer with 0x1000 writable bytes. `char *` is best supported by the stock wrapper; KCFI also collides with `unsigned char *`, so the exact nominal pointee spelling remains unknown.

Observed effects: zero a local four-byte input; call `i2c_r_bytes(haptic, 0x12, data, 4)` once and ignore its return; for each byte store low nibble then high nibble at paired haptic offsets, then format the high and low values for consecutive sequence numbers. The Ghidra decompiler omits the `%02x` vararg for seq1/3/5/7; stock assembly sets w4 to the high nibble before each call. Return is the sum of eight `snprintf` int results widened as `unsigned long`.

Reference input `A5 3C E0 1F` with ordinary `snprintf` must produce exactly:

```text
seq1 loop: 0x0a
seq2 loop: 0x05
seq3 loop: 0x03
seq4 loop: 0x0c
seq5 loop: 0x0e
seq6 loop: 0x00
seq7 loop: 0x01
seq8 loop: 0x0f
```

Each line is 16 bytes, total return is 128, and `buf[128]` is NUL. Haptic offsets +0x26..+0x2d must contain `A,5,3,C,E,0,1,F`. The ASan/UBSan host harness verifies leading/trailing canaries and `buf[129..4095]` remain unchanged for this reference case.

Failure cases: (1) negative helper return with no writes: the zeroed local produces eight zero values. (2) underlying `i2c_transfer` returns 1, so the stock `i2c_r_bytes` helper returns -6; the target still emits zeros if the helper leaves the local unchanged. (3) negative helper return with partial writes: output follows the local bytes, proving errno is ignored.

Unknown/deferred: physical meaning of register 0x12, actuator behavior, timing, and device response. Do not run on hardware.
'''
(O/'TEST_CONTRACT.md').write_text(contract,encoding='utf-8',newline='\n')
# Keep the original stock-evidence generator and this review-correction pass hash-bound.
manifest=json.loads((O/'microproofs_manifest.json').read_text(encoding='utf-8-sig'))
manifest['all_input_hashes']=inputs
manifest['candidate_source_exists']=(R/manifest['candidate_source']).is_file()
manifest['candidate_source_state']='created after the MP0–MP6 stock evidence pass'
manifest['review_corrections']={'script':'reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_wav_loop_20261030/microproofs/apply_review_corrections.py','sha256':sha(Path(__file__)),'findings':['Ghidra omitted odd-sequence %02x varargs; assembly w4 corrected the interpretation','fixed exact output, length 128, terminal NUL and buffer bounds','documented interleaved stores/formatting','short I2C transfer maps to helper result -6','preserved char*/unsigned char* KCFI collision as unknown']}
manifest['microproofs']={p.name:sha(p) for p in sorted(O.iterdir()) if p.is_file() and p.name!='microproofs_manifest.json'}
save(O/'microproofs_manifest.json',manifest)
print(json.dumps({'candidate_source_exists':manifest['candidate_source_exists'],'input_count':len(inputs),'proofs':len(manifest['microproofs']),'review_corrections':manifest['review_corrections']['findings']},indent=2))
