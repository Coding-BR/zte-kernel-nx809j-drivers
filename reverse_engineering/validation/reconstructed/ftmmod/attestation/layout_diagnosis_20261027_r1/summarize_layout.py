"""Reproduce the bounded layout diagnosis; never promote the candidate."""
from pathlib import Path
import hashlib
import json
import re

from elftools.elf.elffile import ELFFile

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / 'NX809J_LOCAL_SOURCE_OF_TRUTH.md').is_file())
ATT = HERE.parent


def record(path):
    return {'path': path.relative_to(ROOT).as_posix(),
            'sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
            'size': path.stat().st_size}


def read(path):
    return json.loads(path.read_text(encoding='utf-8'))


def layout(path):
    with path.open('rb') as stream:
        elf = ELFFile(stream)
        states = []
        for sym in elf.get_section_by_name('.symtab').iter_symbols():
            if sym.name.startswith('ftm_sysdev_priv_data'):
                states.append({'symbol': sym.name, 'section': elf.get_section(sym['st_shndx']).name,
                               'offset': sym['st_value'], 'size': sym['st_size'],
                               'binding': sym['st_info']['bind']})
        return {'module': record(path), 'state_objects': states,
                'modinfo_size': elf.get_section_by_name('.modinfo')['sh_size'],
                'modinfo': [x.decode() for x in elf.get_section_by_name('.modinfo').data().split(b'\0') if x]}


def shape(row):
    return (row['instruction'].split()[0], row['op_index'],
            re.search(r'\b([A-Z][A-Z0-9_]*)\b', row['pcode']).group(1))


def main():
    canonical_path = ATT / 'hard_protocol_core_20261027_r3/ghidra/semantic_comparison.json'
    supplemental_path = HERE / 'rebased_comparison.json'
    canonical, supplemental = read(canonical_path), read(supplemental_path)
    stock = ROOT / 'reference_modules/full_vendor_boot/ftmmod.ko'
    candidate = ATT / 'hard_protocol_core_20261027_r3/docker/work/ftmmod/cycle_2/ftmmod.ko'
    source = ROOT / 'kernel_development/drivers/reconstructed/ftmmod/ftmmod.c'
    assert record(stock)['sha256'] == 'fe598a656ef1dbbcc48c78b0f9eb94ee1e6fe05c07f4e073f3e1c6470abbc4eb'
    assert record(candidate)['sha256'] == '6e5eb9147bf3061779d0f3059cd8efad291b3a859e7f7689a8e52134df0079de'
    assert record(source)['sha256'] == '41e22f79185d29890ebb4e06e5fa6dfb3e7b849d4192a042bc21500916758da8'
    assert len(canonical['results']) == len(supplemental['results']) == 9
    assert supplemental['passed'] and not canonical['passed']
    differences = []
    for f in canonical['results']:
        assert f['checks']['normalized_decompiled_c']
        a = [json.loads(x) for x in Path(f['stock']['pcode_path']).read_text().splitlines()]
        b = [json.loads(x) for x in Path(f['candidate']['pcode_path']).read_text().splitlines()]
        assert len(a) == len(b)
        for i, (left, right) in enumerate(zip(a, b)):
            if shape(left) != shape(right):
                differences.append({'identity': f['function'], 'record_index': i,
                                    'stock': left, 'candidate': right})
    assert len(differences) == 2
    inputs = [stock, candidate, source, canonical_path, supplemental_path,
              ROOT / 'workspace_tools/reconstruction_pipeline/compare_ghidra_function_semantics.py',
              ROOT / 'reverse_engineering/tools/ExportKernelModuleAnalysis.java',
              HERE / 'abi_surface.json', HERE / 'baseline.ll', HERE / 'grouped.ll']
    output = {
        'schema_version': '1.0', 'driver': 'ftmmod',
        'status': 'SUPPLEMENTAL_LAYOUT_DIAGNOSIS_COMPLETE_CANONICAL_GATE_UNCHANGED',
        'promotion_authorized': False, 'hardware': 'DEFERRED',
        'canonical_ghidra_gate': 'FAIL', 'supplemental_paired_base_comparison': 'PASS_9_OF_9',
        'canonical_base': '0x100000', 'supplemental_common_base': '0x100100',
        'inputs': [record(p) for p in inputs],
        'stock_layout': layout(stock), 'candidate_layout': layout(candidate),
        'canonical_pcode_shape_differences': differences,
        'source_experiments': [
            {'variant': 'work/ftmmod/cycle_1/ftmmod.c',
             'result': 'Grouped fields produced one 24-byte object, losing the three stock symbol identities; NOT_ADOPTED.'},
            {'variant': 'explicit_zero/ftmmod/cycle_1/ftmmod.c',
             'result': 'Explicit zero initialization preserved the prior candidate object order; NOT_ADOPTED.'}],
        'abi_kmi': {'passed': read(HERE / 'abi_surface.json')['passed'],
                    'scope': 'Pinned target kernel plus verified vendor Module.symvers; target vermagic intentionally differs from stock.'},
        'conclusions': [
            'The only two canonical operation-shape deltas are INT_ADD versus COPY in relocated byte access address calculations.',
            'The stock flag has a nonzero low-12-bit address; the candidate flag lands exactly on a page boundary.',
            'Unchanged ELF inputs imported with the SAME alternative base pass the existing strict comparator for all nine functions.',
            'This is a reproducible counterexample to treating raw P-Code operation shape as invariant under ELF relocation.',
            'The experiment does not establish correctness for arbitrary load addresses, concurrency or hardware.'],
        'independent_review': {'status': 'NOT_COMPLETED',
                               'reason': 'Reviewer service returned a usage-limit error; no review verdict was produced.'},
        'next_steps': [
            'Obtain independent review of the relocation diagnosis and a narrowly justified resolution of the canonical gate.',
            'Execute the MP4 host harness and mutation controls against the unchanged candidate.',
            'Keep all canonical reports, microtask states and promotion decisions unchanged until their gates are satisfied.']
    }
    (HERE / 'layout_diagnosis.json').write_text(json.dumps(output, indent=2)+'\n', encoding='utf-8', newline='\n')
    print(json.dumps({'canonical_gate': 'FAIL', 'supplemental_functions_passed': 9,
                      'canonical_shape_differences': len(differences), 'abi_kmi': output['abi_kmi']['passed']}))


if __name__ == '__main__':
    main()
