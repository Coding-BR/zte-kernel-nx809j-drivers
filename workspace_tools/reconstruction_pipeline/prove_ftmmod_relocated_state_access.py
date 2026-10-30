#!/usr/bin/env python3
"""Prove the two FTMMOD byte-address P-Code deltas from ELF relocations.

This is a supplemental proof, not a replacement for the canonical comparator.
Only local one-byte zero-initialized .bss objects and ADRP+LDRB/STRB unsigned
immediate sequences are supported. Unsupported or ambiguous facts fail closed.
"""
from __future__ import annotations

import argparse
import hashlib
import io
import json
from pathlib import Path
import re

from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

VARNODE = re.compile(r'\((\w+), (0x[0-9a-f]+), (\d+)\)')
OPERATION = re.compile(r'^\s*(\([^)]*\)|---)\s+([A-Z][A-Z0-9_]*)\s+(.*?)\s*$')
CONTROL = {'CALL', 'CALLIND', 'BRANCH', 'BRANCHIND', 'CBRANCH', 'RETURN', 'CALLOTHER'}
TARGETS = ('show_simlock_status', 'ftm_probe')


def require(value, why):
    if not value:
        raise ValueError(why)


def file_record(path):
    return {'path': str(path.resolve()), 'sha256': hashlib.sha256(path.read_bytes()).hexdigest()}


def rows(path):
    return [json.loads(line) for line in path.read_text(encoding='utf-8').splitlines() if line.strip()]


def parse_operation(text):
    match = OPERATION.fullmatch(text)
    require(match is not None, 'unparsed P-Code operation')
    output, op, operands = match.groups()
    def varnode(s):
        m = VARNODE.fullmatch(s)
        require(m is not None, 'unparsed P-Code varnode')
        return (m[1], int(m[2], 16), int(m[3]))
    inputs = [varnode(m[0]) for m in VARNODE.finditer(operands)]
    require(bool(inputs) and not VARNODE.sub('', operands).replace(',', '').strip(), 'unexpected P-Code operand syntax')
    return (None if output == '---' else varnode(output), op, inputs)


def shape(row):
    return (row['instruction'].split()[0], row['op_index'], parse_operation(row['pcode'])[1])


class Evidence:
    def __init__(self, module: Path, export: Path):
        self.module, self.export = module.resolve(), export.resolve()
        self.data = self.module.read_bytes()
        self.elf = ELFFile(io.BytesIO(self.data))
        require(self.elf['e_machine'] == 'EM_AARCH64' and self.elf['e_type'] == 'ET_REL'
                and self.elf.elfclass == 64 and self.elf.little_endian, 'not little-endian AArch64 ET_REL')
        self.inputs = {self.module, self.export/'manifest.json', self.export/'functions.jsonl', self.export/'memory_blocks.jsonl'}
        manifest = json.loads((self.export/'manifest.json').read_text())
        require(manifest['executable_md5'] == hashlib.md5(self.data).hexdigest(), 'Ghidra export/module identity mismatch')
        require(manifest['language'] == 'AARCH64:LE:64:v8A', 'unexpected Ghidra language')
        self.functions = rows(self.export/'functions.jsonl')
        self.blocks = rows(self.export/'memory_blocks.jsonl')
        self.symbols = list(self.elf.get_section_by_name('.symtab').iter_symbols())

    def block(self, section):
        found = [b for b in self.blocks if b['name'] == section.name]
        require(len(found) == 1 and found[0]['size'] == section['sh_size'], 'section/Ghidra memory block mismatch')
        return found[0]

    def function(self, name):
        symbols = [s for s in self.symbols if s.name == name and s['st_info']['type'] == 'STT_FUNC']
        require(len(symbols) == 1, 'missing or ambiguous ELF function')
        sym = symbols[0]; section = self.elf.get_section(sym['st_shndx'])
        entry = int(self.block(section)['start'], 16) + sym['st_value']
        fs = [f for f in self.functions if f['name'] == name and int(f['entry'], 16) == entry]
        require(len(fs) == 1 and fs[0]['body_bytes'] == sym['st_size'], 'function identity/body mismatch')
        path = self.export/fs[0]['pcode_file']; self.inputs.add(path)
        return {'name': name, 'entry': entry, 'offset': sym['st_value'], 'size': sym['st_size'],
                'section': section.name, 'section_index': sym['st_shndx'],
                'bytes': section.data()[sym['st_value']:sym['st_value']+sym['st_size']].hex(),
                'records': rows(path)}

    def relocation(self, section_index, offset, expected_type):
        found = []
        for section in self.elf.iter_sections():
            if isinstance(section, RelocationSection) and section['sh_info'] == section_index:
                for reloc in section.iter_relocations():
                    if reloc['r_offset'] == offset:
                        found.append((section, reloc))
        require(len(found) == 1, 'missing or ambiguous instruction relocation')
        section, reloc = found[0]
        require(section.is_RELA() and reloc['r_info_type'] == expected_type, 'unexpected relocation kind')
        sym = self.elf.get_section(section['sh_link']).get_symbol(reloc['r_info_sym'])
        require(isinstance(sym['st_shndx'], int), 'relocation target not defined')
        target_section = self.elf.get_section(sym['st_shndx'])
        target_offset = sym['st_value'] + reloc['r_addend']
        objects = [s for s in self.symbols if s['st_shndx'] == sym['st_shndx']
                   and s['st_info']['type'] == 'STT_OBJECT'
                   and s['st_value'] <= target_offset < s['st_value']+s['st_size']]
        require(len(objects) == 1, 'ambiguous or missing relocation object')
        obj = objects[0]; block = self.block(target_section)
        return {'type': expected_type, 'offset': offset,
                'object': obj.name, 'object_offset': obj['st_value'], 'object_size': obj['st_size'],
                'binding': obj['st_info']['bind'], 'target_offset': target_offset,
                'section': target_section.name, 'section_type': target_section['sh_type'],
                'section_flags': target_section['sh_flags'], 'block_write': block['write'],
                'block_start': int(block['start'], 16), 'block_size': block['size']}

    def access(self, function, record_index):
        records = function['records']; address = int(records[record_index]['address'], 16)
        offset = function['offset'] + address-function['entry']
        section = self.elf.get_section(function['section_index'])
        word = int.from_bytes(section.data()[offset:offset+4], 'little')
        rn = (word >> 5) & 31
        # Search the complete function's preceding P-Code for the last write to Xn.
        first = next(i for i, r in enumerate(records) if int(r['address'], 16) == address)
        base = ('register', 0x4000+rn*8, 8)
        producer = None
        for i in range(first-1, -1, -1):
            out, op, _ = parse_operation(records[i]['pcode'])
            if out and out[0] == 'register' and out[1] < base[1]+8 and out[1]+out[2] > base[1]:
                producer = i; break
            require(op not in CONTROL, 'control flow/userop between base producer and byte access')
        require(producer is not None, 'no base-register producer')
        high_address = int(records[producer]['address'], 16)
        high_offset = function['offset'] + high_address-function['entry']
        for row in records:
            _, op, inputs = parse_operation(row['pcode'])
            require(op not in {'BRANCHIND', 'CALLIND'}, 'indirect control flow in selected function')
            if op in {'BRANCH', 'CBRANCH'} and inputs[0][0] == 'ram':
                require(not high_address < inputs[0][1] <= address, 'branch bypasses ADRP base definition')
        return {'word': word, 'high_word': int.from_bytes(section.data()[high_offset:high_offset+4], 'little'),
                'address': address, 'high_address': high_address,
                'access_records': [r for r in records if int(r['address'], 16) == address],
                'producer_record': records[producer],
                'low_relocation': self.relocation(function['section_index'], offset, 278),
                'high_relocation': self.relocation(function['section_index'], high_offset, 275)}


def validate_access(fact):
    """Validate the exact instruction, relocation, and def-use templates."""
    word, high = fact['word'], fact['high_word']
    opcode, rn, rt = word & 0xffc00000, (word >> 5) & 31, word & 31
    require(opcode in (0x39400000, 0x39000000) and rn != 31 and rt != 31, 'not unsigned-immediate byte load/store')
    require((word >> 10) & 0xfff == 0, 'nonzero unrelocated immediate')
    require(high == 0x90000000 | rn, 'producer is not an unrelocated ADRP to the base register')
    low, page = fact['low_relocation'], fact['high_relocation']
    require(low['type'] == 278 and page['type'] == 275, 'wrong low/page relocation types')
    keys = ('object', 'object_offset', 'object_size', 'binding', 'target_offset', 'section',
            'section_type', 'section_flags', 'block_write', 'block_start', 'block_size')
    require(all(low[k] == page[k] for k in keys), 'page and low relocation targets differ')
    require(low['section'] == '.bss' and low['section_type'] == 'SHT_NOBITS'
            and low['section_flags'] & 3 == 3 and low['block_write'], 'target is not writable zero-initialized BSS')
    require(low['object_size'] == 1 and low['binding'] == 'STB_LOCAL'
            and low['target_offset'] == low['object_offset']
            and 0 <= low['target_offset'] < low['block_size'], 'target is not exactly one local byte object')
    target = low['block_start'] + low['target_offset']; displacement = target & 0xfff
    base = ('register', 0x4000+rn*8, 8)
    out, op, inputs = parse_operation(fact['producer_record']['pcode'])
    require((out, op, inputs) == (base, 'COPY', [('const', target & ~0xfff, 8)]), 'ADRP P-Code page differs from ELF relocation')
    require(fact['producer_record']['instruction'] == f'adrp x{rn},0x{target & ~0xfff:x}', 'ADRP mnemonic differs from relocation')
    access = fact['access_records']; load = opcode == 0x39400000
    mnemonic = 'ldrb' if load else 'strb'
    instruction = f'{mnemonic} w{rt},[x{rn}' + (f', #0x{displacement:x}]' if displacement else ']')
    require(len(access) == 3 and all(r['instruction'] == instruction for r in access)
            and [r['op_index'] for r in access] == [0, 1, 2], 'unexpected byte-access instruction/P-Code sequence')
    require(all(int(r['address'], 16) == fact['address'] for r in access), 'P-Code access addresses differ')
    addr_index = 0 if load else 1
    address_output, address_op, address_inputs = parse_operation(access[addr_index]['pcode'])
    require(address_output[0] == 'unique' and address_output[2] == 8, 'invalid address temporary')
    expected = ('INT_ADD', [base, ('const', displacement, 8)]) if displacement else ('COPY', [base])
    require((address_op, address_inputs) == expected, 'address expression differs from relocated low12')
    if load:
        temp, memop, memargs = parse_operation(access[1]['pcode'])
        require(temp[0] == 'unique' and temp[2] == 1 and memop == 'LOAD'
                and len(memargs) == 2 and memargs[1] == address_output, 'wrong load width/address def-use')
        dest, zext, args = parse_operation(access[2]['pcode'])
        require((dest, zext, args) == (('register', 0x4000+rt*8, 8), 'INT_ZEXT', [temp]), 'wrong load destination/extension')
    else:
        temp, copy, args = parse_operation(access[0]['pcode'])
        require(temp[0] == 'unique' and temp[2] == 4 and copy == 'COPY'
                and args == [('register', 0x4000+rt*8, 4)], 'wrong store source register')
        dest, memop, memargs = parse_operation(access[2]['pcode'])
        require(dest is None and memop == 'STORE' and len(memargs) == 3
                and memargs[1] == address_output and memargs[2] == (temp[0], temp[1], 1), 'wrong store width/address/value def-use')
    require(memargs[0] == ('const', 0x1b1, 8), 'unexpected Ghidra memory-space token')
    return {'object': low['object'], 'section': low['section'], 'size': 1,
            'offset_within_object': 0, 'memory_operation': 'LOAD8_ZEXT64' if load else 'STORE8_LOW_W',
            'base_register': rn, 'value_register': rt, 'effective_address': target,
            'page': target & ~0xfff, 'low12': displacement, 'pcode_address_operation': address_op}


def prove_pair(stock_fact, candidate_fact):
    stock, candidate = validate_access(stock_fact), validate_access(candidate_fact)
    keys = ('object', 'section', 'size', 'offset_within_object', 'memory_operation', 'base_register', 'value_register')
    require(all(stock[k] == candidate[k] for k in keys), 'stock/candidate byte-access semantics differ')
    require({stock['pcode_address_operation'], candidate['pcode_address_operation']} == {'COPY', 'INT_ADD'}, 'not the supported zero-low12 representation delta')
    return {'stock': stock, 'candidate': candidate,
            'identity': 'page(S+A) + low12(S+A) = S+A; COPY is addition of zero',
            'same_object_byte_access': True}


def run(stock: Evidence, candidate: Evidence):
    proofs = []
    for name in TARGETS:
        a, b = stock.function(name), candidate.function(name)
        require(a['bytes'] == b['bytes'] and a['size'] == b['size'], 'raw function bytes differ')
        require(len(a['records']) == len(b['records']), 'P-Code record counts differ')
        mismatches = []
        for i, (x, y) in enumerate(zip(a['records'], b['records'])):
            require(int(x['address'], 16)-a['entry'] == int(y['address'], 16)-b['entry'], 'ordered instruction offsets differ')
            if shape(x) != shape(y):
                mismatches.append(i)
        require(len(mismatches) == 1, 'expected exactly one address-shape mismatch per selected function')
        index = mismatches[0]
        af, bf = stock.access(a, index), candidate.access(b, index)
        proof = prove_pair(af, bf)
        require(a['records'][index]['op_index'] == (0 if proof['stock']['memory_operation'] == 'LOAD8_ZEXT64' else 1), 'mismatch is not the address operation')
        proofs.append({'function': name, 'stock_entry': f'{a["entry"]:08x}', 'candidate_entry': f'{b["entry"]:08x}',
                       'record_index': index, 'stock_facts': af, 'candidate_facts': bf, 'proof': proof})
    return proofs


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('stock-module', 'candidate-module', 'stock-export', 'candidate-export', 'output'):
        parser.add_argument('--'+name, required=True, type=Path)
    args = parser.parse_args()
    require(not args.output.exists(), 'output already exists')
    report = {'schema_version': '1.0', 'scope': 'FTMMOD relocated local-byte address expressions only',
              'promotion_authorized': False, 'canonical_gate_overridden': False,
              'verifier': file_record(Path(__file__)), 'passed': False}
    try:
        stock = Evidence(args.stock_module, args.stock_export)
        candidate = Evidence(args.candidate_module, args.candidate_export)
        report['proofs'] = run(stock, candidate)
        report['inputs'] = [file_record(p) for p in sorted(stock.inputs | candidate.inputs)]
        report['passed'] = True
    except (ValueError, KeyError, TypeError, IndexError, OSError) as error:
        report['failure'] = str(error)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2)+'\n', encoding='utf-8', newline='\n')
    print(json.dumps({'passed': report['passed'], 'proof_count': len(report.get('proofs', [])), 'failure': report.get('failure')}))
    return 0 if report['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
